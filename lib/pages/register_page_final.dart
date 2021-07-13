import 'package:flutter/material.dart';
import 'package:music_red_windows/componentes/avatar_button.dart';
import 'package:music_red_windows/componentes/header.dart';
import 'package:music_red_windows/componentes/register_final_form.dart';
import 'package:music_red_windows/componentes/register_form.dart';
import 'package:music_red_windows/utils/responsive.dart';

class RegisterPageFinal extends StatefulWidget {
  static const routeName = 'register_final';
  @override
  _RegisterPageFinalState createState() => _RegisterPageFinalState();
}

class _RegisterPageFinalState extends State<RegisterPageFinal> {
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
              width: double.infinity,
              height: responsive.height,
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    height: responsive.hp(10),
                    width: responsive.wp(100),
                    decoration: BoxDecoration(color: Colors.red[900]),
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      "¡Bienvenido a MusicRed!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white, fontSize: responsive.dp(3)),
                    ),
                  ),
                  Container(
                    height: responsive.hp(10),
                    width: responsive.wp(100),
                    decoration: BoxDecoration(color: Colors.black87),
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      "Terminando de Crear tu Perfil...",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white, fontSize: responsive.dp(2.5)),
                    ),
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.network(
                        "https://images-na.ssl-images-amazon.com/images/I/81o5ioVTEML._AC_SL1500_.jpg",
                        //width: responsive.wp(100),
                        height: responsive.hp(80),
                        fit: BoxFit.cover,
                      ),
                    Column(
                      children: [
                          Row(children: [
                              AvatarButton(label: "Subir foto de Perfil",),
                            SizedBox(width: responsive.wp(3),),
                            Text("Javier Ignacio Robin Carrasco\n Temuco, Chile",
                            textAlign: TextAlign.center,
                              style: TextStyle(
                              color: Colors.white,
                              fontSize: responsive.dp(2)
                            ),
                            )
                          ],
                          ),
                        SizedBox(height: responsive.hp(5),),
                        RegisterFinalForm()
                      ],
                    )
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
