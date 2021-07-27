import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DropDownClass extends StatefulWidget {
  String hint = "";

  DropDownClass(this.hint);
  @override
  _DropDownClassState createState() => _DropDownClassState();
}

class _DropDownClassState extends State<DropDownClass> {
  var _chosenValue;
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      isExpanded: true,
      value: _chosenValue,
      underline: SizedBox.shrink(),
      dropdownColor: Colors.red[900],
      //elevation: 5,
      style: GoogleFonts.alata(
        color: Colors.white,
        fontSize: 16,
      ),

      items: <String>['Hombre', 'Mujer', 'Prefiero no decirlo']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      hint: Text(
        widget.hint,
        style: GoogleFonts.alata(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
      onChanged: (value) {
        setState(() {
          _chosenValue = value!.toString();
        });
      },
    );
  }
}
