import 'package:flutter/material.dart';

class AppLocalizations {
  final Locale locale;
  AppLocalizations(this.locale);

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const _strings = {
    'en': {
      'getStarted': 'Get Started',
      'signUp': 'Sign Up',
      'logIn': 'Log In',
      'email': 'Email',
      'enterEmail': 'Enter your Email',
      'password': 'Password',
      'enterPassword': 'Enter your password',
      'forgotPassword': 'Forgot password?',
      'alreadyHaveAccount': 'Already have an account? ',
      'dontHaveAccount': "Don't have an account? ",
      'home': 'Home',
      'asBigAs': 'As big as...',
      'connectToBaby': 'Connect to Baby',
      'journey': 'Journey',
      'firstKick': 'First kick',
      'level': 'Level',
      'firstKickDesc': 'Have you felt first kick?',
      'checkMood': 'Check Your Mood',
      'checkMoodDesc': 'See what your baby feels with you today?',
      'week': 'Week',
      'jobs': 'Jobs',
      'maternityWork': 'Working during maternity leave is possible',
      'comfortText': "You don't have to work unless you feel comfortable",
      'searchHint': 'Search',
      'newTab': 'New',
      'savedTab': 'Saved',
      'sentTab': 'Sent',
      'jobsAvailable': 'Jobs available',
      'hi': 'Hi',
      'tg': 'tg',
      'myStore': 'My Store',
      'shop': 'Shop',
      'yoga': 'Yoga',
      'topics': 'Topics',
      'allStores': 'All stores',
      'hospitalBag': 'Hospital bag',
      'newbornNeeds': 'Newborn needs',
      'breastFeeding': 'Breast feeding',
      'toConsult': 'To consult',
      'myBookings': 'My bookings',
      'searchDoctorHint': 'Search',
      'searchDoctorTitle': 'Search for the doctor you need',
      'doctorsInHospital': 'Doctors in your hospital',
      'checkup': 'Checkup',
    },
    'ru': {
      'getStarted': 'Начать',
      'signUp': 'Регистрация',
      'logIn': 'Войти',
      'email': 'Эл. почта',
      'enterEmail': 'Введите эл. почту',
      'password': 'Пароль',
      'enterPassword': 'Введите пароль',
      'forgotPassword': 'Забыли пароль?',
      'alreadyHaveAccount': 'Уже есть аккаунт? ',
      'dontHaveAccount': 'Нет аккаунта? ',
      'home': 'Главная',
      'asBigAs': 'Размером с...',
      'connectToBaby': 'Связь с малышом',
      'journey': 'Путешествие',
      'firstKick': 'Первый толчок',
      'level': 'Уровень',
      'firstKickDesc': 'Вы почувствовали первый толчок?',
      'checkMood': 'Проверь настроение',
      'checkMoodDesc': 'Что чувствует твой малыш сегодня?',
      'week': 'Неделя',
      'jobs': 'Работа',
      'maternityWork': 'Работа в декрете — это возможно',
      'comfortText': 'Работайте только когда вам комфортно',
      'searchHint': 'Поиск',
      'newTab': 'Новые',
      'savedTab': 'Сохранённые',
      'sentTab': 'Отправленные',
      'jobsAvailable': 'Доступные вакансии',
      'hi': 'Привет',
      'tg': 'тг',
      'myStore': 'Мой магазин',
      'shop': 'Магазин',
      'yoga': 'Йога',
      'topics': 'Темы',
      'allStores': 'Все магазины',
      'hospitalBag': 'Сумка в роддом',
      'newbornNeeds': 'Для новорождённых',
      'breastFeeding': 'Грудное вскармливание',
      'toConsult': 'Консультация',
      'myBookings': 'Мои записи',
      'searchDoctorHint': 'Поиск',
      'searchDoctorTitle': 'Найдите нужного врача',
      'doctorsInHospital': 'Врачи вашей больницы',
      'checkup': 'Чек-ап',
    },
    'kk': {
      'getStarted': 'Бастау',
      'signUp': 'Тіркелу',
      'logIn': 'Кіру',
      'email': 'Эл. пошта',
      'enterEmail': 'Эл. поштаңызды енгізіңіз',
      'password': 'Құпия сөз',
      'enterPassword': 'Құпия сөзді енгізіңіз',
      'forgotPassword': 'Құпия сөзді ұмыттыңыз ба?',
      'alreadyHaveAccount': 'Аккаунт бар ма? ',
      'dontHaveAccount': 'Аккаунт жоқ па? ',
      'home': 'Басты бет',
      'asBigAs': 'Мөлшері...',
      'connectToBaby': 'Нәрестемен байланыс',
      'journey': 'Сапар',
      'firstKick': 'Алғашқы қозғалыс',
      'level': 'Деңгей',
      'firstKickDesc': 'Алғашқы қозғалысты сезіндіңіз бе?',
      'checkMood': 'Көңіл-күйді тексеру',
      'checkMoodDesc': 'Бүгін нәрестеңіз не сезінеді?',
      'week': 'Апта',
      'jobs': 'Жұмыс',
      'maternityWork': 'Декреттегі жұмыс мүмкін',
      'comfortText': 'Ыңғайлы болғанда ғана жұмыс істе',
      'searchHint': 'Іздеу',
      'newTab': 'Жаңа',
      'savedTab': 'Сақталған',
      'sentTab': 'Жіберілген',
      'jobsAvailable': 'Қолжетімді жұмыстар',
      'hi': 'Сәлем',
      'tg': 'тг',
      'myStore': 'Менің дүкенім',
      'shop': 'Дүкен',
      'yoga': 'Йога',
      'topics': 'Тақырыптар',
      'allStores': 'Барлық дүкендер',
      'hospitalBag': 'Роддомға сөмке',
      'newbornNeeds': 'Жаңа туған нәрестеге',
      'breastFeeding': 'Емізу',
      'toConsult': 'Кеңес алу',
      'myBookings': 'Менің жазылуларым',
      'searchDoctorHint': 'Іздеу',
      'searchDoctorTitle': 'Қажетті дәрігерді табыңыз',
      'doctorsInHospital': 'Ауруханаңыздың дәрігерлері',
      'checkup': 'Тексеру',
    },
  };

