import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:music_red_windows/pages/Main_Page.dart';
import 'package:music_red_windows/pages/introduction_page.dart';
//import 'package:music_red_windows/pages/chat_page.dart';
import 'package:music_red_windows/pages/login_page.dart';
import 'package:music_red_windows/pages/profile_page.dart';
import 'package:music_red_windows/pages/register_page.dart';
import 'package:music_red_windows/pages/register_page_final.dart';
import 'package:music_red_windows/pages/settings_page.dart';
import 'package:music_red_windows/pages/success_page.dart';

import 'pages/chat_page.dart';

void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final introData = GetStorage();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    introData.writeIfNull("iniciado", false);
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Music Red',
      home: introData.read("iniciado") ? LoginPage() : Introduction_page(),
      theme: ThemeData(primaryColor: Colors.white),
      routes: {
        RegisterPage.routeName: (_) => RegisterPage(),
        LoginPage.routeName: (_) => LoginPage(),
        RegisterPageFinal.routeName: (_) => RegisterPageFinal(),
        SuccessPage.routeName: (_) => SuccessPage(),
        Main_Page.routeName: (_) => Main_Page(),
        SettingsPage.routeName: (_) => SettingsPage(),
        ProfilePage.routeName: (_) => ProfilePage(),
        ChatPage.routeName: (_) => ChatPage()
      },
    );
  }
}
