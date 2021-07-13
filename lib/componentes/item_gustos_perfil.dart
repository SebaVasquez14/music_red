import 'package:flutter/material.dart';
import 'package:music_red_windows/utils/responsive.dart';

class ItemGustosPerfil extends StatelessWidget {
  String label;

  ItemGustosPerfil({this.label = ""});

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);

    return SizedBox(
      height: responsive.hp(3),
      width: responsive.dp(10),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          label,
          style: TextStyle(color: Colors.white, fontSize: responsive.dp(1)),
        ),
        style: ElevatedButton.styleFrom(
          primary: Colors.black,
        ),
      ),
    );
  }
}
