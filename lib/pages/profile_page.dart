import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_red_windows/componentes/nav_bar_superior.dart';
import 'package:music_red_windows/componentes/profile_bot.dart';
import 'package:music_red_windows/componentes/profile_mid.dart';
import 'package:music_red_windows/componentes/profile_top.dart';
import 'package:music_red_windows/utils/responsive.dart';

class ProfilePage extends StatefulWidget {
  static const routeName = 'profile_page';

  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);

    return SafeArea(
      child: Scaffold(
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: SingleChildScrollView(
            child: Container(
                width: responsive.width,
                height: responsive.height,
                color: Colors.red[900],
                child: Column(
                  children: [
                    NavBarSuperior(),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: responsive.wp(90),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: Column(
                        children: [
                          ProfileTop(),
                          Divider(
                            thickness: 1.5,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ProfileMid(),
                          Divider(
                            thickness: 1.5,
                          ),
                          ProfileBot()
                        ],
                      ),
                    )
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
