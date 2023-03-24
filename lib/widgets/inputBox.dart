import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'Font.dart';

class InputBox extends StatelessWidget {
  const InputBox(
      {Key? key, required this.size, required this.url, required this.text, required this.controller, required this.obscureText})
      : super(key: key);
  final Size size;
  final String url, text;
  final TextEditingController controller;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
      ),
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.all(5),
      width: size.width * 0.759 * 0.8,
      height: size.height*0.69*0.1048,
      child: TextField(
       obscureText: obscureText,
        controller: controller,
        decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                url,
                height: 35,
                width: 35,
                color: Colors.black,
              ),
            ),
            
            hintText: text,
            hintStyle: Quicksand2(20, Colors.grey.withOpacity(0.5))),
            
      ),
    );
  }
}


class InputBox2 extends StatelessWidget {
  const InputBox2(
      {Key? key, required this.size, required this.text})
      : super(key: key);
  final Size size;
  final String text;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black,width: 0.2),
      ),
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.symmetric(horizontal: 5,vertical: 8),
      width: size.width * 0.759 * 0.8,
      height: size.height*0.69*0.1048,
      child: TextField(
        
        decoration: InputDecoration(
            border: InputBorder.none,
            
            hintText: text,
            hintStyle: Quicksand2(20, Colors.grey.withOpacity(0.5))),
      ),
    );
  }
}