
import 'package:bags_store/pages/checkout.dart';
import 'package:bags_store/pages/details_screen.dart';
import 'package:bags_store/pages/home.dart';
import 'package:bags_store/provider/cart.dart';
import 'package:bags_store/seller_%20app/home.dart';
import 'package:bags_store/seller_%20app/login_page.dart';
import 'package:bags_store/seller_%20app/register_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// void main() {
//   runApp(const MyApp());
// }
// class MyApp extends StatelessWidget {
//   const MyApp({Key? Key}) : super(key: Key);

//   @override
//   Widget build(BuildContext context) {
//     return   ChangeNotifierProvider(
//       create: (context){return Cart();},
//       child:  MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: Home(),
//       ),
//     );
//   }
// }
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  //FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  runApp(SellerApp());
}

class SellerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'تطبيق البائع',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Tajawal',
      ),
      home:
      // LoginPage(),
      SellerLoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:buyer_app/screens/auth/buyer_login.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(BuyerApp());
// }

// class BuyerApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'تطبيق المشتري',
//       theme: ThemeData(
//         primarySwatch: Colors.green,
//         fontFamily: 'Tajawal',
//       ),
//       home: BuyerLoginScreen(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }