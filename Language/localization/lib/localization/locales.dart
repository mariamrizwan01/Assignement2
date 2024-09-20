import 'package:flutter_localization/flutter_localization.dart';

const List<MapLocale> LOCALES = [
  MapLocale("en", LocaleData.EN),
  MapLocale("zh", LocaleData.ZH),
  MapLocale("hi", LocaleData.HI),
  MapLocale("ar", LocaleData.AR),
  MapLocale("de", LocaleData.DE),
];
mixin LocaleData {
  static const String title = "title";
  static const String body = "body";

  static const Map<String, dynamic> EN = {
    title: "Localization",
    body: 'Welcome to this locatization Flutter application %a'
  };
  static const Map<String, dynamic> DE = {
    title: 'Lokalisterung',
    body: 'Willkommen bei dieser Flutter-Ortungsanwendung %a',
  };
  static const Map<String, dynamic> HI = {
    title: 'स्थानीयकरण',
    body: 'इस स्थानीकरण फ़्लटर एप्लिकेशन में आपका स्वागत है %a',
  };
  static const Map<String, dynamic> AR = {
    title: 'الموقع',
    body: 'مرحبًا بك في تطبيق Flutter لتحديد الموقع %a',
  };

  static const Map<String, dynamic> ZH = {
    title: '本土化',
    body: '歡迎使用這個定位 Flutter 應用程式 %a',
  };
}