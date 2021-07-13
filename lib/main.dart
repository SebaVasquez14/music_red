import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:music_red_windows/pages/Main_Page.dart';
//import 'package:music_red_windows/pages/chat_page.dart';
import 'package:music_red_windows/pages/login_page.dart';
import 'package:music_red_windows/pages/profile_page.dart';
import 'package:music_red_windows/pages/register_page.dart';
import 'package:music_red_windows/pages/register_page_final.dart';
import 'package:music_red_windows/pages/settings_page.dart';
import 'package:music_red_windows/pages/success_page.dart';

import 'pages/chat_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Music Red',
      home: LoginPage(),
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
