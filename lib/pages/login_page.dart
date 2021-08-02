import 'package:flutter/material.dart';
import 'package:music_red_windows/componentes/header.dart';
import 'package:music_red_windows/componentes/login_form.dart';
import 'package:music_red_windows/models/mysql.dart';
import 'package:music_red_windows/utils/responsive.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatefulWidget {
  static const routeName = 'login';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  var db = new Mysql();
  //var correo_usuario = '';
  //var contraseña_usuario = '';

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
              color: Colors.white,
              child: Column(
                children: [
                  Header(),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      //  Image.network("https://images-na.ssl-images-amazon.com/images/I/81o5ioVTEML._AC_SL1500_.jpg",
                      //   //width: responsive.wp(100),
                      //     height: responsive.hp(80),
                      //     fit: BoxFit.cover,

                      //   ),
                      Container(
                          height: responsive.hp(80),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [Colors.black87, Color(0xFFB71C1C)],
                          ))),
                      LoginForm()
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
