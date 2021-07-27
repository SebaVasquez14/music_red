import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
                  Header(),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                          height: responsive.hp(80),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [Colors.black87, Color(0xFFB71C1C)],
                          ))),
                      Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: responsive.wp(1),
                              ),
                              AvatarButton(
                                label: "Subir foto de Perfil",
                              ),
                              SizedBox(
                                width: responsive.wp(3),
                              ),
                              Text(
                                  "Javier Ignacio Robin Carrasco\n Temuco, Chile",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.alata(
                                      color: Colors.white,
                                      fontSize: responsive.dp(2)))
                            ],
                          ),
                          SizedBox(
                            height: responsive.hp(5),
                          ),
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
