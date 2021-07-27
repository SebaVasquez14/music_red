import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ComboBox extends StatefulWidget {
  const ComboBox({Key? key}) : super(key: key);

  @override
  _ComboBoxState createState() => _ComboBoxState();
}

class _ComboBoxState extends State<ComboBox> {
  @override
  Widget build(BuildContext context) {
    var vista;
    var lista = ["Hombre", "Mujer", "Prefiero no decirlo"];

    return DropdownButton<String>(
      value: vista,
      underline: SizedBox.shrink(),
      dropdownColor: Colors.red[900],
      isExpanded: true,
      hint: Text(
        "Seleccione un género",
        style: GoogleFonts.alata(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
      items: lista.map<DropdownMenuItem<String>>((String a) {
        return DropdownMenuItem<String>(value: a, child: Text(a));
      }).toList(),
      onChanged: (value) {
        setState(() {
          vista = value!.toString();
          print(vista);
        });
      },
    );
  }
}
