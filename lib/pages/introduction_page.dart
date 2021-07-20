import 'package:flutter/material.dart';

import 'package:introduction_screen/introduction_screen.dart';

class Introduction_page extends StatefulWidget {
  const Introduction_page({Key? key}) : super(key: key);

  @override
  _Introduction_pageState createState() => _Introduction_pageState();
}

class _Introduction_pageState extends State<Introduction_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        pages: getPages(),
        showNextButton: true,

        // showSkipButton: true,

        // skip: Text("Skip"),
        done: Text("Got it "),
        onDone: () {
          Navigator.pushNamed(context, 'login_page');
        },
      ),
    );
  }

  List<PageViewModel> getPages() {
    return [
      PageViewModel(
          image: Image.asset("assets/intro_1.jpg"),
          title: "Live Demo page 1",
          body: "Welcome to Proto Coders Point",
          footer: Text("Footer Text here "),
          decoration: const PageDecoration(
            pageColor: Colors.blue,
          )),
      PageViewModel(
        image: Image.asset("assets/intro_2.png"),
        title: "Live Demo page 3",
        body: "Welcome to Proto Coders Point",
        footer: Text("Footer Text  here "),
      ),
      PageViewModel(
        image: Image.asset("assets/intro_3.png"),
        title: "Live Demo page 4 ",
        body: "Live Demo Text",
        footer: Text("Footer Text  here "),
      ),
    ];
  }
}
