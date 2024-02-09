import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      color: Color(0xfff8f8f8),
      child: IconTheme(
        data: IconThemeData(color: Color(0xffabadb4)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.addchart),
            Icon(Icons.search),
            Transform.translate(
              offset: Offset(0, -10),
              child: Container(
                  padding: const EdgeInsets.all(13),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          colors: [Color(0xff92e2ff), Color(0xff1ebff8)]),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(3, 3),
                          blurRadius: 1,
                        )
                      ]),
                  child: Icon(
                    Icons.home,
                    color: Colors.white,
                  )),
            ),
            Icon(Icons.date_range),
            Icon(Icons.settings),
          ],
        ),
      ),
    );
  }
}
