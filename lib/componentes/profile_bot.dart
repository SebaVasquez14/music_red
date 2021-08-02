import 'package:flutter/material.dart';
import 'package:music_red_windows/componentes/lista_imagenes.dart';
import 'package:music_red_windows/utils/responsive.dart';

class ProfileBot extends StatelessWidget {
  const ProfileBot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return Container(
      width: responsive.wp(84),
      height: responsive.hp(40),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.grey),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ElevatedButton(
            onPressed: () {},
            child: Text("Fotos y videos"),
            style: ElevatedButton.styleFrom(primary: Colors.black),
          ),
          ListaImagenes(
            count: 2,
            size: 100,
          )
        ],
      ),
    );
  }
}
