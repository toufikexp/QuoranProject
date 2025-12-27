// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'Al-Mushaf Al-Elite';

  @override
  String get welcome => 'Bienvenido';

  @override
  String get goodMorning => 'Buenos días';

  @override
  String get goodAfternoon => 'Buenas tardes';

  @override
  String get goodEvening => 'Buenas noches';

  @override
  String get lastRead => 'Última lectura';

  @override
  String get resume => 'Continuar';

  @override
  String get verseOfTheDay => 'Verso del día';

  @override
  String get surahs => 'Suras';

  @override
  String get juz => 'Juz';

  @override
  String get bookmarks => 'Marcadores';

  @override
  String get featuredContent => 'Contenido destacado';

  @override
  String get recommendedReading => 'Lectura recomendada';

  @override
  String get viewAll => 'Ver todo';

  @override
  String get communityEvents => 'Comunidad y eventos';

  @override
  String get notifications => 'Notificaciones';

  @override
  String newNotifications(int count) {
    return '$count nuevas notificaciones';
  }

  @override
  String get selectLanguage => 'Seleccionar idioma';

  @override
  String get selectReciter => 'Seleccionar recitador';

  @override
  String get selectTheme => 'Seleccionar tema';

  @override
  String get continueButton => 'Continuar';

  @override
  String get skip => 'Omitir';

  @override
  String get arabic => 'Árabe';

  @override
  String get english => 'Inglés';

  @override
  String get french => 'Francés';

  @override
  String get spanish => 'Español';

  @override
  String get light => 'Claro';

  @override
  String get dark => 'Oscuro';

  @override
  String get todayReading => 'Lectura de hoy';

  @override
  String get weeklyGoal => 'Objetivo semanal';

  @override
  String get studyPlan => 'Plan de estudio';

  @override
  String get recommendedForFriday => 'Recomendado para el viernes';

  @override
  String continueFromVerse(int verse) {
    return 'Continuar desde el verso $verse';
  }

  @override
  String get memorizationTarget => 'Objetivo de memorización';

  @override
  String get verse => 'Verso';

  @override
  String get verses => 'Versos';

  @override
  String get surah => 'Sura';

  @override
  String get ayahs => 'Versos';

  @override
  String get revelationType => 'Tipo de revelación';

  @override
  String get meccan => 'Mequí';

  @override
  String get medinan => 'Mediní';

  @override
  String get welcomeToApp => 'Bienvenido a Al-Mushaf Al-Elite';

  @override
  String get spiritualJourney => 'Tu viaje espiritual comienza aquí';

  @override
  String get dailyReflections => 'Reflexiones diarias';

  @override
  String get discoverWisdom => 'Descubre la sabiduría en cada verso';

  @override
  String get communityLearning => 'Comunidad y aprendizaje';

  @override
  String get joinStudyCircles => 'Únete a nuestros círculos de estudio';

  @override
  String get beautifulRecitations => 'Hermosas recitaciones';

  @override
  String get listenToVoices => 'Escucha las voces más hermosas';

  @override
  String get spiritualCompanion =>
      'Tu compañero espiritual para el Sagrado Corán';

  @override
  String get translationLanguage => 'Idioma de traducción';

  @override
  String get defaultReciter => 'Recitador predeterminado';

  @override
  String get selected => 'Seleccionado';

  @override
  String get tapToPlaySample => 'Toca para reproducir muestra';

  @override
  String get darkMode => 'Modo oscuro';

  @override
  String verseNumber(int number) {
    return 'Verso $number';
  }

  @override
  String surahNumber(int number) {
    return 'Sura $number';
  }

  @override
  String versesCount(int count) {
    return '$count Versos';
  }

  @override
  String surahVerse(String surah, int verse) {
    return '$surah - Verso $verse';
  }

  @override
  String get weeklyTafsirSession => 'Sesión de Tafsir semanal';

  @override
  String get communityRecitation => 'Recitación comunitaria';

  @override
  String get quranStudyCircle => 'Círculo de estudio del Corán';

  @override
  String get live => 'En vivo';

  @override
  String get inPerson => 'Presencial';

  @override
  String get online => 'En línea';

  @override
  String get tomorrow => 'Mañana';

  @override
  String get friday => 'Viernes';

  @override
  String get sunday => 'Domingo';

  @override
  String get selectTranslationLanguage => 'Seleccionar idioma de traducción';

  @override
  String get choosePreferredLanguage =>
      'Elige tu idioma preferido para las traducciones';

  @override
  String get selectDefaultReciter => 'Seleccionar recitador predeterminado';

  @override
  String get chooseFavoriteReciter => 'Elige tu recitador favorito';

  @override
  String get chooseTheme => 'Elegir tema';

  @override
  String get selectPreferredAppearance => 'Selecciona tu apariencia preferida';

  @override
  String get next => 'Siguiente';

  @override
  String get readingProgress => 'Progreso de lectura';

  @override
  String get today => 'Hoy';

  @override
  String get thisWeek => 'Esta semana';

  @override
  String get streak => 'Racha';

  @override
  String get bookmarkReminder => 'Recordatorio de marcador';

  @override
  String continueReadingSurah(String surah) {
    return 'Continuar leyendo $surah';
  }

  @override
  String get dailyVerseReady => 'Verso diario listo';

  @override
  String get basmala => 'بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ';
}
