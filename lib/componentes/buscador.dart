import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_red_windows/componentes/item_filtro.dart';
import 'package:music_red_windows/utils/responsive.dart';

class Buscador extends StatefulWidget {
  @override
  _BuscadorState createState() => _BuscadorState();
}

class _BuscadorState extends State<Buscador> {
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);

    return Container(
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                labelText: 'BUSCAR',
                labelStyle: TextStyle(color: Colors.white),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.all(Radius.circular(4.0)))),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ItemFiltro(label: "Artistas"),
              ItemFiltro(label: "Localización"),
              ItemFiltro(label: "Edad")
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ItemFiltro(label: "Instrumento"),
              ItemFiltro(label: "Genero Musical")
            ],
          ),
          SizedBox(
            height: responsive.hp(3),
          ),
        ],
      ),
    );
  }
}
