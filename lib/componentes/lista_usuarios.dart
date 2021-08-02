import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:http/http.dart' as http;
import 'package:music_red_windows/utils/responsive.dart';

class ListaUsuarios extends StatefulWidget {
  final int size;

  ListaUsuarios({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  _ListaUsuariosState createState() => _ListaUsuariosState();
}

class _ListaUsuariosState extends State<ListaUsuarios> {
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
    final Responsive responsive = Responsive.of(context);

    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.all(2),
            height: responsive.hp(15),
            decoration: BoxDecoration(),
            child: Card(
                child: Row(
              children: [
                ClipOval(
                  child: Image.network(
                      "https://picsum.photos/id/${ids[index]}/${widget.size}/${widget.size}"),
                ),
                SizedBox(width: responsive.wp(10)),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Nombre usuario",
                      style: GoogleFonts.alata(fontSize: 24),
                    ),
                    Text(
                      "Instrumento",
                      style: GoogleFonts.alata(fontSize: 16),
                    ),
                    Text(
                      "Bandas",
                      style: GoogleFonts.alata(fontSize: 16),
                    )
                  ],
                ),
                SizedBox(
                  width: responsive.wp(9),
                ),
                Container(
                  child: Icon(
                    Icons.message_outlined,
                    size: 40,
                  ),
                )
              ],
            )),
          );
        },
        itemCount: ids.length,
      ),
    );
  }
}
