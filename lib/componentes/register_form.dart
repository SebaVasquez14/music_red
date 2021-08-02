import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_red_windows/componentes/input_text.dart';
import 'package:music_red_windows/utils/responsive.dart';

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  GlobalKey<FormState> _formKey = GlobalKey();

  String _nombre = "", _apellidos = '', _email = "", _password = "";

  _submit() {
    final bool isOk = _formKey.currentState!.validate();

    //esto sucede si las validaciones están OK
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
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(color: Colors.white),
              onChanged: (text) {},
              validator: (text) {
                if (text!.trim().length < 5) {
                  return "Ingrese un nombre válido";
                }
                return null;
              },
              decoration: InputDecoration(
                  labelText: "Nombres",
                  labelStyle: GoogleFonts.alata(
                    color: Colors.white,
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: Colors.white))),
            ),
            SizedBox(
              height: responsive.dp(2),
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(color: Colors.white),
              onChanged: (text) {},
              validator: (text) {
                if (text!.trim().length < 5) {
                  return "Ingrese un apellido válido";
                }
                return null;
              },
              decoration: InputDecoration(
                  labelText: "Apellidos",
                  labelStyle: GoogleFonts.alata(
                    color: Colors.white,
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(20)))),
            ),
            SizedBox(
              height: responsive.dp(2),
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              onChanged: (text) {
                _email = text;
              },
              validator: (text) {
                if (!text!.contains("@")) {
                  return "Email inválido";
                }
                return null;
              },
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  labelText: "Correo",
                  labelStyle: GoogleFonts.alata(color: Colors.white),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(20)))),
            ),
            SizedBox(
              height: responsive.dp(2),
            ),
            TextFormField(
              keyboardType: TextInputType.visiblePassword,
              style: TextStyle(color: Colors.white),
              onChanged: (text) {
                _password = text;
              },
              validator: (text) {
                if (text!.trim().length < 6) {
                  return "CONTRASEÑA INVÁLIDA";
                }
                return null;
              },
              decoration: InputDecoration(
                  labelText: "Contraseña",
                  labelStyle: GoogleFonts.alata(
                    color: Colors.white,
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: Colors.white))),
            ),
            SizedBox(
              height: responsive.dp(2),
            ),
            TextFormField(
              keyboardType: TextInputType.visiblePassword,
              onChanged: (text) {
                _password = text;
              },
              validator: (text) {
                if (text!.trim().length < 6) {
                  return "Contraseña inválida";
                }
                return null;
              },
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  labelText: "Repetir Contraseña",
                  labelStyle: GoogleFonts.alata(
                    color: Colors.white,
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(20)))),
            ),
            SizedBox(
              height: responsive.dp(5),
            ),
            //ComboBox(),
            TextButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.pushNamed(context, 'register_final');
                  }
                },
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: responsive.wp(10))),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.red[900])),
                child: Text(
                  "SIGUIENTE",
                  style: TextStyle(
                      color: Colors.white, fontSize: responsive.dp(1.8)),
                )),
            SizedBox(
              height: responsive.dp(10),
            )
          ],
        ),
      ),
    );
  }
}
