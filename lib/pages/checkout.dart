import 'package:bags_store/provider/cart.dart';
import 'package:bags_store/shared/constantColors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Checkout extends StatelessWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    final carts = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: const Text('Checkout',style: TextStyle(fontWeight: FontWeight.bold)),
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
      body: Column(
        children: [
          SingleChildScrollView(
            child: SizedBox(
              height: 550,
              child: ListView.builder(
                  padding: EdgeInsets.all(8),
                  itemCount: carts.selectedProducts.length,
                  //itemCount:3,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: ListTile(
                        title: Text("Product ${index+1}"),
                        subtitle: Text("\$  ${carts.selectedProducts[index].price.toString()} - ${carts.selectedProducts[index].location} "),
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(carts.selectedProducts[index].imgPath),
                        ),
                        trailing: IconButton(
                          icon: Icon(Icons.remove),
                          onPressed: () {
                            carts.removeItem(carts.selectedProducts[index]);
                          },
                        ),
                      ),
                    );
                  }),
            ),
          ),
          ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(buttonColor),
                      padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)))),
                  child:  Text(
                    'pay ${carts.totalPrice}',
                    style: TextStyle(fontSize: 20,
                    color: elementryColor),
                  ),
                ),
        ],
        
      ),
    );
  }
}
