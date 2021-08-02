import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_red_windows/componentes/header.dart';
import 'package:music_red_windows/utils/responsive.dart';

class SuccessPage extends StatelessWidget {
  static const routeName = 'success_page';

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
                          Container(
                              height: 200,
                              width: 200,
                              child: Image.asset('assets/check.png')),
                          SizedBox(height: responsive.hp(7)),
                          Center(
                            child: Text(
                              '¡Tu cuenta ha sido creada con éxito!',
                              style: GoogleFonts.lora(
                                  fontSize: responsive.dp(2),
                                  color: Colors.white),
                            ),
                          ),
                          Column(children: [
                            SizedBox(
                              height: 90,
                            ),
                            Center(
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, 'main_page');
                                  },
                                  style: ButtonStyle(
                                      padding: MaterialStateProperty.all(
                                          EdgeInsets.symmetric(
                                              horizontal: responsive.wp(10))),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.red[900])),
                                  child: Text(
                                    "Comenzar",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: responsive.dp(1.8)),
                                  )),
                            ),
                          ])
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
