import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final String label;

  final TextInputType keyboardType;

  final bool obscureText, borderEnabled;

  final double fontSize;

  final void Function(String text) onChanged;

  final void Function(String text) validator;

  InputText(
      {this.label = "",
      this.keyboardType = TextInputType.text,
      this.obscureText = false,
      this.borderEnabled = true,
      this.fontSize = 15,
      required this.onChanged,
        required this.validator
      });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      obscureText: obscureText,
      onChanged: onChanged,
      style: TextStyle(fontSize: fontSize),



      decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 5),
          // ? == si la propiedad es igual a true    : == sino
          enabledBorder: this.borderEnabled
              ? UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white))
              : InputBorder.none,
          labelText: label,
          labelStyle:
              TextStyle(color: Colors.white, fontWeight: FontWeight.w500)),
    );
  }
}