  String get(String key) {
    final lang = locale.languageCode;
    return _strings[lang]?[key] ?? _strings['en']![key] ?? key;
  }

  // Convenience getters
  String get getStarted => get('getStarted');
  String get signUp => get('signUp');
  String get logIn => get('logIn');
  String get email => get('email');
  String get enterEmail => get('enterEmail');
  String get password => get('password');
  String get enterPassword => get('enterPassword');
  String get forgotPassword => get('forgotPassword');
  String get alreadyHaveAccount => get('alreadyHaveAccount');
  String get dontHaveAccount => get('dontHaveAccount');
  String get home => get('home');
  String get asBigAs => get('asBigAs');
  String get connectToBaby => get('connectToBaby');
  String get journey => get('journey');
  String get firstKick => get('firstKick');
  String get level => get('level');
  String get firstKickDesc => get('firstKickDesc');
  String get checkMood => get('checkMood');
  String get checkMoodDesc => get('checkMoodDesc');
  String get week => get('week');
  String get jobs => get('jobs');
  String get maternityWork => get('maternityWork');
  String get comfortText => get('comfortText');
  String get searchHint => get('searchHint');
  String get newTab => get('newTab');
  String get savedTab => get('savedTab');
  String get sentTab => get('sentTab');
  String get jobsAvailable => get('jobsAvailable');
  String get hi => get('hi');
  String get tg => get('tg');
  String get myStore => get('myStore');
  String get shop => get('shop');
  String get yoga => get('yoga');
  String get topics => get('topics');
  String get allStores => get('allStores');
  String get hospitalBag => get('hospitalBag');
  String get newbornNeeds => get('newbornNeeds');
  String get breastFeeding => get('breastFeeding');
  String get toConsult => get('toConsult');
  String get myBookings => get('myBookings');
  String get searchDoctorHint => get('searchDoctorHint');
  String get searchDoctorTitle => get('searchDoctorTitle');
  String get doctorsInHospital => get('doctorsInHospital');
  String get checkup => get('checkup');
}

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      ['en', 'ru', 'kk'].contains(locale.languageCode);

  @override
  Future<AppLocalizations> load(Locale locale) async =>
      AppLocalizations(locale);

  @override
  bool shouldReload(AppLocalizationsDelegate old) => false;
}
