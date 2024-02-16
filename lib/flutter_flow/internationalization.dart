import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'hi', 'kn', 'ta'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? hiText = '',
    String? knText = '',
    String? taText = '',
  }) =>
      [enText, hiText, knText, taText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // login1
  {
    'oyfqr4l4': {
      'en': 'Email / Username',
      'hi': 'ईमेल/उपयोगकर्ता नाम',
      'kn': 'ಇಮೇಲ್ / ಬಳಕೆದಾರಹೆಸರು',
      'ta': 'மின்னஞ்சல் / பயனர் பெயர்',
    },
    'ymqfefuv': {
      'en': 'SHIVA0102',
      'hi': 'SHIVA0102',
      'kn': 'ಶಿವ0102',
      'ta': 'ஷிவா0102',
    },
    '5wmkebh6': {
      'en': 'Password',
      'hi': 'पासवर्ड',
      'kn': 'ಗುಪ್ತಪದ',
      'ta': 'கடவுச்சொல்',
    },
    'll5d7ge7': {
      'en': 'SHIVA0102@2020',
      'hi': 'SHIVA0102@2020',
      'kn': 'SHIVA0102@2020',
      'ta': 'ஷிவா0102@2020',
    },
    '9hjkcaxf': {
      'en': 'LOGIN',
      'hi': 'लॉग इन करें',
      'kn': 'ಲಾಗಿನ್',
      'ta': 'உள்நுழைய',
    },
    'x3mcqe1l': {
      'en': 'Forgot Password ?',
      'hi': 'पासवर्ड भूल गए ?',
      'kn': 'ಪಾಸ್ವರ್ಡ್ ಮರೆತಿರಾ ?',
      'ta': 'கடவுச்சொல்லை மறந்துவிட்டீர்களா ?',
    },
    'hdlz2qix': {
      'en': '© 2021 St. John\'s Public School Management',
      'hi': '© 2021 सेंट जॉन्स पब्लिक स्कूल प्रबंधन',
      'kn': '© 2021 ಸೇಂಟ್ ಜಾನ್ಸ್ ಪಬ್ಲಿಕ್ ಸ್ಕೂಲ್ ಮ್ಯಾನೇಜ್ಮೆಂಟ್',
      'ta': '© 2021 செயின்ட் ஜான்ஸ் பப்ளிக் பள்ளி மேலாண்மை',
    },
    'xzmo8p8e': {
      'en': 'Home',
      'hi': 'घर',
      'kn': 'ಮನೆ',
      'ta': 'வீடு',
    },
  },
  // HomeWork
  {
    'wjwvdvha': {
      'en': 'Home Work',
      'hi': 'गृहकार्य',
      'kn': 'ಮನೆಕೆಲಸ',
      'ta': 'வீட்டு பாடம்',
    },
    'mnfpfbnl': {
      'en': '',
      'hi': '',
      'kn': '',
      'ta': '',
    },
    'jf9muglb': {
      'en': 'Home Work',
      'hi': 'गृहकार्य',
      'kn': 'ಮನೆಕೆಲಸ',
      'ta': 'வீட்டு பாடம்',
    },
  },
  // NoticeBoard
  {
    '08khq7nm': {
      'en': 'Notice Board',
      'hi': 'सूचना पट्ट',
      'kn': 'ಸೂಚನಾ ಫಲಕ',
      'ta': 'அறிவிப்பு பலகை',
    },
    '19arbcuu': {
      'en': 'Notice Board',
      'hi': 'सूचना पट्ट',
      'kn': 'ಸೂಚನಾ ಫಲಕ',
      'ta': 'அறிவிப்பு பலகை',
    },
  },
  // WriteToSchool
  {
    'znydgpxs': {
      'en': 'Write to school',
      'hi': 'स्कूल को लिखें',
      'kn': 'ಶಾಲೆಗೆ ಬರೆಯಿರಿ',
      'ta': 'பள்ளிக்கு எழுதுங்கள்',
    },
    'cwk4ool4': {
      'en': 'Write to school',
      'hi': 'स्कूल को लिखें',
      'kn': 'ಶಾಲೆಗೆ ಬರೆಯಿರಿ',
      'ta': 'பள்ளிக்கு எழுதுங்கள்',
    },
  },
  // FessHistory
  {
    'enh7kxrk': {
      'en': 'Fees history',
      'hi': 'फीस इतिहास',
      'kn': 'ಶುಲ್ಕ ಇತಿಹಾಸ',
      'ta': 'கட்டண வரலாறு',
    },
    'nhc18prv': {
      'en': 'Fees history',
      'hi': 'फीस इतिहास',
      'kn': 'ಶುಲ್ಕ ಇತಿಹಾಸ',
      'ta': 'கட்டண வரலாறு',
    },
  },
  // Upcomingevents
  {
    'bzy13ox1': {
      'en': 'Up Coming Events',
      'hi': 'आगामी कार्यक्रम',
      'kn': 'ಮುಂಬರುವ ಕಾರ್ಯಕ್ರಮಗಳು',
      'ta': 'எதிர்வரும் நிகழ்வுகள்',
    },
    '7ivpmk44': {
      'en': 'UpComingEvents',
      'hi': 'आगामी कार्यक्रम',
      'kn': 'ಮುಂಬರುವ ಕಾರ್ಯಕ್ರಮಗಳು',
      'ta': 'எதிர்வரும் நிகழ்வுகள்',
    },
  },
  // testttt12
  {
    'tehquzfp': {
      'en': 'Student Profile',
      'hi': 'छात्र प्रोफाइल',
      'kn': 'ವಿದ್ಯಾರ್ಥಿ ಪ್ರೊಫೈಲ್',
      'ta': 'மாணவர் சுயவிவரம்',
    },
    'x4mcvyzc': {
      'en': 'Edit',
      'hi': 'संपादन करना',
      'kn': 'ತಿದ್ದು',
      'ta': 'தொகு',
    },
    'm38dda25': {
      'en': 'Attendance Overview',
      'hi': 'उपस्थिति अवलोकन',
      'kn': 'ಹಾಜರಾತಿ ಅವಲೋಕನ',
      'ta': 'வருகை மேலோட்டம்',
    },
    '0aggtst3': {
      'en': 'View month wise',
      'hi': 'माहवार देखें',
      'kn': 'ತಿಂಗಳಿಗನುಗುಣವಾಗಿ ವೀಕ್ಷಿಸಿ',
      'ta': 'மாதம் வாரியாக பார்க்கவும்',
    },
    'dhlzvwg3': {
      'en': 'Total attendance',
      'hi': 'कुल उपस्थिति',
      'kn': 'ಒಟ್ಟು ಹಾಜರಾತಿ',
      'ta': 'மொத்த வருகை',
    },
    'hrj1ptc4': {
      'en': '',
      'hi': '',
      'kn': '',
      'ta': '',
    },
    'o3d8zhmh': {
      'en': '50',
      'hi': '50',
      'kn': '50',
      'ta': '50',
    },
    '3qsva1j9': {
      'en': '100',
      'hi': '100',
      'kn': '100',
      'ta': '100',
    },
    'ynlbivhz': {
      'en': 'Homework List',
      'hi': 'गृहकार्य सूची',
      'kn': 'ಹೋಮ್ವರ್ಕ್ ಪಟ್ಟಿ',
      'ta': 'வீட்டுப்பாட பட்டியல்',
    },
    'y5fscin4': {
      'en': 'View all',
      'hi': 'सभी को देखें',
      'kn': 'ಎಲ್ಲಾ ವೀಕ್ಷಿಸಿ',
      'ta': 'அனைத்தையும் காட்டு',
    },
    'yqwafun8': {
      'en': '',
      'hi': '',
      'kn': '',
      'ta': '',
    },
    'pmwjula2': {
      'en': 'Upcoming Events',
      'hi': 'आगामी कार्यक्रम',
      'kn': 'ಮುಂಬರುವ ಕಾರ್ಯಕ್ರಮಗಳು',
      'ta': 'எதிர்வரும் நிகழ்வுகள்',
    },
    'xo7esl1n': {
      'en': 'View all',
      'hi': 'सभी को देखें',
      'kn': 'ಎಲ್ಲಾ ವೀಕ್ಷಿಸಿ',
      'ta': 'அனைத்தையும் காட்டு',
    },
    '2ean18k4': {
      'en': 'Home',
      'hi': 'घर',
      'kn': 'ಮನೆ',
      'ta': 'வீடு',
    },
  },
  // newwwwww
  {
    'ijlrbqfn': {
      'en': 'Academic Session: 2023 - 2024',
      'hi': 'शैक्षणिक सत्र: 2023 - 2024',
      'kn': 'ಶೈಕ್ಷಣಿಕ ಅವಧಿ: 2023 - 2024',
      'ta': 'கல்வி அமர்வு: 2023 - 2024',
    },
    'rmnighio': {
      'en': 'Dashboard',
      'hi': 'डैशबोर्ड',
      'kn': 'ಡ್ಯಾಶ್‌ಬೋರ್ಡ್',
      'ta': 'டாஷ்போர்டு',
    },
    'yc4rpxks': {
      'en': 'Profile',
      'hi': 'प्रोफ़ाइल',
      'kn': 'ಪ್ರೊಫೈಲ್',
      'ta': 'சுயவிவரம்',
    },
    'jgn7s6wj': {
      'en': 'Teachers',
      'hi': 'शिक्षकों की',
      'kn': 'ಶಿಕ್ಷಕರು',
      'ta': 'ஆசிரியர்கள்',
    },
    '0m0cdae2': {
      'en': 'Time Table',
      'hi': 'समय सारणी',
      'kn': 'ಟೈಮ್ ಟೇಬಲ್',
      'ta': 'நேர அட்டவணை',
    },
    'm771j3nf': {
      'en': 'Homeworks',
      'hi': 'Homeworks',
      'kn': 'ಮನೆಕೆಲಸಗಳು',
      'ta': 'வீட்டுப்பாடங்கள்',
    },
    'w82eprm3': {
      'en': 'Events',
      'hi': 'आयोजन',
      'kn': 'ಕಾರ್ಯಕ್ರಮಗಳು',
      'ta': 'நிகழ்வுகள்',
    },
    '6s3ul62x': {
      'en': 'Academic Subjects',
      'hi': 'शैक्षणिक विषय',
      'kn': 'ಶೈಕ್ಷಣಿಕ ವಿಷಯಗಳು',
      'ta': 'கல்விப் பாடங்கள்',
    },
    '1n0mc7if': {
      'en': 'Fees History',
      'hi': 'फीस इतिहास',
      'kn': 'ಶುಲ್ಕ ಇತಿಹಾಸ',
      'ta': 'கட்டண வரலாறு',
    },
    'fyn3oqtr': {
      'en': 'Bus Information',
      'hi': 'बस सूचना',
      'kn': 'ಬಸ್ ಮಾಹಿತಿ',
      'ta': 'பேருந்து தகவல்',
    },
    'sbbwi47r': {
      'en': 'Write To School',
      'hi': 'स्कूल को लिखें',
      'kn': 'ಶಾಲೆಗೆ ಬರೆಯಿರಿ',
      'ta': 'பள்ளிக்கு எழுதுங்கள்',
    },
    'lp0k1aze': {
      'en': 'Notifications / Alerts',
      'hi': 'सूचनाएं/अलर्ट',
      'kn': 'ಅಧಿಸೂಚನೆಗಳು / ಎಚ್ಚರಿಕೆಗಳು',
      'ta': 'அறிவிப்புகள் / எச்சரிக்கைகள்',
    },
    'nyrv4z5c': {
      'en': 'Settings',
      'hi': 'समायोजन',
      'kn': 'ಸಂಯೋಜನೆಗಳು',
      'ta': 'அமைப்புகள்',
    },
    'qrmnwg5f': {
      'en': 'LOGOUT',
      'hi': 'लॉग आउट',
      'kn': 'ಲಾಗ್ ಔಟ್',
      'ta': 'வெளியேறு',
    },
    '0enmt2s0': {
      'en': 'Home',
      'hi': '',
      'kn': '',
      'ta': '',
    },
  },
  // sujiii123
  {
    'kjdzqw4y': {
      'en': 'Page Title',
      'hi': '',
      'kn': '',
      'ta': '',
    },
    '5kdpvlmy': {
      'en': 'Student Profile',
      'hi': 'छात्र प्रोफाइल',
      'kn': 'ವಿದ್ಯಾರ್ಥಿ ಪ್ರೊಫೈಲ್',
      'ta': 'மாணவர் சுயவிவரம்',
    },
    'xg2ptefb': {
      'en': 'Edit',
      'hi': 'संपादन करना',
      'kn': 'ತಿದ್ದು',
      'ta': 'தொகு',
    },
    'iagmhtm4': {
      'en': 'Attendance Overview',
      'hi': 'उपस्थिति अवलोकन',
      'kn': 'ಹಾಜರಾತಿ ಅವಲೋಕನ',
      'ta': 'வருகை மேலோட்டம்',
    },
    'ruuk9pc8': {
      'en': 'View month wise',
      'hi': 'माहवार देखें',
      'kn': 'ತಿಂಗಳಿಗನುಗುಣವಾಗಿ ವೀಕ್ಷಿಸಿ',
      'ta': 'மாதம் வாரியாக பார்க்கவும்',
    },
    '8rujvlpb': {
      'en': 'Total attendance',
      'hi': 'कुल उपस्थिति',
      'kn': 'ಒಟ್ಟು ಹಾಜರಾತಿ',
      'ta': 'மொத்த வருகை',
    },
    'spn0cpv4': {
      'en': '',
      'hi': '',
      'kn': '',
      'ta': '',
    },
    'oc7v1pd1': {
      'en': '50',
      'hi': '50',
      'kn': '50',
      'ta': '50',
    },
    '8q8yt1to': {
      'en': '100',
      'hi': '100',
      'kn': '100',
      'ta': '100',
    },
    'z23piwem': {
      'en': 'Homework List',
      'hi': 'गृहकार्य सूची',
      'kn': 'ಹೋಮ್ವರ್ಕ್ ಪಟ್ಟಿ',
      'ta': 'வீட்டுப்பாட பட்டியல்',
    },
    'mrct5mi3': {
      'en': 'View all',
      'hi': 'सभी को देखें',
      'kn': 'ಎಲ್ಲಾ ವೀಕ್ಷಿಸಿ',
      'ta': 'அனைத்தையும் காட்டு',
    },
    'q6wv1jxw': {
      'en': '',
      'hi': '',
      'kn': '',
      'ta': '',
    },
    'iflpten5': {
      'en': 'Upcoming Events',
      'hi': 'आगामी कार्यक्रम',
      'kn': 'ಮುಂಬರುವ ಕಾರ್ಯಕ್ರಮಗಳು',
      'ta': 'எதிர்வரும் நிகழ்வுகள்',
    },
    'z7ook24l': {
      'en': 'View all',
      'hi': 'सभी को देखें',
      'kn': 'ಎಲ್ಲಾ ವೀಕ್ಷಿಸಿ',
      'ta': 'அனைத்தையும் காட்டு',
    },
    'kpwhqz5r': {
      'en': 'Academic Session: 2023 - 2024',
      'hi': 'शैक्षणिक सत्र: 2023 - 2024',
      'kn': 'ಶೈಕ್ಷಣಿಕ ಅವಧಿ: 2023 - 2024',
      'ta': 'கல்வி அமர்வு: 2023 - 2024',
    },
    'ts5crrs9': {
      'en': 'Dashboard',
      'hi': 'डैशबोर्ड',
      'kn': 'ಡ್ಯಾಶ್‌ಬೋರ್ಡ್',
      'ta': 'டாஷ்போர்டு',
    },
    'cv7wukuk': {
      'en': 'Profile',
      'hi': 'प्रोफ़ाइल',
      'kn': 'ಪ್ರೊಫೈಲ್',
      'ta': 'சுயவிவரம்',
    },
    'p3qqu7uc': {
      'en': 'Teachers',
      'hi': 'शिक्षकों की',
      'kn': 'ಶಿಕ್ಷಕರು',
      'ta': 'ஆசிரியர்கள்',
    },
    'lt61fdgl': {
      'en': 'Time Table',
      'hi': 'समय सारणी',
      'kn': 'ಟೈಮ್ ಟೇಬಲ್',
      'ta': 'நேர அட்டவணை',
    },
    'na05bead': {
      'en': 'Homeworks',
      'hi': 'Homeworks',
      'kn': 'ಮನೆಕೆಲಸಗಳು',
      'ta': 'வீட்டுப்பாடங்கள்',
    },
    'kxhhqige': {
      'en': 'Events',
      'hi': 'आयोजन',
      'kn': 'ಕಾರ್ಯಕ್ರಮಗಳು',
      'ta': 'நிகழ்வுகள்',
    },
    'lto6i398': {
      'en': 'Academic Subjects',
      'hi': 'शैक्षणिक विषय',
      'kn': 'ಶೈಕ್ಷಣಿಕ ವಿಷಯಗಳು',
      'ta': 'கல்விப் பாடங்கள்',
    },
    'zmtci0vx': {
      'en': 'Fees History',
      'hi': 'फीस इतिहास',
      'kn': 'ಶುಲ್ಕ ಇತಿಹಾಸ',
      'ta': 'கட்டண வரலாறு',
    },
    '1ighu6x8': {
      'en': 'Bus Information',
      'hi': 'बस सूचना',
      'kn': 'ಬಸ್ ಮಾಹಿತಿ',
      'ta': 'பேருந்து தகவல்',
    },
    '95w1ixac': {
      'en': 'Write To School',
      'hi': 'स्कूल को लिखें',
      'kn': 'ಶಾಲೆಗೆ ಬರೆಯಿರಿ',
      'ta': 'பள்ளிக்கு எழுதுங்கள்',
    },
    'w4j17g42': {
      'en': 'Notifications / Alerts',
      'hi': 'सूचनाएं/अलर्ट',
      'kn': 'ಅಧಿಸೂಚನೆಗಳು / ಎಚ್ಚರಿಕೆಗಳು',
      'ta': 'அறிவிப்புகள் / எச்சரிக்கைகள்',
    },
    'jvrpxxcn': {
      'en': 'Settings',
      'hi': 'समायोजन',
      'kn': 'ಸಂಯೋಜನೆಗಳು',
      'ta': 'அமைப்புகள்',
    },
    '17hyjmzo': {
      'en': 'LOGOUT',
      'hi': 'लॉग आउट',
      'kn': 'ಲಾಗ್ ಔಟ್',
      'ta': 'வெளியேறு',
    },
    'jg6k7rho': {
      'en': 'Home',
      'hi': '',
      'kn': '',
      'ta': '',
    },
  },
  // kumar
  {
    'l8zyjvct': {
      'en': 'Academic Session: 2023 - 2024',
      'hi': 'शैक्षणिक सत्र: 2023 - 2024',
      'kn': 'ಶೈಕ್ಷಣಿಕ ಅವಧಿ: 2023 - 2024',
      'ta': 'கல்வி அமர்வு: 2023 - 2024',
    },
    'w5fwayfd': {
      'en': 'Dashboard',
      'hi': 'डैशबोर्ड',
      'kn': 'ಡ್ಯಾಶ್‌ಬೋರ್ಡ್',
      'ta': 'டாஷ்போர்டு',
    },
    '5xzrshf1': {
      'en': 'Profile',
      'hi': 'प्रोफ़ाइल',
      'kn': 'ಪ್ರೊಫೈಲ್',
      'ta': 'சுயவிவரம்',
    },
    'jt1de2gm': {
      'en': 'Teachers',
      'hi': 'शिक्षकों की',
      'kn': 'ಶಿಕ್ಷಕರು',
      'ta': 'ஆசிரியர்கள்',
    },
    'kajax9dl': {
      'en': 'Time Table',
      'hi': 'समय सारणी',
      'kn': 'ಟೈಮ್ ಟೇಬಲ್',
      'ta': 'நேர அட்டவணை',
    },
    'iaepolfq': {
      'en': 'Homeworks',
      'hi': 'Homeworks',
      'kn': 'ಮನೆಕೆಲಸಗಳು',
      'ta': 'வீட்டுப்பாடங்கள்',
    },
    'j418tz29': {
      'en': 'Events',
      'hi': 'आयोजन',
      'kn': 'ಕಾರ್ಯಕ್ರಮಗಳು',
      'ta': 'நிகழ்வுகள்',
    },
    '2makfep8': {
      'en': 'Academic Subjects',
      'hi': 'शैक्षणिक विषय',
      'kn': 'ಶೈಕ್ಷಣಿಕ ವಿಷಯಗಳು',
      'ta': 'கல்விப் பாடங்கள்',
    },
    '2jflxvua': {
      'en': 'Fees History',
      'hi': 'फीस इतिहास',
      'kn': 'ಶುಲ್ಕ ಇತಿಹಾಸ',
      'ta': 'கட்டண வரலாறு',
    },
    '3t51uzbr': {
      'en': 'Bus Information',
      'hi': 'बस सूचना',
      'kn': 'ಬಸ್ ಮಾಹಿತಿ',
      'ta': 'பேருந்து தகவல்',
    },
    '33mjyymp': {
      'en': 'Write To School',
      'hi': 'स्कूल को लिखें',
      'kn': 'ಶಾಲೆಗೆ ಬರೆಯಿರಿ',
      'ta': 'பள்ளிக்கு எழுதுங்கள்',
    },
    'ohj6qmyi': {
      'en': 'Notifications / Alerts',
      'hi': 'सूचनाएं/अलर्ट',
      'kn': 'ಅಧಿಸೂಚನೆಗಳು / ಎಚ್ಚರಿಕೆಗಳು',
      'ta': 'அறிவிப்புகள் / எச்சரிக்கைகள்',
    },
    '9qzfcbze': {
      'en': 'Settings',
      'hi': 'समायोजन',
      'kn': 'ಸಂಯೋಜನೆಗಳು',
      'ta': 'அமைப்புகள்',
    },
    '529450ni': {
      'en': 'LOGOUT',
      'hi': 'लॉग आउट',
      'kn': 'ಲಾಗ್ ಔಟ್',
      'ta': 'வெளியேறு',
    },
    'slyb6plc': {
      'en': 'Home',
      'hi': 'स्कूल को लिखें',
      'kn': 'ಶಾಲೆಗೆ ಬರೆಯಿರಿ',
      'ta': 'பள்ளிக்கு எழுதுங்கள்',
    },
  },
  // drawer2022
  {
    'u3v1fiv1': {
      'en': 'Academic Session: 2023 - 2024',
      'hi': 'शैक्षणिक सत्र: 2023 - 2024',
      'kn': 'ಶೈಕ್ಷಣಿಕ ಅವಧಿ: 2023 - 2024',
      'ta': 'கல்வி அமர்வு: 2023 - 2024',
    },
    'plr2i9z2': {
      'en': 'Dashboard',
      'hi': 'डैशबोर्ड',
      'kn': 'ಡ್ಯಾಶ್‌ಬೋರ್ಡ್',
      'ta': 'டாஷ்போர்டு',
    },
    'ahr9bhfq': {
      'en': 'Profile',
      'hi': 'प्रोफ़ाइल',
      'kn': 'ಪ್ರೊಫೈಲ್',
      'ta': 'சுயவிவரம்',
    },
    'a0fzmfag': {
      'en': 'Teachers',
      'hi': 'शिक्षकों की',
      'kn': 'ಶಿಕ್ಷಕರು',
      'ta': 'ஆசிரியர்கள்',
    },
    'dauniiba': {
      'en': 'Time Table',
      'hi': 'समय सारणी',
      'kn': 'ಟೈಮ್ ಟೇಬಲ್',
      'ta': 'நேர அட்டவணை',
    },
    '0xrbmjjy': {
      'en': 'Homeworks',
      'hi': 'Homeworks',
      'kn': 'ಮನೆಕೆಲಸಗಳು',
      'ta': 'வீட்டுப்பாடங்கள்',
    },
    '4o69f48y': {
      'en': 'Events',
      'hi': 'आयोजन',
      'kn': 'ಕಾರ್ಯಕ್ರಮಗಳು',
      'ta': 'நிகழ்வுகள்',
    },
    'mnbbitbn': {
      'en': 'Academic Subjects',
      'hi': 'शैक्षणिक विषय',
      'kn': 'ಶೈಕ್ಷಣಿಕ ವಿಷಯಗಳು',
      'ta': 'கல்விப் பாடங்கள்',
    },
    'r2w6dki3': {
      'en': 'Fees History',
      'hi': 'फीस इतिहास',
      'kn': 'ಶುಲ್ಕ ಇತಿಹಾಸ',
      'ta': 'கட்டண வரலாறு',
    },
    '0u3vdku7': {
      'en': 'Bus Information',
      'hi': 'बस सूचना',
      'kn': 'ಬಸ್ ಮಾಹಿತಿ',
      'ta': 'பேருந்து தகவல்',
    },
    'mas59a3i': {
      'en': 'Write To School',
      'hi': 'स्कूल को लिखें',
      'kn': 'ಶಾಲೆಗೆ ಬರೆಯಿರಿ',
      'ta': 'பள்ளிக்கு எழுதுங்கள்',
    },
    'v679q5aw': {
      'en': 'Notifications / Alerts',
      'hi': 'सूचनाएं/अलर्ट',
      'kn': 'ಅಧಿಸೂಚನೆಗಳು / ಎಚ್ಚರಿಕೆಗಳು',
      'ta': 'அறிவிப்புகள் / எச்சரிக்கைகள்',
    },
    '4id3mfcf': {
      'en': 'Settings',
      'hi': 'समायोजन',
      'kn': 'ಸಂಯೋಜನೆಗಳು',
      'ta': 'அமைப்புகள்',
    },
    'zsrp7ryi': {
      'en': 'LOGOUT',
      'hi': 'लॉग आउट',
      'kn': 'ಲಾಗ್ ಔಟ್',
      'ta': 'வெளியேறு',
    },
  },
  // drawer
  {
    'ra67t3ks': {
      'en': 'Academic Session: 2023 - 2024',
      'hi': 'शैक्षणिक सत्र: 2023 - 2024',
      'kn': 'ಶೈಕ್ಷಣಿಕ ಅವಧಿ: 2023 - 2024',
      'ta': 'கல்வி அமர்வு: 2023 - 2024',
    },
    '09o8iljj': {
      'en': 'Dashboard',
      'hi': 'डैशबोर्ड',
      'kn': 'ಡ್ಯಾಶ್‌ಬೋರ್ಡ್',
      'ta': 'டாஷ்போர்டு',
    },
    'bo4bc7cf': {
      'en': 'Profile',
      'hi': 'प्रोफ़ाइल',
      'kn': 'ಪ್ರೊಫೈಲ್',
      'ta': 'சுயவிவரம்',
    },
    'ed4k1503': {
      'en': 'Teachers',
      'hi': 'शिक्षकों की',
      'kn': 'ಶಿಕ್ಷಕರು',
      'ta': 'ஆசிரியர்கள்',
    },
    'm8vm34qo': {
      'en': 'Time Table',
      'hi': 'समय सारणी',
      'kn': 'ಟೈಮ್ ಟೇಬಲ್',
      'ta': 'நேர அட்டவணை',
    },
    'ges15chm': {
      'en': 'Homeworks',
      'hi': 'Homeworks',
      'kn': 'ಮನೆಕೆಲಸಗಳು',
      'ta': 'வீட்டுப்பாடங்கள்',
    },
    'wgzha19f': {
      'en': 'Events',
      'hi': 'आयोजन',
      'kn': 'ಕಾರ್ಯಕ್ರಮಗಳು',
      'ta': 'நிகழ்வுகள்',
    },
    'd0x3hnc3': {
      'en': 'Academic Subjects',
      'hi': 'शैक्षणिक विषय',
      'kn': 'ಶೈಕ್ಷಣಿಕ ವಿಷಯಗಳು',
      'ta': 'கல்விப் பாடங்கள்',
    },
    'th16ff23': {
      'en': 'Fees History',
      'hi': 'फीस इतिहास',
      'kn': 'ಶುಲ್ಕ ಇತಿಹಾಸ',
      'ta': 'கட்டண வரலாறு',
    },
    'j1vjain8': {
      'en': 'Bus Information',
      'hi': 'बस सूचना',
      'kn': 'ಬಸ್ ಮಾಹಿತಿ',
      'ta': 'பேருந்து தகவல்',
    },
    'd11iqmsh': {
      'en': 'Write To School',
      'hi': 'स्कूल को लिखें',
      'kn': 'ಶಾಲೆಗೆ ಬರೆಯಿರಿ',
      'ta': 'பள்ளிக்கு எழுதுங்கள்',
    },
    'xj13e0hv': {
      'en': 'Notifications / Alerts',
      'hi': 'सूचनाएं/अलर्ट',
      'kn': 'ಅಧಿಸೂಚನೆಗಳು / ಎಚ್ಚರಿಕೆಗಳು',
      'ta': 'அறிவிப்புகள் / எச்சரிக்கைகள்',
    },
    'qg8twwuw': {
      'en': 'Settings',
      'hi': 'समायोजन',
      'kn': 'ಸಂಯೋಜನೆಗಳು',
      'ta': 'அமைப்புகள்',
    },
    '5m4m0n1p': {
      'en': 'LOGOUT',
      'hi': 'लॉग आउट',
      'kn': 'ಲಾಗ್ ಔಟ್',
      'ta': 'வெளியேறு',
    },
  },
  // Miscellaneous
  {
    '3wxh7ygh': {
      'en': '',
      'hi': '',
      'kn': '',
      'ta': '',
    },
    'qtbuc56u': {
      'en': '',
      'hi': '',
      'kn': '',
      'ta': '',
    },
    'l3mwtcur': {
      'en': '',
      'hi': '',
      'kn': '',
      'ta': '',
    },
    'gicnemdg': {
      'en': '',
      'hi': '',
      'kn': '',
      'ta': '',
    },
    '7l413d3s': {
      'en': '',
      'hi': '',
      'kn': '',
      'ta': '',
    },
    '3gnqrkrf': {
      'en': '',
      'hi': '',
      'kn': '',
      'ta': '',
    },
    '0fsxdi39': {
      'en': '',
      'hi': '',
      'kn': '',
      'ta': '',
    },
    'xgxack3y': {
      'en': '',
      'hi': '',
      'kn': '',
      'ta': '',
    },
    '3p4qqys3': {
      'en': '',
      'hi': '',
      'kn': '',
      'ta': '',
    },
    'llts45rv': {
      'en': '',
      'hi': '',
      'kn': '',
      'ta': '',
    },
    '492djmvz': {
      'en': '',
      'hi': '',
      'kn': '',
      'ta': '',
    },
    'bp69xl2n': {
      'en': '',
      'hi': '',
      'kn': '',
      'ta': '',
    },
    'duge1hne': {
      'en': '',
      'hi': '',
      'kn': '',
      'ta': '',
    },
    'busta0a7': {
      'en': '',
      'hi': '',
      'kn': '',
      'ta': '',
    },
    '3akedbv7': {
      'en': '',
      'hi': '',
      'kn': '',
      'ta': '',
    },
    'apretoan': {
      'en': '',
      'hi': '',
      'kn': '',
      'ta': '',
    },
    'kqmq55bi': {
      'en': '',
      'hi': '',
      'kn': '',
      'ta': '',
    },
    'f01zhz61': {
      'en': '',
      'hi': '',
      'kn': '',
      'ta': '',
    },
    'fzragi9l': {
      'en': '',
      'hi': '',
      'kn': '',
      'ta': '',
    },
    '8crq7v7x': {
      'en': '',
      'hi': '',
      'kn': '',
      'ta': '',
    },
    '7w0c4pxo': {
      'en': '',
      'hi': '',
      'kn': '',
      'ta': '',
    },
    'gsor3m6f': {
      'en': '',
      'hi': '',
      'kn': '',
      'ta': '',
    },
    '1mq2kuxq': {
      'en': '',
      'hi': '',
      'kn': '',
      'ta': '',
    },
    'wra947wr': {
      'en': '',
      'hi': '',
      'kn': '',
      'ta': '',
    },
    'jqylw5zo': {
      'en': '',
      'hi': '',
      'kn': '',
      'ta': '',
    },
  },
].reduce((a, b) => a..addAll(b));
