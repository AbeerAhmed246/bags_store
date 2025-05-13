import 'package:bags_store/pages/register.dart';
import 'package:bags_store/shared/constantColors.dart';
import 'package:flutter/material.dart';

import '../shared/customer_textfield.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(243, 255, 255, 255),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(33.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 64,
                ),
                const MyTextField(
                  textType: TextInputType.emailAddress,
                  isPassword: false,
                  hintTexett: 'Enter your email : ',
                ),
                const SizedBox(
                  height: 33,
                ),
                const MyTextField(
                  textType: TextInputType.text,
                  isPassword: true,
                  hintTexett: 'Enter your password : ',
                ),
                const SizedBox(
                  height: 33,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(buttonColor),
                      padding: MaterialStateProperty.all(const EdgeInsets.all(12)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)))),
                  child: const Text(
                    'sign In',
                    style: TextStyle(fontSize: 19),
                  ),
                ),
                 const SizedBox(
                  height: 33,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('DO you have an accountment?', style: TextStyle(fontSize: 20)),
                    TextButton(onPressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => const Register()));
                    }, 
                    child:const Text('Sign Up',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold)))
                  ],
                )
               // TextButton.icon(
                 // onPressed:(){},
                  //icon: Icon(Icons.person,color: Colors.black,size: 24.0,),
                // label: Text('logout',style: TextStyle(color: Colors.black)))
              ],
            ),
          ),
        ),
      ),
    );
  }
}