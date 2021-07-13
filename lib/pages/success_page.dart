import 'package:flutter/material.dart';
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
                      Stack(
                        children: [
                          Center(
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.red[900],
                                  borderRadius: BorderRadius.circular(6)),
                              child: Container(
                                decoration: BoxDecoration(
                                    //shape: BoxShape.circle,
                                    color: Colors.black54,
                                    borderRadius: BorderRadius.circular(6)),
                                child: Text(
                                  '¡TU CUENTA HA SIDO CREADA CON ÉXITO!',
                                  style: TextStyle(
                                      fontSize: responsive.dp(2),
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          Column(children: [
                            SizedBox(height: 90,),
                            Center(
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, 'main_page');
                                  },
                                  style: ButtonStyle(
                                      padding: MaterialStateProperty.all(
                                          EdgeInsets.symmetric(
                                              horizontal: responsive.wp(10))),
                                      backgroundColor: MaterialStateProperty.all(
                                          Colors.red[900])),
                                  child: Text(
                                    "COMENZAR",
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
