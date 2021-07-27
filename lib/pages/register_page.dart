import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:music_red_windows/componentes/header.dart';
import 'package:music_red_windows/componentes/register_form.dart';
import 'package:music_red_windows/utils/responsive.dart';

class RegisterPage extends StatefulWidget {
  static const routeName = 'register';

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);

    final double pinkSize = responsive.wp(88);
    final double orangeSize = responsive.wp(57);

    return SafeArea(
      child: Scaffold(
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              height: responsive.height,
              color: Colors.white,
              child: Column(
                children: [
                  Header(),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      // Image.network(
                      //   "https://images-na.ssl-images-amazon.com/images/I/81o5ioVTEML._AC_SL1500_.jpg",
                      //   //width: responsive.wp(100),
                      //   height: responsive.hp(80),
                      //   fit: BoxFit.cover,
                      // ),
                      Container(
                          height: responsive.hp(80),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [Colors.black87, Color(0xFFB71C1C)],
                          ))),
                      RegisterForm()
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
