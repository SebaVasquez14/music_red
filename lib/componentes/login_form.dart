import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_red_windows/componentes/input_text.dart';
import 'package:music_red_windows/utils/responsive.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  GlobalKey<FormState> _formKey = GlobalKey();

  String _email = "", _password = "";

  TextEditingController emailCtrl = new TextEditingController();
  TextEditingController passCtrl = new TextEditingController();

  _submit() {
    final bool isOk = _formKey.currentState!.validate();

    if (isOk) {}
  }

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);

    return Container(
      constraints: BoxConstraints(maxWidth: responsive.isTablet ? 430 : 360),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              validator: (text) {
                if (!text!.contains("@")) {
                  return "Email invalido";
                }
                return null;
              },
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                labelText: "Correo",
                labelStyle: TextStyle(color: Colors.white),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
              ),
            ),
            SizedBox(
              height: responsive.dp(2),
            ),
            TextFormField(
              validator: (text) {
                if (text!.length > 6) {
                  return null;
                } else {
                  return 'La contraseña no debe ser más larga que 6 caracteres.';
                }
              },
              obscureText: true,
              style: TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                labelText: "Contraseña",
                labelStyle: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: responsive.dp(5),
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.pushNamed(context, 'main_page');
                }
              },
              child: Text(
                "INICIAR SESIÓN",
                style: TextStyle(
                    color: Colors.white, fontSize: responsive.dp(1.5)),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Colors.indigo[900], shadowColor: Colors.black38),
            ),
            Divider(
              thickness: 3,
              height: 30,
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
                  primary: Colors.indigo[900], shadowColor: Colors.black38),
            ),
            SizedBox(
              height: responsive.dp(15),
            )
          ],
        ),
      ),
    );
  }
}
