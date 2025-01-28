import 'package:bags_store/modle/item_class.dart';
import 'package:bags_store/pages/checkout.dart';
import 'package:bags_store/provider/cart.dart';
import 'package:bags_store/shared/constantColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class DetailesItem extends StatelessWidget {
 // const DetailesItem({super.key});
 // ignore: non_constant_identifier_names
 Item Product;
 DetailesItem({
required this.Product
 });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: appBarColor,
          title: const Text('Details',style: TextStyle(fontWeight: FontWeight.bold)),
          actions: [
            Consumer<Cart>(builder: (context, value, child) {
              return Row(children: [
                Stack(children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Checkout()),);
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(Product.imgPath),
            SizedBox(
              height: 16,
            ),
            Text(
              '\$ ${Product.price.toString()}',
              style: TextStyle(fontSize: 22),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
               Product.isNew ?Container(
                  decoration: BoxDecoration(
                      color: buttonColor,
                      borderRadius: BorderRadius.circular(5)),
                  padding: const EdgeInsets.all(5),
                  child: Text(
                    'new',
                    style: TextStyle(fontSize: 16),
                  ),
                ) : SizedBox(width: 15,),
                const SizedBox(
                  width: 20,
                ),
                const Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 30,
                      color: elementryColor,
                    ),
                    Icon(
                      Icons.star,
                      size: 30,
                      color: elementryColor,
                    ),
                    Icon(
                      Icons.star,
                      size: 30,
                      color: elementryColor,
                    ),
                    Icon(
                      Icons.star,
                      size: 30,
                      color: elementryColor,
                    ),
                    Icon(
                      Icons.star,
                      size: 30,
                      color: elementryColor,
                    ),
                  ],
                ),
                const SizedBox(
                  width: 100,
                ),
                 Row(
                  children: [
                    Icon(Icons.edit_location, size: 30, color: elementryColor),
                    const SizedBox(
                      width: 7,
                    ),
                    Text(Product.location,
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            const SizedBox(
              width: double.infinity,
              child: Text(
                'Details : ',
                style: TextStyle(fontSize: 22),
                textAlign: TextAlign.start,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
             SizedBox(
              width: double.infinity,
              child: Text(
                Product.moreDetails,
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.start,
                
              ),
            ),
          ],
        ),
      ),
    );
  }
}
