import 'package:flutter/material.dart';
import 'package:music_red_windows/utils/responsive.dart';

import 'avatar_button.dart';

class ProfileTop extends StatelessWidget {
  const ProfileTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);

    return Row(
      children: [
        Column(
          children: [
            AvatarButton(
              imageSize: 100,
            ),
            ElevatedButton(
                onPressed: () {},
                child: Text("Editar Perfil"),
                style: ElevatedButton.styleFrom(primary: Colors.red[900]))
          ],
        ),
        SizedBox(
          width: 20,
        ),
        Container(
          width: responsive.wp(50),
          height: responsive.hp(27),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                  top: responsive.dp(5), child: Text("Nombre de usuario")),
              Positioned(top: responsive.dp(8), child: Text("Ciudad usuario")),
              Positioned(
                bottom: 12,
                child: Container(
                  padding: EdgeInsets.all(5),
                  width: responsive.wp(47),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red[900]),
                  child: TextField(
                    maxLines: 2,
                    decoration:
                        InputDecoration(labelText: "Descripción perfil"),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
