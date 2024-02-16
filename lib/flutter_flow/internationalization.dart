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
  // test333
  {
    'kjdzqw4y': {
      'en': 'Page Title',
      'hi': '',
      'kn': '',
      'ta': '',
    },
    'slyb6plc': {
      'en': 'Home',
      'hi': 'स्कूल को लिखें',
      'kn': 'ಶಾಲೆಗೆ ಬರೆಯಿರಿ',
      'ta': 'பள்ளிக்கு எழுதுங்கள்',
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
  // drawerrrrrrrr2021
  {
    '9jgdel1g': {
      'en': 'Academic Session: 2023 - 2024',
      'hi': 'शैक्षणिक सत्र: 2023 - 2024',
      'kn': 'ಶೈಕ್ಷಣಿಕ ಅವಧಿ: 2023 - 2024',
      'ta': 'கல்வி அமர்வு: 2023 - 2024',
    },
    'lyi3pgnk': {
      'en': 'Dashboard',
      'hi': 'डैशबोर्ड',
      'kn': 'ಡ್ಯಾಶ್‌ಬೋರ್ಡ್',
      'ta': 'டாஷ்போர்டு',
    },
    'hb3qfsga': {
      'en': 'Profile',
      'hi': 'प्रोफ़ाइल',
      'kn': 'ಪ್ರೊಫೈಲ್',
      'ta': 'சுயவிவரம்',
    },
    've9hqs4l': {
      'en': 'Teachers',
      'hi': 'शिक्षकों की',
      'kn': 'ಶಿಕ್ಷಕರು',
      'ta': 'ஆசிரியர்கள்',
    },
    '2wimqo1m': {
      'en': 'Time Table',
      'hi': 'समय सारणी',
      'kn': 'ಟೈಮ್ ಟೇಬಲ್',
      'ta': 'நேர அட்டவணை',
    },
    'nkfs7hg7': {
      'en': 'Homeworks',
      'hi': 'Homeworks',
      'kn': 'ಮನೆಕೆಲಸಗಳು',
      'ta': 'வீட்டுப்பாடங்கள்',
    },
    'rvqoozvs': {
      'en': 'Events',
      'hi': 'आयोजन',
      'kn': 'ಕಾರ್ಯಕ್ರಮಗಳು',
      'ta': 'நிகழ்வுகள்',
    },
    'gsuvs11v': {
      'en': 'Academic Subjects',
      'hi': 'शैक्षणिक विषय',
      'kn': 'ಶೈಕ್ಷಣಿಕ ವಿಷಯಗಳು',
      'ta': 'கல்விப் பாடங்கள்',
    },
    'rii7uzzz': {
      'en': 'Fees History',
      'hi': 'फीस इतिहास',
      'kn': 'ಶುಲ್ಕ ಇತಿಹಾಸ',
      'ta': 'கட்டண வரலாறு',
    },
    '7qwur7j1': {
      'en': 'Bus Information',
      'hi': 'बस सूचना',
      'kn': 'ಬಸ್ ಮಾಹಿತಿ',
      'ta': 'பேருந்து தகவல்',
    },
    'jc43wvcs': {
      'en': 'Write To School',
      'hi': 'स्कूल को लिखें',
      'kn': 'ಶಾಲೆಗೆ ಬರೆಯಿರಿ',
      'ta': 'பள்ளிக்கு எழுதுங்கள்',
    },
    'n3rddy98': {
      'en': 'Notifications / Alerts',
      'hi': 'सूचनाएं/अलर्ट',
      'kn': 'ಅಧಿಸೂಚನೆಗಳು / ಎಚ್ಚರಿಕೆಗಳು',
      'ta': 'அறிவிப்புகள் / எச்சரிக்கைகள்',
    },
    'zc87i52c': {
      'en': 'Settings',
      'hi': 'समायोजन',
      'kn': 'ಸಂಯೋಜನೆಗಳು',
      'ta': 'அமைப்புகள்',
    },
    '45mxh9ln': {
      'en': 'LOGOUT',
      'hi': 'लॉग आउट',
      'kn': 'ಲಾಗ್ ಔಟ್',
      'ta': 'வெளியேறு',
    },
    'ywncvrej': {
      'en': 'Home',
      'hi': '',
      'kn': '',
      'ta': '',
    },
  },
  // drawer1
  {
    'pkd4ccir': {
      'en': 'Account Options',
      'hi': '',
      'kn': '',
      'ta': '',
    },
    'f8pqphcw': {
      'en': 'Randy Peterson',
      'hi': '',
      'kn': '',
      'ta': '',
    },
    'xpaiqawd': {
      'en': 'randy.p@domainname.com',
      'hi': '',
      'kn': '',
      'ta': '',
    },
    'i99dkrft': {
      'en': 'My Account',
      'hi': '',
      'kn': '',
      'ta': '',
    },
    '3k6jzvo8': {
      'en': 'Settings',
      'hi': '',
      'kn': '',
      'ta': '',
    },
    'nktma9a2': {
      'en': 'Billing Details',
      'hi': '',
      'kn': '',
      'ta': '',
    },
    'tz13yfqu': {
      'en': 'Free Plan',
      'hi': '',
      'kn': '',
      'ta': '',
    },
    'zt6rx8wp': {
      'en': '45,200 actions',
      'hi': '',
      'kn': '',
      'ta': '',
    },
    '5h23jfe3': {
      'en': 'Upgrade',
      'hi': '',
      'kn': '',
      'ta': '',
    },
    'bl6v99ze': {
      'en': 'Log out',
      'hi': '',
      'kn': '',
      'ta': '',
    },
  },
  // NavBar1
  {
    'uspl795o': {
      'en': 'Home Work',
      'hi': '',
      'kn': '',
      'ta': '',
    },
    'q7fmoc2o': {
      'en': 'Notice Board',
      'hi': '',
      'kn': '',
      'ta': '',
    },
    'jn9nvl3b': {
      'en': 'Dashboard',
      'hi': '',
      'kn': '',
      'ta': '',
    },
    'ncy9ggt9': {
      'en': 'Write to school',
      'hi': '',
      'kn': '',
      'ta': '',
    },
    'g35zx542': {
      'en': 'Fees history',
      'hi': '',
      'kn': '',
      'ta': '',
    },
  },
  // drawer2020
  {
    'x2wrq69n': {
      'en': 'Academic Session: 2023 - 2024',
      'hi': 'शैक्षणिक सत्र: 2023 - 2024',
      'kn': 'ಶೈಕ್ಷಣಿಕ ಅವಧಿ: 2023 - 2024',
      'ta': 'கல்வி அமர்வு: 2023 - 2024',
    },
    'kmamlmre': {
      'en': 'Dashboard',
      'hi': 'डैशबोर्ड',
      'kn': 'ಡ್ಯಾಶ್‌ಬೋರ್ಡ್',
      'ta': 'டாஷ்போர்டு',
    },
    'pmi74ctr': {
      'en': 'Profile',
      'hi': 'प्रोफ़ाइल',
      'kn': 'ಪ್ರೊಫೈಲ್',
      'ta': 'சுயவிவரம்',
    },
    'm7ekk9a1': {
      'en': 'Teachers',
      'hi': 'शिक्षकों की',
      'kn': 'ಶಿಕ್ಷಕರು',
      'ta': 'ஆசிரியர்கள்',
    },
    '0y74qubz': {
      'en': 'Time Table',
      'hi': 'समय सारणी',
      'kn': 'ಟೈಮ್ ಟೇಬಲ್',
      'ta': 'நேர அட்டவணை',
    },
    'ck45v1fk': {
      'en': 'Homeworks',
      'hi': 'Homeworks',
      'kn': 'ಮನೆಕೆಲಸಗಳು',
      'ta': 'வீட்டுப்பாடங்கள்',
    },
    'x57qr8f0': {
      'en': 'Events',
      'hi': 'आयोजन',
      'kn': 'ಕಾರ್ಯಕ್ರಮಗಳು',
      'ta': 'நிகழ்வுகள்',
    },
    'h7vb3t6k': {
      'en': 'Academic Subjects',
      'hi': 'शैक्षणिक विषय',
      'kn': 'ಶೈಕ್ಷಣಿಕ ವಿಷಯಗಳು',
      'ta': 'கல்விப் பாடங்கள்',
    },
    'okhz350x': {
      'en': 'Fees History',
      'hi': 'फीस इतिहास',
      'kn': 'ಶುಲ್ಕ ಇತಿಹಾಸ',
      'ta': 'கட்டண வரலாறு',
    },
    'sc2j1txo': {
      'en': 'Bus Information',
      'hi': 'बस सूचना',
      'kn': 'ಬಸ್ ಮಾಹಿತಿ',
      'ta': 'பேருந்து தகவல்',
    },
    'hfc0wh70': {
      'en': 'Write To School',
      'hi': 'स्कूल को लिखें',
      'kn': 'ಶಾಲೆಗೆ ಬರೆಯಿರಿ',
      'ta': 'பள்ளிக்கு எழுதுங்கள்',
    },
    'kp6dm6b7': {
      'en': 'Notifications / Alerts',
      'hi': 'सूचनाएं/अलर्ट',
      'kn': 'ಅಧಿಸೂಚನೆಗಳು / ಎಚ್ಚರಿಕೆಗಳು',
      'ta': 'அறிவிப்புகள் / எச்சரிக்கைகள்',
    },
    'ltm3cz48': {
      'en': 'Settings',
      'hi': 'समायोजन',
      'kn': 'ಸಂಯೋಜನೆಗಳು',
      'ta': 'அமைப்புகள்',
    },
    't1abq2c6': {
      'en': 'LOGOUT',
      'hi': 'लॉग आउट',
      'kn': 'ಲಾಗ್ ಔಟ್',
      'ta': 'வெளியேறு',
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
