
// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../data.dart';
import '../provider/cartModel.dart';
import 'Font.dart';

class ItemCard extends StatelessWidget {
   ItemCard({Key? key, required this.name, required this.price, required this.url, required this.fct}) : super(key: key);
 final String name,price,url;
 final Function() fct;
 
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: fct,
      child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(children: [
                        Container(
                          height: 159,
                          width: 132,
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.only(topLeft:Radius.circular(20) ,topRight:Radius.circular(20) ,),
                            image: DecorationImage(image: AssetImage(url),fit: BoxFit.cover)
                        ),),
                        Container(
                          width: 132,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(),
                             borderRadius: BorderRadius.only(bottomLeft:Radius.circular(20) ,bottomRight:Radius.circular(20) ,),
                          ),
                          child: Column(children: [
                            Text(name,style: Quicksand(12, Colors.black),),
                            Text(price,style: Quicksand(12, Colors.black),),
                          ],),
                        )
                      ]),
                    ),
    );
  }
}

class CartItem extends StatefulWidget {
   CartItem({Key? key, required this.imageUrl, required this.price, required this.name,  required this.count, required this.fct}) : super(key: key);
   final String imageUrl,price,name;
    final Function ()fct;
     int count;
    

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
 

  @override
  Widget build(BuildContext context) {
    int priceE=int.parse(widget.price.substring(0,3))*widget.count;
    return Expanded(
      child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                  border: Border.all()),
              margin: EdgeInsets.all(10),
              height: 150,
              width: 350,
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius:  BorderRadius.only(bottomLeft: Radius.circular(20),topLeft: Radius.circular(20)),
                        image: DecorationImage(
                            image: AssetImage(widget.imageUrl),
                            fit: BoxFit.cover)),
                    width: 150,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 200,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          widget.name,
                          style: Roboto(16, Colors.black),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              '${widget.count}',
                              style: Roboto(18, Colors.black),
                            ),
                            Row(
                              
                              children: [
                                GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      widget.count!=1? widget.count--:widget.count;
                                    });
                                  },
                                  child: Icon(
                                    Icons.keyboard_arrow_left,
                                    size: 30,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      widget.count++;
                                    });
                                  },
                                  child: Icon(
                                    Icons.keyboard_arrow_right,
                                    size: 30,
                                  ),
                                ),
                              ],
                            ),
                            
                          ],
                        ),
                        SizedBox(height: 5,),
                            Text('${priceE}',style: Roboto(18, Colors.black),),
                            SizedBox(height:10 ,),
                            GestureDetector(
                              onTap: widget.fct,
                              child: Text('DELETE',style: Quicksand(18, Colors.black.withOpacity(0.6)),)),
                            
                      ],
                    ),
                  )
                ],
              ),
            ),
    );
  }
}