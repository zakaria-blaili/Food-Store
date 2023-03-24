import 'package:flutter/material.dart';
import 'package:zfood/screens/home_page.dart';
import 'package:zfood/screens/login.dart';
import 'package:zfood/screens/signup.dart';
import 'Font.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key, required this.size, required this.text, required this.color, required this.ctx}) : super(key: key);
final Size size;
final String text;
final Color color;
final BuildContext ctx;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
                      onTap: (){
                        Navigator.of(ctx).pushReplacement(MaterialPageRoute(builder: (_)=>HomePage()));
                      },
                      child: Container(
                        width:  size.width*0.759*0.5,
                        height:size.height*0.69*0.0923,
                        decoration: BoxDecoration(
                          color: color,
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(30)
                        ),
                        child:Center(child: Text(text,style: RobotoMono(19, Colors.black),)) ,
                      ),
                    );
  }
}


class SignUp extends StatelessWidget {
  const SignUp({Key? key, required this.size, required this.text, required this.color, required this.ctx}) : super(key: key);
final Size size;
final String text;
final Color color;
final BuildContext ctx;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
                      onTap: (){
                        Navigator.of(ctx).push(MaterialPageRoute(builder: (_)=>SignUpPage()));
                      },
                      child: Container(
                        width:  size.width*0.759*0.5,
                        height:size.height*0.69*0.0923,
                        decoration: BoxDecoration(
                          color: color,
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(30)
                        ),
                        child:Center(child: Text(text,style: RobotoMono(19, Colors.black),)) ,
                      ),
                    );
  }
}



class Submit extends StatelessWidget {
  const Submit({Key? key, required this.size, required this.text, required this.color, required this.ctx}) : super(key: key);
final Size size;
final String text;
final Color color;
final BuildContext ctx;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
                      onTap: (){
                        Navigator.of(ctx).pushReplacement(MaterialPageRoute(builder: (_)=>LoginPage()));
                      },
                      child: Container(
                        width:  size.width*0.759*0.4,
                        height:size.height*0.69*0.0923,
                        decoration: BoxDecoration(
                          color: color,
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(30)
                        ),
                        child:Center(child: Text(text,style: RobotoMono(19, Colors.black),)) ,
                      ),
                    );
  }
}
