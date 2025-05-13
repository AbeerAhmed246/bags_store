import 'package:bags_store/modle/item_class.dart';
import 'package:bags_store/pages/checkout.dart';
import 'package:bags_store/pages/details_screen.dart';
import 'package:bags_store/provider/cart.dart';
import 'package:bags_store/shared/constantColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          backgroundColor: textWhite,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const UserAccountsDrawerHeader(
                      decoration: BoxDecoration(
                        color: appBarColor,
                      ),
                      // image: DecorationImage(
                      // image: AssetImage('assest/img/(12).jpg'),
                      //  fit: BoxFit.cover)),
                      currentAccountPicture: CircleAvatar(
                        radius: 55,
                        backgroundImage: AssetImage('assest/img/(11).jpg'),
                      ),
                      accountName: Text(
                        'Bages Shop',
                        style: TextStyle(color: textWhite),
                      ),
                      accountEmail: Text(
                        'wrdh.mbthjah@gmail.com',
                        style: TextStyle(color: textWhite),
                      ),
                    ),
                    ListTile(
                      title: const Text('Home'),
                      leading: const Icon(Icons.home),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Home()),
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('Products'),
                      leading: const Icon(Icons.add_shopping_cart),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Checkout()),
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('About'),
                      leading: const Icon(Icons.help_center),
                      onTap: () {},
                    ),
                    ListTile(
                      title: const Text('logout'),
                      leading: const Icon(Icons.exit_to_app),
                      onTap: () {},
                    )
                  ],
                ),
                Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Text(
                      'Devlopered by Abeer BinGadhy © 2024',
                      style: TextStyle(fontSize: 14),
                    )),
              ]),
        ),
        appBar: AppBar(
          backgroundColor: appBarColor,
          title: const Text(
            'Home',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: [
            Consumer<Cart>(builder: (context, value, child) {
              return Row(children: [
                Stack(children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Checkout()),
                      );
                    },
                    icon: const Icon(Icons.add_shopping_cart),
                  ),
                  Positioned(
                    bottom: 17,
                    right: 23,
                    child: Container(
                        child: Text(
                          '${value.selectedProducts.length}',
                          style: TextStyle(fontSize: 14, color: textBlack),
                        ),
                        padding: const EdgeInsets.all(5),
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 235, 172, 224),
                          shape: BoxShape.circle,
                        )),
                  ),
                ]),
                Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: Text(
                    '\$ ${value.totalPrice}',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ]);
            }),
            // Stack(children: [
            //   Container(
            //     child: Text(
            //       '8',style: TextStyle(
            //         color: textBlack,
            //       ),
            //     ),

            //   ),
            // ])
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 20),
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 33),
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              DetailesItem(Product: items[index])),
                    );
                  },
                  child: GridTile(
                      footer: GridTileBar(
                        backgroundColor: Color.fromARGB(31, 129, 106, 106),
                        trailing: Consumer<Cart>(
                          builder: (context, value, child) {
                            return IconButton(
                              icon: Icon(Icons.add),
                              color: textBlack,
                              onPressed: () {
                                value.addProduct(items[index]);
                              },
                            );
                          },
                        ),
                        leading: Text('\$ ${items[index].price.toString()}'),
                        title: Text(""),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                              top: -3,
                              bottom: -10,
                              left: 0,
                              right: 0,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(55),
                                child: Image.asset(items[index].imgPath),
                              ))
                        ],
                      )),
                );
              }),
        ),
      ),
    );
  }
}
