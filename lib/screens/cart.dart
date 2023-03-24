// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zfood/data.dart';
import 'package:zfood/widgets/Font.dart';
import 'package:zfood/widgets/itemCard.dart';

import '../provider/cartModel.dart';
import 'home_page.dart';

class CartPage extends StatefulWidget {
  CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int i = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 9,
                    color: Colors.black.withOpacity(0.34),
                    offset: Offset(1, 1.5),
                  )
                ],
                color: Color.fromARGB(223, 255, 182, 182),
                border: Border.all(),
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(30),bottomLeft:Radius.circular(30) )),
          ),
          leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) => HomePage()));
            },
            child: Icon(
              Icons.subdirectory_arrow_left,
              color: Colors.black,
              size: 30,
            ),
          ),
          // title: Center(child: Text('Cart',style: Roboto(22, Colors.black),)),
        ),
        body: Stack(
          children: [ListView(children: [
            SizedBox(
              height: 20,
            ),
            ...Provider.of<CartProvider>(context).items.map((e) => CartItem(
                  imageUrl: e.imageUrl,
                  price: e.price,
                  name: e.name,
                  count: 1,
                  fct: () {
                    Provider.of<CartProvider>(context, listen: false).remove(e);
                   
                  },
                )),
               
          ]),
           Positioned(
                  bottom: 0,
                  child: Container(
                   // alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.only(
                        topLeft:Radius.circular(30),
                        topRight:Radius.circular(30),
                      ),
                      //color:Color.fromARGB(223, 255, 182, 182) ,
                    ),
                    width: double.infinity,
                    height: 60,
                    child: Row(
                      children: [
                        SizedBox(width: 10,),
                        GestureDetector(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(223, 255, 182, 182),
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(20)
                            ),
                            width: 80,
                            height: 30,
                            child: Center(child: Text('Continue')),
                          ),
                        ),
                        Text('Toatl :')
                
                      ],
                    ),),
                )
          ]
        ),
      ),
    );
  }
}
