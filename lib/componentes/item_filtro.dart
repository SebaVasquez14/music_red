import 'package:flutter/material.dart';

class ItemFiltro extends StatelessWidget {
  final String label;

  ItemFiltro({this.label = ""});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Center(
          child: ElevatedButton.icon(
            icon: Icon(
              Icons.cancel,
              color: Colors.white,
              size: 24.0,
            ),
            label: Text(label),
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),

              ),
              primary: Colors.black
            ),
          ))



      /*ElevatedButton(

          onPressed: () {},

          child: Text(label),
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                  side: BorderSide(width: 2, color: Colors.white)),
              primary: Colors.black)),
    */);
  }
}
