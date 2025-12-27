// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appTitle => 'المصحف النخبة';

  @override
  String get welcome => 'مرحباً';

  @override
  String get goodMorning => 'صباح الخير';

  @override
  String get goodAfternoon => 'مساء الخير';

  @override
  String get goodEvening => 'مساء الخير';

  @override
  String get lastRead => 'آخر قراءة';

  @override
  String get resume => 'متابعة';

  @override
  String get verseOfTheDay => 'آية اليوم';

  @override
  String get surahs => 'السور';

  @override
  String get juz => 'الجزء';

  @override
  String get bookmarks => 'العلامات المرجعية';

  @override
  String get featuredContent => 'المحتوى المميز';

  @override
  String get recommendedReading => 'القراءة الموصى بها';

  @override
  String get viewAll => 'عرض الكل';

  @override
  String get communityEvents => 'المجتمع والفعاليات';

  @override
  String get notifications => 'الإشعارات';

  @override
  String newNotifications(int count) {
    return '$count إشعار جديد';
  }

  @override
  String get selectLanguage => 'اختر اللغة';

  @override
  String get selectReciter => 'اختر القارئ';

  @override
  String get selectTheme => 'اختر المظهر';

  @override
  String get continueButton => 'متابعة';

  @override
  String get skip => 'تخطي';

  @override
  String get arabic => 'العربية';

  @override
  String get english => 'الإنجليزية';

  @override
  String get french => 'الفرنسية';

  @override
  String get spanish => 'الإسبانية';

  @override
  String get light => 'فاتح';

  @override
  String get dark => 'داكن';

  @override
  String get todayReading => 'قراءة اليوم';

  @override
  String get weeklyGoal => 'الهدف الأسبوعي';

  @override
  String get studyPlan => 'خطة الدراسة';

  @override
  String get recommendedForFriday => 'موصى به ليوم الجمعة';

  @override
  String continueFromVerse(int verse) {
    return 'متابعة من الآية $verse';
  }

  @override
  String get memorizationTarget => 'هدف الحفظ';

  @override
  String get verse => 'آية';

  @override
  String get verses => 'آيات';

  @override
  String get surah => 'سورة';

  @override
  String get ayahs => 'آيات';

  @override
  String get revelationType => 'نوع الوحي';

  @override
  String get meccan => 'مكية';

  @override
  String get medinan => 'مدنية';

  @override
  String get welcomeToApp => 'مرحباً بك في المصحف النخبة';

  @override
  String get spiritualJourney => 'رحلتك الروحية تبدأ من هنا';

  @override
  String get dailyReflections => 'تأملات يومية';

  @override
  String get discoverWisdom => 'اكتشف الحكمة في كل آية';

  @override
  String get communityLearning => 'المجتمع والتعلم';

  @override
  String get joinStudyCircles => 'انضم إلى حلقات الدراسة';

  @override
  String get beautifulRecitations => 'تلاوات جميلة';

  @override
  String get listenToVoices => 'استمع إلى أجمل الأصوات';

  @override
  String get spiritualCompanion => 'رفيقك الروحي للقرآن الكريم';

  @override
  String get translationLanguage => 'لغة الترجمة';

  @override
  String get defaultReciter => 'القارئ الافتراضي';

  @override
  String get selected => 'محدد';

  @override
  String get tapToPlaySample => 'اضغط للاستماع إلى عينة';

  @override
  String get darkMode => 'الوضع الداكن';

  @override
  String verseNumber(int number) {
    return 'آية $number';
  }

  @override
  String surahNumber(int number) {
    return 'سورة $number';
  }

  @override
  String versesCount(int count) {
    return '$count آية';
  }

  @override
  String surahVerse(String surah, int verse) {
    return '$surah - آية $verse';
  }

  @override
  String get weeklyTafsirSession => 'جلسة تفسير أسبوعية';

  @override
  String get communityRecitation => 'تلاوة جماعية';

  @override
  String get quranStudyCircle => 'حلقة دراسة القرآن';

  @override
  String get live => 'مباشر';

  @override
  String get inPerson => 'حضوري';

  @override
  String get online => 'عبر الإنترنت';

  @override
  String get tomorrow => 'غداً';

  @override
  String get friday => 'الجمعة';

  @override
  String get sunday => 'الأحد';
}
