

import 'package:flutter/material.dart';
import '../screens/homeView.dart';
import 'Font.dart';

class CategoryCard extends StatefulWidget {
  const CategoryCard({Key? key, required this.name, required this.onF,required this.i}) : super(key: key);
final String name;
final Function() onF;

final int i;
  @override
  State<CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
                        onTap: widget.onF,
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          width: 98,
                          height: 32,
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(30),
                            color:pindex==widget.i? Color.fromARGB(255, 247, 102, 114):Colors.white),
                            child: Center(child: Text(widget.name,style: Quicksand(14, Colors.black),)),
                          ),
                      );
  }
}