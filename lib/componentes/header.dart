import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_red_windows/utils/responsive.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return Flexible(
      child: Container(
        width: double.infinity,
        height: responsive.height,
        color: Colors.white,
        child: Column(
          children: [
            Flexible(
              child: Container(
                height: responsive.hp(10),
                width: responsive.wp(100),
                decoration: BoxDecoration(color: Colors.red[900]),
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  "¡Bienvenido a MusicRed!",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.acme(
                      color: Colors.white, fontSize: responsive.dp(3)),
                ),
              ),
            ),
            Container(
              height: responsive.hp(10),
              width: responsive.wp(100),
              decoration: BoxDecoration(color: Colors.black87),
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                "Tu Red Musical",
                textAlign: TextAlign.center,
                style: GoogleFonts.acme(
                    color: Colors.white, fontSize: responsive.dp(2.5)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
