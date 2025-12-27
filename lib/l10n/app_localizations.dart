import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fr.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en'),
    Locale('es'),
    Locale('fr'),
  ];

  /// The application title
  ///
  /// In en, this message translates to:
  /// **'Al-Mushaf Al-Elite'**
  String get appTitle;

  /// No description provided for @welcome.
  ///
  /// In en, this message translates to:
  /// **'Welcome'**
  String get welcome;

  /// No description provided for @goodMorning.
  ///
  /// In en, this message translates to:
  /// **'Good Morning'**
  String get goodMorning;

  /// No description provided for @goodAfternoon.
  ///
  /// In en, this message translates to:
  /// **'Good Afternoon'**
  String get goodAfternoon;

  /// No description provided for @goodEvening.
  ///
  /// In en, this message translates to:
  /// **'Good Evening'**
  String get goodEvening;

  /// No description provided for @lastRead.
  ///
  /// In en, this message translates to:
  /// **'Last Read'**
  String get lastRead;

  /// No description provided for @resume.
  ///
  /// In en, this message translates to:
  /// **'Resume'**
  String get resume;

  /// No description provided for @verseOfTheDay.
  ///
  /// In en, this message translates to:
  /// **'Verse of the Day'**
  String get verseOfTheDay;

  /// No description provided for @surahs.
  ///
  /// In en, this message translates to:
  /// **'Surahs'**
  String get surahs;

  /// No description provided for @juz.
  ///
  /// In en, this message translates to:
  /// **'Juz'**
  String get juz;

  /// No description provided for @bookmarks.
  ///
  /// In en, this message translates to:
  /// **'Bookmarks'**
  String get bookmarks;

  /// No description provided for @featuredContent.
  ///
  /// In en, this message translates to:
  /// **'Featured Content'**
  String get featuredContent;

  /// No description provided for @recommendedReading.
  ///
  /// In en, this message translates to:
  /// **'Recommended Reading'**
  String get recommendedReading;

  /// No description provided for @viewAll.
  ///
  /// In en, this message translates to:
  /// **'View All'**
  String get viewAll;

  /// No description provided for @communityEvents.
  ///
  /// In en, this message translates to:
  /// **'Community & Events'**
  String get communityEvents;

  /// No description provided for @notifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications;

  /// No description provided for @newNotifications.
  ///
  /// In en, this message translates to:
  /// **'{count} new notifications'**
  String newNotifications(int count);

  /// No description provided for @selectLanguage.
  ///
  /// In en, this message translates to:
  /// **'Select Language'**
  String get selectLanguage;

  /// No description provided for @selectReciter.
  ///
  /// In en, this message translates to:
  /// **'Select Reciter'**
  String get selectReciter;

  /// No description provided for @selectTheme.
  ///
  /// In en, this message translates to:
  /// **'Select Theme'**
  String get selectTheme;

  /// No description provided for @continueButton.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueButton;

  /// No description provided for @skip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// No description provided for @arabic.
  ///
  /// In en, this message translates to:
  /// **'Arabic'**
  String get arabic;

  /// No description provided for @english.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get english;

  /// No description provided for @french.
  ///
  /// In en, this message translates to:
  /// **'French'**
  String get french;

  /// No description provided for @spanish.
  ///
  /// In en, this message translates to:
  /// **'Spanish'**
  String get spanish;

  /// No description provided for @light.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get light;

  /// No description provided for @dark.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get dark;

  /// No description provided for @todayReading.
  ///
  /// In en, this message translates to:
  /// **'Today\'s Reading'**
  String get todayReading;

  /// No description provided for @weeklyGoal.
  ///
  /// In en, this message translates to:
  /// **'Weekly Goal'**
  String get weeklyGoal;

  /// No description provided for @studyPlan.
  ///
  /// In en, this message translates to:
  /// **'Study Plan'**
  String get studyPlan;

  /// No description provided for @recommendedForFriday.
  ///
  /// In en, this message translates to:
  /// **'Recommended for Friday'**
  String get recommendedForFriday;

  /// No description provided for @continueFromVerse.
  ///
  /// In en, this message translates to:
  /// **'Continue from verse {verse}'**
  String continueFromVerse(int verse);

  /// No description provided for @memorizationTarget.
  ///
  /// In en, this message translates to:
  /// **'Memorization target'**
  String get memorizationTarget;

  /// No description provided for @verse.
  ///
  /// In en, this message translates to:
  /// **'Verse'**
  String get verse;

  /// No description provided for @verses.
  ///
  /// In en, this message translates to:
  /// **'Verses'**
  String get verses;

  /// No description provided for @surah.
  ///
  /// In en, this message translates to:
  /// **'Surah'**
  String get surah;

  /// No description provided for @ayahs.
  ///
  /// In en, this message translates to:
  /// **'Ayahs'**
  String get ayahs;

  /// No description provided for @revelationType.
  ///
  /// In en, this message translates to:
  /// **'Revelation Type'**
  String get revelationType;

  /// No description provided for @meccan.
  ///
  /// In en, this message translates to:
  /// **'Meccan'**
  String get meccan;

  /// No description provided for @medinan.
  ///
  /// In en, this message translates to:
  /// **'Medinan'**
  String get medinan;

  /// No description provided for @welcomeToApp.
  ///
  /// In en, this message translates to:
  /// **'Welcome to Al-Mushaf Al-Elite'**
  String get welcomeToApp;

  /// No description provided for @spiritualJourney.
  ///
  /// In en, this message translates to:
  /// **'Your spiritual journey begins here'**
  String get spiritualJourney;

  /// No description provided for @dailyReflections.
  ///
  /// In en, this message translates to:
  /// **'Daily Reflections'**
  String get dailyReflections;

  /// No description provided for @discoverWisdom.
  ///
  /// In en, this message translates to:
  /// **'Discover wisdom in every verse'**
  String get discoverWisdom;

  /// No description provided for @communityLearning.
  ///
  /// In en, this message translates to:
  /// **'Community & Learning'**
  String get communityLearning;

  /// No description provided for @joinStudyCircles.
  ///
  /// In en, this message translates to:
  /// **'Join our study circles'**
  String get joinStudyCircles;

  /// No description provided for @beautifulRecitations.
  ///
  /// In en, this message translates to:
  /// **'Beautiful Recitations'**
  String get beautifulRecitations;

  /// No description provided for @listenToVoices.
  ///
  /// In en, this message translates to:
  /// **'Listen to the most beautiful voices'**
  String get listenToVoices;

  /// No description provided for @spiritualCompanion.
  ///
  /// In en, this message translates to:
  /// **'Your spiritual companion for the Holy Quran'**
  String get spiritualCompanion;

  /// No description provided for @translationLanguage.
  ///
  /// In en, this message translates to:
  /// **'Translation Language'**
  String get translationLanguage;

  /// No description provided for @defaultReciter.
  ///
  /// In en, this message translates to:
  /// **'Default Reciter'**
  String get defaultReciter;

  /// No description provided for @selected.
  ///
  /// In en, this message translates to:
  /// **'Selected'**
  String get selected;

  /// No description provided for @tapToPlaySample.
  ///
  /// In en, this message translates to:
  /// **'Tap to play sample'**
  String get tapToPlaySample;

  /// No description provided for @darkMode.
  ///
  /// In en, this message translates to:
  /// **'Dark Mode'**
  String get darkMode;

  /// No description provided for @verseNumber.
  ///
  /// In en, this message translates to:
  /// **'Verse {number}'**
  String verseNumber(int number);

  /// No description provided for @surahNumber.
  ///
  /// In en, this message translates to:
  /// **'Surah {number}'**
  String surahNumber(int number);

  /// No description provided for @versesCount.
  ///
  /// In en, this message translates to:
  /// **'{count} Verses'**
  String versesCount(int count);

  /// No description provided for @surahVerse.
  ///
  /// In en, this message translates to:
  /// **'{surah} - Verse {verse}'**
  String surahVerse(String surah, int verse);

  /// No description provided for @weeklyTafsirSession.
  ///
  /// In en, this message translates to:
  /// **'Weekly Tafsir Session'**
  String get weeklyTafsirSession;

  /// No description provided for @communityRecitation.
  ///
  /// In en, this message translates to:
  /// **'Community Recitation'**
  String get communityRecitation;

  /// No description provided for @quranStudyCircle.
  ///
  /// In en, this message translates to:
  /// **'Quran Study Circle'**
  String get quranStudyCircle;

  /// No description provided for @live.
  ///
  /// In en, this message translates to:
  /// **'Live'**
  String get live;

  /// No description provided for @inPerson.
  ///
  /// In en, this message translates to:
  /// **'In-Person'**
  String get inPerson;

  /// No description provided for @online.
  ///
  /// In en, this message translates to:
  /// **'Online'**
  String get online;

  /// No description provided for @tomorrow.
  ///
  /// In en, this message translates to:
  /// **'Tomorrow'**
  String get tomorrow;

  /// No description provided for @friday.
  ///
  /// In en, this message translates to:
  /// **'Friday'**
  String get friday;

  /// No description provided for @sunday.
  ///
  /// In en, this message translates to:
  /// **'Sunday'**
  String get sunday;

  /// No description provided for @selectTranslationLanguage.
  ///
  /// In en, this message translates to:
  /// **'Select Translation Language'**
  String get selectTranslationLanguage;

  /// No description provided for @choosePreferredLanguage.
  ///
  /// In en, this message translates to:
  /// **'Choose your preferred language for translations'**
  String get choosePreferredLanguage;

  /// No description provided for @selectDefaultReciter.
  ///
  /// In en, this message translates to:
  /// **'Select Default Reciter'**
  String get selectDefaultReciter;

  /// No description provided for @chooseFavoriteReciter.
  ///
  /// In en, this message translates to:
  /// **'Choose your favorite reciter'**
  String get chooseFavoriteReciter;

  /// No description provided for @chooseTheme.
  ///
  /// In en, this message translates to:
  /// **'Choose Theme'**
  String get chooseTheme;

  /// No description provided for @selectPreferredAppearance.
  ///
  /// In en, this message translates to:
  /// **'Select your preferred appearance'**
  String get selectPreferredAppearance;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @readingProgress.
  ///
  /// In en, this message translates to:
  /// **'Reading Progress'**
  String get readingProgress;

  /// No description provided for @today.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today;

  /// No description provided for @thisWeek.
  ///
  /// In en, this message translates to:
  /// **'This Week'**
  String get thisWeek;

  /// No description provided for @streak.
  ///
  /// In en, this message translates to:
  /// **'Streak'**
  String get streak;

  /// No description provided for @bookmarkReminder.
  ///
  /// In en, this message translates to:
  /// **'Bookmark reminder'**
  String get bookmarkReminder;

  /// No description provided for @continueReadingSurah.
  ///
  /// In en, this message translates to:
  /// **'Continue reading {surah}'**
  String continueReadingSurah(String surah);

  /// No description provided for @dailyVerseReady.
  ///
  /// In en, this message translates to:
  /// **'Daily verse ready'**
  String get dailyVerseReady;

  /// No description provided for @basmala.
  ///
  /// In en, this message translates to:
  /// **'بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ'**
  String get basmala;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ar', 'en', 'es', 'fr'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fr':
      return AppLocalizationsFr();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
