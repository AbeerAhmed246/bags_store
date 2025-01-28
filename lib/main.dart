
import 'package:bags_store/pages/checkout.dart';
import 'package:bags_store/pages/details_screen.dart';
import 'package:bags_store/pages/home.dart';
import 'package:bags_store/provider/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? Key}) : super(key: Key);

  @override
  Widget build(BuildContext context) {
    return   ChangeNotifierProvider(
      create: (context){return Cart();},
      child:  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}