// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:zfood/widgets/Font.dart';
import 'package:zfood/widgets/inputBox.dart';

import '../widgets/buttons.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
                    begin: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(223, 255, 182, 182),
                      Color.fromARGB(255, 255, 17, 0),
                      Color.fromARGB(223, 255, 182, 182),
                    ]),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                height: size.height * 0.85,
                width: size.width * 0.759,
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Sign Up',
                      style: Roboto(22, Colors.black),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    InputBox2(size: size, text: 'First name'),
                    InputBox2(size: size, text: 'Last name'),
                    InputBox2(size: size, text: 'Email'),
                    InputBox2(size: size, text: 'Password'),
                    InputBox2(size: size, text: 'Confirm Password'),
                    InputBox2(size: size, text: 'Phone number'),
                    CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      value: false,
                      onChanged: (value) {
                        value = !value!;
                      },
                      title: Text(
                        'Click to agree with the policies',
                        style: Roboto(12, Colors.black),
                      ),
                    ),
                    Builder(
                      builder: (ctx) {
                        return Submit(size: size, text: 'Submit', color: Color.fromARGB(223, 255, 182, 182), ctx: ctx);
                      }
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
