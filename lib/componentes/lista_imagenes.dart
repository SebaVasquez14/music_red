import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:music_red_windows/utils/responsive.dart';

class ListaImagenes extends StatefulWidget {
  final int size;
  final int count;
  bool perfil;

  ListaImagenes({
    Key? key,
    required this.size,
    required this.count,
    required this.perfil,
  }) : super(key: key);

  @override
  _ListaImagenesState createState() => _ListaImagenesState();
}

class _ListaImagenesState extends State<ListaImagenes> {
  bool loading = true;

  List<String> ids = [];

  @override
  void initState() {
    // TODO: implement initState
    loading = true;
    ids = [];

    _loadImageIds();

    super.initState();
  }

  void _loadImageIds() async {
    final response = await http.get(Uri.parse('https://picsum.photos/v2/list'));
    final json = jsonDecode(response.body);
    List<String> _ids = [];

    for (var image in json) {
      _ids.add(image['id']);
    }

    setState(() {
      loading = false;

      ids = _ids;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: GridView.builder(
        scrollDirection: Axis.vertical,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: widget.count),
        itemBuilder: (context, index) {
          if (widget.perfil != false) {
            return Image.network(
                "https://picsum.photos/id/${ids[index]}/${widget.size}/${widget.size}");
          } else {
            return _imagenDecorada(index);
          }
        },
        itemCount: ids.length,
      ),
    );
  }

  Widget _imagenDecorada(int index) {
    final Responsive responsive = Responsive.of(context);
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        image: DecorationImage(
            image: NetworkImage(
                "https://picsum.photos/id/${ids[index]}/${widget.size}/${widget.size}")),
      ),
      child: Transform.translate(
          offset: Offset(responsive.dp(0.1), responsive.dp(11.5)),
          child: Text(
            "Nombre \n Instrumento",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
          )),
    );
  }
}
