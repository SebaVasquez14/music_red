import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:introduction_screen/introduction_screen.dart';

class Introduction_page extends StatefulWidget {
  const Introduction_page({Key? key}) : super(key: key);

  @override
  _Introduction_pageState createState() => _Introduction_pageState();
}

class _Introduction_pageState extends State<Introduction_page> {
  final introData = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        isTopSafeArea: true,
        curve: Curves.fastOutSlowIn,
        animationDuration: 800,
        pages: getPages(),
        showNextButton: true,
        showSkipButton: true,
        showDoneButton: true,
        color: Colors.white,
        globalBackgroundColor: Colors.black87,
        skip: Text("Omitir"),
        done: Text("Lo tengo"),
        next: Text("Siguiente"),
        onDone: () {
          Navigator.pushNamed(context, 'login');
          introData.write("iniciado", true);
        },
        onSkip: () {
          Navigator.pushNamed(context, 'login');
          introData.write("iniciado", true);
        },
      ),
    );
  }

  List<PageViewModel> getPages() {
    String txt1 =
        "Te damos la bienvenida a Music Red, un espacio dedicado para músicos y amantes de la música, como tu o nosotros.";

    String txt2 =
        "Sabemos que no te gusta estar solo, aquí podrás encontrar, desde nuevos amigos hasta los integrantes que faltan en tu banda.";

    String txt3 =
        "También podrás vender o comprar artículos musicales, arrendar o buscar una sala de ensayo, incluso ofrecer o dar clases musicales.";
    return [
      PageViewModel(
          titleWidget: Text("Bienvenido a Music Red !!",
              style: GoogleFonts.lato(
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                  fontSize: 30)),
          bodyWidget: Center(
            child: Container(
              height: double.maxFinite,
              width: double.maxFinite,
              child: Column(children: [
                Image.asset("assets/intro_1.jpg"),
                SizedBox(
                  height: 80,
                ),
                Text(
                  txt1,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                      fontStyle: FontStyle.italic,
                      color: Colors.white,
                      fontSize: 20),
                ),
              ]),
            ),
          ),
          //body: "Welcome to Proto Coders Point",
          footer: Text("Footer Text here "),
          decoration: const PageDecoration(
              boxDecoration: BoxDecoration(
                  gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.black,
              Colors.red,
            ],
          )))),
      PageViewModel(
          titleWidget: Text("Bienvenido a Music Red !!",
              style: GoogleFonts.lato(
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                  fontSize: 30)),
          bodyWidget: Center(
            child: Container(
              height: double.maxFinite,
              width: double.maxFinite,
              child: Column(children: [
                Image.asset("assets/intro_1.jpg"),
                SizedBox(
                  height: 80,
                ),
                Text(
                  txt2,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                      fontStyle: FontStyle.italic,
                      color: Colors.white,
                      fontSize: 20),
                ),
              ]),
            ),
          ),
          //body: "Welcome to Proto Coders Point",
          footer: Text("Footer Text here "),
          decoration: const PageDecoration(
              boxDecoration: BoxDecoration(
                  gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.black,
              Colors.red,
            ],
          )))),
      PageViewModel(
          titleWidget: Text("Bienvenido a Music Red !!",
              style: GoogleFonts.lato(
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                  fontSize: 30)),
          bodyWidget: Center(
            child: Container(
              height: double.maxFinite,
              width: double.maxFinite,
              child: Column(children: [
                Image.asset("assets/intro_1.jpg"),
                SizedBox(
                  height: 80,
                ),
                Text(
                  txt3,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                      fontStyle: FontStyle.italic,
                      color: Colors.white,
                      fontSize: 20),
                ),
              ]),
            ),
          ),
          //body: "Welcome to Proto Coders Point",
          footer: Text("Footer Text here "),
          decoration: const PageDecoration(
              boxDecoration: BoxDecoration(
                  gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.black,
              Colors.red,
            ],
          )))),
    ];
  }
}
