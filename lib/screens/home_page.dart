// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:zfood/screens/fav.dart';
import 'package:zfood/screens/homeView.dart';


class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> pages = [
    HomeView(),
    Favorites(),
    Text("tyityityityityi"),
    Text("u8ou8og"),
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Color.fromARGB(223, 255, 182, 182),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                    topRight: Radius.circular(50)),
              )),
          Positioned(
            left: 30,
            child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: Color.fromARGB(223, 255, 182, 182),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                      topRight: Radius.circular(50)),
                )),
          ),
          pages.elementAt(index),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: GNav(
          padding: EdgeInsets.all(10),
          tabs: [
            GButton(
              active: index == 0 ? true : false,
              onPressed: () {
                setState(() {
                  index = 0;
                });
              },
              icon: MdiIcons.homeCircleOutline,
              text: 'Home',
            ),
            GButton(
              active: index == 1 ? true : false,
              onPressed: () {
                setState(() {
                  index = 1;
                });
              },
              icon: MdiIcons.heartOutline,
              text: 'Favorites',
            ),
            GButton(
              active: index == 2 ? true : false,
              onPressed: () {
                setState(() {
                  index = 2;
                });
              },
              icon: Boxicons.bx_support,
              text: 'Services',
            ),
            GButton(
              active: index == 3 ? true : false,
              onPressed: () {
                setState(() {
                  index = 3;
                });
              },
              icon: MdiIcons.informationOutline,
              text: 'Info',
            )
          ],
        ),
      ),
    );
  }
}
