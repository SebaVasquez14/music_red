import 'package:flutter/material.dart';
import 'package:music_red_windows/componentes/buscador.dart';
import 'package:music_red_windows/componentes/lista_imagenes.dart';
import 'package:music_red_windows/componentes/lista_usuarios.dart';
import 'package:music_red_windows/componentes/nav_bar_superior.dart';
import 'package:music_red_windows/utils/responsive.dart';

class Main_Page extends StatefulWidget {
  static const routeName = 'main_page';

  @override
  _Main_PageState createState() => _Main_PageState();
}

class _Main_PageState extends State<Main_Page> {
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);

    return WillPopScope(
      onWillPop: () async => false,
      child: SafeArea(
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
                        height: 20,
                      ),
                      Buscador(),
                      Divider(
                        height: 5,
                        color: Colors.black,
                      ),
                      ListaUsuarios(
                        size: 120,
                      )
                    ],
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
