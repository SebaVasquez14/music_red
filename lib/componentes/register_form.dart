import 'package:flutter/material.dart';
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

    return Positioned(
      bottom: 30,
      child: Container(
        constraints: BoxConstraints(maxWidth: responsive.isTablet ? 430 : 360),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              InputText(
                label: "NOMBRES",
                keyboardType: TextInputType.emailAddress,
                fontSize: responsive.dp(responsive.isTablet ? 1.2 : 1.4),
                onChanged: (text) {},
                validator: (text) {
                  if (text.trim().length < 5) {
                    return /*"INGRESE UN NOMBRE VÁLIDO"*/;
                  }
                  return null;
                },
              ),
              SizedBox(
                height: responsive.dp(2),
              ),
              InputText(
                label: "APELLIDOS",
                keyboardType: TextInputType.emailAddress,
                fontSize: responsive.dp(responsive.isTablet ? 1.2 : 1.4),
                onChanged: (text) {},
                validator: (text) {
                  if (text.trim().length < 5) {
                    return /*"INGRESE APELLIDOS VÁLIDOS"*/;
                  }
                  return null;
                },
              ),
              SizedBox(
                height: responsive.dp(2),
              ),
              InputText(
                label: "CORREO",
                keyboardType: TextInputType.emailAddress,
                fontSize: responsive.dp(responsive.isTablet ? 1.2 : 1.4),
                onChanged: (text) {
                  _email = text;
                },
                validator: (text) {
                  if (!text.contains("@")) {
                    return /*"Invalid email"*/;
                  }
                  return null;
                },
              ),
              SizedBox(
                height: responsive.dp(2),
              ),
              InputText(
                label: "CONTRASEÑA",
                keyboardType: TextInputType.visiblePassword,
                fontSize: responsive.dp(responsive.isTablet ? 1.2 : 1.4),
                onChanged: (text) {
                  _password = text;
                },
                validator: (text) {
                  if (text.trim().length < 6) {
                    return/* "CONTRASEÑA INVÁLIDA"*/;
                  }
                  return null;
                },
              ),
              SizedBox(
                height: responsive.dp(2),
              ),
              InputText(
                label: "REPETIR CONTRASEÑA",
                keyboardType: TextInputType.visiblePassword,
                fontSize: responsive.dp(responsive.isTablet ? 1.2 : 1.4),
                onChanged: (text) {
                  _password = text;
                },
                validator: (text) {
                  if (text.trim().length < 6) {
                    return /*"CONTRASEÑA INVÁLIDA"*/;
                  }
                  return null;
                },
              ),
              SizedBox(
                height: responsive.dp(5),
              ),
              //ComboBox(),
              TextButton(
                  onPressed: (){
                    Navigator.pushNamed(context, 'register_final');
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
      ),
    );
  }
}
