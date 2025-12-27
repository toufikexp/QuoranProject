import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'l10n/app_localizations.dart';
import 'presentation/pages/onboarding_page.dart';
import 'core/utils/onboarding_service.dart';
import 'core/utils/locale_service.dart';
import 'presentation/pages/home_dashboard_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale _locale = const Locale('en'); // Default locale
  bool _isLoadingLocale = true;

  @override
  void initState() {
    super.initState();
    _loadLocale();
  }

  Future<void> _loadLocale() async {
    final savedLocale = await LocaleService.getSavedLocaleAsLocale();
    if (mounted) {
      setState(() {
        _locale = savedLocale;
        _isLoadingLocale = false;
      });
    }
  }

  void _updateLocale(Locale newLocale) {
    setState(() {
      _locale = newLocale;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoadingLocale) {
      return const MaterialApp(
        home: Scaffold(
          body: Center(
          child: CircularProgressIndicator(),
        ),
        ),
      );
    }

    return MaterialApp(
      title: 'Al-Mushaf Al-Elite',
      debugShowCheckedModeBanner: false,
      // Localization setup
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ar'), // Arabic
        Locale('en'), // English
        Locale('fr'), // French
        Locale('es'), // Spanish
      ],
      locale: _locale,
      // Theme - Default to dark mode
      theme: ThemeData(
        primarySwatch: Colors.green,
        useMaterial3: true,
        fontFamily: 'Cairo',
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.green,
        useMaterial3: true,
        fontFamily: 'Cairo',
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.dark, // Default to dark mode
      // Check onboarding status and route accordingly
      home: AppInitializer(
        onLocaleChanged: _updateLocale,
      ),
    );
  }
}

class AppInitializer extends StatefulWidget {
  final Function(Locale)? onLocaleChanged;

  const AppInitializer({super.key, this.onLocaleChanged});

  @override
  State<AppInitializer> createState() => _AppInitializerState();
}

class _AppInitializerState extends State<AppInitializer> {
  bool _isLoading = true;
  bool _isOnboardingCompleted = false;

  @override
  void initState() {
    super.initState();
    _checkOnboardingStatus();
  }

  Future<void> _checkOnboardingStatus() async {
    final isCompleted = await OnboardingService.isOnboardingCompleted();
    if (mounted) {
      setState(() {
        _isOnboardingCompleted = isCompleted;
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }
    // Show onboarding if not completed, otherwise show home dashboard
    return _isOnboardingCompleted
        ? const HomeDashboardPage()
        : OnboardingPage(
            onLocaleChanged: widget.onLocaleChanged,
          );
  }
}

