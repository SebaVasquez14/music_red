import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_red_windows/utils/responsive.dart';

class AvatarButton extends StatelessWidget {
  final double imageSize;

  final String label;

  const AvatarButton({this.imageSize = 100, this.label = ""});

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);

    return Column(
      children: [
        Stack(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 20,
                        color: Colors.black26,
                        offset: Offset(0, 20))
                  ]),
              child: ClipOval(
                child: Image.asset(
                  'assets/user.png',
                  width: imageSize,
                  height: imageSize,
                ),
              ),
            ),
            Positioned(
              bottom: 5,
              right: 0,
              child: CupertinoButton(
                padding: EdgeInsets.zero,
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 2),
                      color: Colors.pink,
                      shape: BoxShape.circle),
                ),
                onPressed: () {},
              ),
            )
          ],
        ),
        Text(
          label,
          style: GoogleFonts.alata(
              color: Colors.white, fontSize: responsive.dp(1.6)),
        )
      ],
    );
  }
}
