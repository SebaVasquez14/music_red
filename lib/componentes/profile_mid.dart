import 'package:flutter/material.dart';
import 'package:music_red_windows/utils/responsive.dart';

import 'item_gustos_perfil.dart';
import 'lista_horizontal.dart';

class ProfileMid extends StatelessWidget {
  const ProfileMid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Instrumentos",
              style: TextStyle(fontSize: responsive.dp(1.5)),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Géneros de Musica",
              style: TextStyle(fontSize: responsive.dp(1.5)),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Bandas Musicales",
              style: TextStyle(fontSize: responsive.dp(1.5)),
            )
          ],
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          flex: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ListaHorizontal(
                item: ItemGustosPerfil(label: "Teclado"),
                cantidad: 10,
              ),
              SizedBox(
                height: 10,
              ),
              ListaHorizontal(
                item: ItemGustosPerfil(label: "Jazz"),
                cantidad: 3,
              ),
              SizedBox(
                height: 10,
              ),
              ListaHorizontal(
                item: ItemGustosPerfil(label: "Linkin Park"),
                cantidad: 1,
              ),
            ],
          ),
        )
      ],
    );
  }
}
