// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:zfood/provider/cartModel.dart';
import 'package:zfood/screens/cart.dart';
import '../data.dart';
import '../widgets/Font.dart';
import '../widgets/categoryCard.dart';
import '../widgets/itemCard.dart';


class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}
 int pindex = 1;
class _HomeViewState extends State<HomeView> {
  final TextEditingController searchController = TextEditingController();

  void BottomSheet(BuildContext ctx,) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        context: ctx,
        builder: (bctx) => ListView(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 305,
                      width: 175,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        color:
                            Color.fromARGB(255, 255, 118, 109).withOpacity(0.2),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(100),
                            bottomRight: Radius.circular(100),
                            topLeft: Radius.circular(30)),
                      ),
                    ),
                    Container(
                      height: 300,
                      width: 170,
                      decoration: BoxDecoration(
                        // border: Border.all(),
                        image: DecorationImage(
                          image: AssetImage('images/chicago-pizza.jpg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(100),
                            bottomRight: Radius.circular(100),
                            topLeft: Radius.circular(30)),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                offset: Offset(3, 3),
                              )
                            ],
                            border: Border.all()),
                        margin: EdgeInsets.fromLTRB(0, 10, 20, 0),
                        height: 290,
                        width: 170,
                        child: Column(
                          children: [
                            Text(
                              'Chicago Pizza',
                              style: RobotoMono(18, Colors.black),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Price: 13\$',
                              style: Quicksand(14, Colors.black),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ));
  }

 
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 15),
      children: [
        SizedBox(
          height: 15,
        ),
        Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => CartPage() ))
                    // Navigator.of(context).pushReplacement(
                    //     MaterialPageRoute(builder: (_) => CartPage()))
                        ;
                  },
                  child: SvgPicture.asset(
                    'images/cart.svg',
                    height: 30,
                    width: 30,
                  ),
                ),
                SizedBox(width: 20),
                CircleAvatar(
                  radius: 15,
                  backgroundColor: Color.fromARGB(223, 255, 182, 182),
                ),
              ],
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                'ZAFood',
                style: Macondo(28, Colors.black),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Align(
          alignment: Alignment.center,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.black),
            ),
            width: 350,
            height: 50,
            child: TextField(
              controller: searchController,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(
                      'images/search.svg',
                      height: 35,
                      width: 35,
                      color: Colors.black,
                    ),
                  ),
                  hintText: 'Search your favourite food',
                  hintStyle: Quicksand(15, Colors.grey.withOpacity(0.5))),
            ),
          ),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Special offers',
                style: RobotoMono(22, Colors.black),
              ),
              SvgPicture.asset(
                'images/more.svg',
                width: 35,
                height: 35,
              )
            ],
          ),
        ),
        SizedBox(height: 7),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...foodList.map((e) {
                if (e.Soffer == false) {
                  return Container();
                }
                return ItemCard(
                  name: e.name,
                  price: e.price,
                  url: e.imageUrl,
                  fct: () {
                    Provider.of<CartProvider>(context,listen: false).add(e);
                    BottomSheet(context);
                  },
                );
              })
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...categoryList.map((e) => CategoryCard(
                    name: e.name,
                    onF: () {
                      setState(() {
                        pindex = e.i;
                        //e.pressed = !e.pressed;
                      });
                    },
                    i: e.i,
                  ))
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...foodList.where((t) => t.Soffer != true).map((e) {
                if (pindex == 1 && e.category == 'Pizza') {
                  return ItemCard(
                    name: e.name,
                    price: e.price,
                    url: e.imageUrl,
                    fct: () {
                      BottomSheet(context);
                    },
                  );
                } else {
                  if (pindex == 2 && e.category == 'Sandwich') {
                    return ItemCard(
                      name: e.name,
                      price: e.price,
                      url: e.imageUrl,
                      fct: () {
                        Provider.of<CartProvider>(context,listen: false).add(e);
                        BottomSheet(context);
                      },
                    );
                  } else
                    return Container();
                }
              })
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
