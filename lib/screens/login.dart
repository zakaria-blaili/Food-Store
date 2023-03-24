
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:zfood/widgets/Font.dart';
import 'package:zfood/widgets/buttons.dart';
import 'package:zfood/widgets/inputBox.dart';


class LoginPage extends StatelessWidget {
   LoginPage({Key? key}) : super(key: key);
TextEditingController emailController=TextEditingController();
TextEditingController passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  end: Alignment.topCenter,
                  begin:Alignment.bottomCenter ,
                  colors: [
                    Colors.white,
                    Color.fromARGB(255, 255, 17, 0),
                    
                  ]),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                height:size.height*0.69,
                width: size.width*0.759,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                      children: [
                        SizedBox(height: 20,),
                        Text('Welcome',style: Roboto(22, Colors.black),),
                        SizedBox(height: 80,),
                        InputBox(size: size, text: 'Email', url: 'images/email.svg', controller: emailController, obscureText: false,),
                        SizedBox(height: 10,),
                        InputBox(size: size, url: 'images/password.svg', text: 'Password', controller: passwordController, obscureText: true,),
                        SizedBox(height: 10,),
                        Builder(
                          builder: (ctx) {
                            return LogIn(size: size, text: 'Log In', color: Color.fromARGB(223, 255, 182, 182), ctx: ctx);
                          }
                        ),
                        SizedBox(height: 10,),
                        Builder(
                          builder: (ctx) {
                            return SignUp(size: size, text: 'Sign Up', color: Colors.white, ctx: ctx,);
                          }
                        ),
                        Align(
                          alignment: Alignment(0.5,0),
                          child: TextButton(onPressed: (){}, child: Text('Forgot password ?',style: RobotoMono(12, Colors.black),)))
                      ],
                    )
                  
              ),
            )
          ],
        ),
      ));
  }
}