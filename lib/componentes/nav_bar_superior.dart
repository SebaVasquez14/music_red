import 'package:flutter/material.dart';
import 'package:music_red_windows/utils/responsive.dart';

class NavBarSuperior extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);

    return Container(
      color: Colors.black,
      height: responsive.hp(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'MUSIC',
                style:
                    TextStyle(fontSize: responsive.dp(2), color: Colors.white),
              ),
              Text(
                'RED',
                style: TextStyle(
                    fontSize: responsive.dp(2), color: Colors.red[900]),
              ),
            ],
          ),
          /*Icon(Icons.search),
          Icon(Icons.messenger),
          Icon(Icons.library_books_sharp),
          Icon(Icons.supervised_user_circle_outlined),
          Icon(Icons.settings),*/
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, 'main_page');
            },
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, 'chat_page');
            },
            icon: Icon(
              Icons.messenger,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, 'profile_page');
            },
            icon: Icon(
              Icons.account_circle_outlined,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, 'settings_page');
            },
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
          ),
          //Icon(Icons.search, color: Colors.white, ),
          /*Icon(Icons.messenger,color: Colors.white),
          Icon(Icons.library_books_sharp,color: Colors.white),
          Icon(Icons.supervised_user_circle_outlined,color: Colors.white),
          Icon(Icons.settings,color: Colors.white),*/
        ],
      ),
    );
  }
}
