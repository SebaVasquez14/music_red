import 'package:flutter/material.dart';
import 'package:music_red_windows/componentes/nav_bar_superior.dart';
import 'package:music_red_windows/utils/responsive.dart';

class SettingsPage extends StatefulWidget {
  static const routeName = 'settings_page';

  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
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
                color: Colors.white70,
                child: Column(
                  children: [
                    NavBarSuperior(),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.black54)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.public,
                                color: Colors.black54,
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Idioma",
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: responsive.dp(2.5)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.black54)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.color_lens_outlined,
                                color: Colors.black54,
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Color App",
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: responsive.dp(2.5)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.black54)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.font_download,
                                color: Colors.black54,
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Fuente Letra",
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: responsive.dp(2.5)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.black54)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.data_usage,
                                color: Colors.black54,
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Ahorro de Datos",
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: responsive.dp(2.5)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.black54)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.notifications_none_outlined,
                                color: Colors.black54,
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Notificaciones",
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: responsive.dp(2.5)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.black54)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.menu_book,
                                color: Colors.black54,
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Licencias y Condiciones de Uso",
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: responsive.dp(2.5)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.black54)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.logout_outlined,
                                color: Colors.black54,
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, 'login');
                                },
                                child: Text(
                                  "Cerrar Sesión",
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: responsive.dp(2.5)),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
