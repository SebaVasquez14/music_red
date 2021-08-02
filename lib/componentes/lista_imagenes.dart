import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:http/http.dart' as http;

class ListaImagenes extends StatefulWidget {
  final int size;
  final int count;

  ListaImagenes({
    Key? key,
    required this.size,
    required this.count,
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
          return Image.network(
              "https://picsum.photos/id/${ids[index]}/${widget.size}/${widget.size}");
        },
        itemCount: ids.length,
      ),
    );
  }
}
