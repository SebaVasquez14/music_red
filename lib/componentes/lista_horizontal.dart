import 'package:flutter/material.dart';
import 'package:music_red_windows/utils/responsive.dart';

class ListaHorizontal extends StatelessWidget {
  int cantidad;
  Widget item;

  ListaHorizontal({required this.cantidad, required this.item});

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);

    return Container(
      height: responsive.hp(2),
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: cantidad,
        itemBuilder: (context, index) {
          return item;
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            width: 10,
          );
        },
      ),
    );
  }
}
