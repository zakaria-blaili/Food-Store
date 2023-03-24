

import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:zfood/data.dart';

class CartProvider with ChangeNotifier{
 final List<Food> _items = [];
 int _total=0;

 UnmodifiableListView<Food> get items => UnmodifiableListView(_items);
  void add(Food item) {
    //_total=_total+ priceE ;
   _items.contains(item)? null : _items.add(item);
    notifyListeners();
  }
  void remove(Food item){
    _items.remove(item);
    notifyListeners();
  }

}