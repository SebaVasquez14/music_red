import 'package:flutter/material.dart';
import 'package:music_red_windows/componentes/input_text.dart';
import 'package:music_red_windows/utils/responsive.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  GlobalKey<FormState> _formKey = GlobalKey();

  String _email = "", _password = "";

  _submit() {
    final bool isOk = _formKey.currentState!.validate();

    if (isOk) {}
  }

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);

    return Positioned(
      bottom: 30,
      child: Container(
        constraints: BoxConstraints(maxWidth: responsive.isTablet ? 430 : 360),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                    labelText: "Correo",
                    labelStyle: TextStyle(color: Colors.white)),
              ),

              /*InputText(
                label: "CORREO",
                keyboardType: TextInputType.emailAddress,
                fontSize: responsive.dp(responsive.isTablet ? 1.2 : 1.4),
                onChanged: (text) {
                  _email = text;
                },
                validator: (text) {
                  if (!text.contains("@")) {
                    return */ /*"CORREO INVALIDO"*/ /*;
                  }
                  return null;
                },
              ),*/

              SizedBox(
                height: responsive.dp(2),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.white))),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        obscureText: true,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        decoration: InputDecoration(
                            labelText: "Contraseña",
                            labelStyle: TextStyle(color: Colors.white)),
                      ),
                    ),
                    FlatButton(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      onPressed: () {},
                      child: Text(
                        "Olvide mi contraseña",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: responsive.dp(1.5)),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: responsive.dp(5),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'main_page');
                },
                child: Text(
                  "INICIAR SESIÓN",
                  style: TextStyle(
                      color: Colors.white, fontSize: responsive.dp(1.5)),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red[900],
                  shadowColor: Colors.black38
                ),
              ),
              SizedBox(
                height: responsive.dp(3),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'register');
                },
                child: Text(
                  "CREAR CUENTA",
                  style: TextStyle(
                      color: Colors.white, fontSize: responsive.dp(1.5)),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.red[900],
                    shadowColor: Colors.black38
                ),
              ),
              SizedBox(
                height: responsive.dp(15),
              )
            ],
          ),
        ),
      ),
    );
  }
}
