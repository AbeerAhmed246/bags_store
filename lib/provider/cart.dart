


import 'package:bags_store/modle/item_class.dart';
import 'package:flutter/material.dart';

class Cart with ChangeNotifier{
  List selectedProducts=[];
  double totalPrice =0;
  addProduct(Item product){
  selectedProducts.add(product);
  totalPrice += product.price;
  notifyListeners();
  }
  removeItem(Item product){
    selectedProducts.remove( product);
    totalPrice -= product.price;
  notifyListeners();
  }
}