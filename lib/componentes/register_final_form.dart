import 'package:flutter/material.dart';
import 'package:music_red_windows/componentes/input_text.dart';
import 'package:music_red_windows/utils/responsive.dart';

class RegisterFinalForm extends StatefulWidget {
  @override
  _RegisterFinalFormState createState() => _RegisterFinalFormState();
}

class _RegisterFinalFormState extends State<RegisterFinalForm> {
  GlobalKey<FormState> _formKey = GlobalKey();

  String _genero = "", _instrumentos = '', _estilos = "", _bandas = "";

  _submit() {
    final bool isOk = _formKey.currentState!.validate();

    //esto sucede si las validaciones están OK
    if (isOk) {}
  }

  String _validator(String value) {
    if (value.isEmpty) {
      return 'Please enter some text';
    }
    return 'Inserte un email válido';
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
            InputText(
              label: "GÉNERO",
              keyboardType: TextInputType.text,
              fontSize: responsive.dp(responsive.isTablet ? 1.2 : 1.4),
              onChanged: (text) {
                _genero = text;
              },
              validator: (text) => _validator(text),
            ),
            SizedBox(
              height: responsive.dp(2),
            ),
            InputText(
              label: "INSTRUMENTOS",
              keyboardType: TextInputType.text,
              fontSize: responsive.dp(responsive.isTablet ? 1.2 : 1.4),
              onChanged: (text) {},
              validator: (text) {
                if (text.isEmpty) {
                  return /*"Ingrese al menos un instrumento"*/;
                }
                return null;
              },
            ),
            SizedBox(
              height: responsive.dp(2),
            ),
            InputText(
              label: "ESTILOS MUSICALES",
              keyboardType: TextInputType.emailAddress,
              fontSize: responsive.dp(responsive.isTablet ? 1.2 : 1.4),
              onChanged: (text) {
                _estilos = text;
              },
              validator: (text) {
                if (text.isEmpty) {
                  return /*"Ingrese al menos un estilo"*/;
                }
                return null;
              },
            ),
            SizedBox(
              height: responsive.dp(2),
            ),
            InputText(
              label: "BANDAS O ARTISTAS DE TU GUSTO",
              keyboardType: TextInputType.visiblePassword,
              fontSize: responsive.dp(responsive.isTablet ? 1.2 : 1.4),
              onChanged: (text) {
                _bandas = text;
              },
              validator: (text) {
                if (text.isEmpty) {
                  return /*"Ingrese al menos una banda/artista"*/;
                }
                return null;
              },
            ),
            SizedBox(
              height: responsive.dp(5),
            ),
            //ComboBox(),
            TextButton(
                onPressed: () {
                  //if(_formKey.currentState.validate())

                  Navigator.pushNamed(context, 'success_page');
                },
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: responsive.wp(10))),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.red[900])),
                child: Text(
                  "FINALIZAR",
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
