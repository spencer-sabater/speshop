import 'package:flutter/material.dart';
import 'package:speshop_sabater/components/my_textfield.dart';

class Signup extends StatelessWidget{
 Signup({super.key});
 
final usernameController = TextEditingController();
final fullnameController = TextEditingController();
final emailController = TextEditingController();
final passwordController = TextEditingController();
final addController = TextEditingController();
final phoneController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                
                const Text('REGISTER', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),),
                const SizedBox(height: 50),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Text('Full Name',style: TextStyle(fontSize: 20),)),
                  MyTextField(
                   controller: fullnameController,
                   hintText: ' ',
                    obscureText: false,
                ),
                const SizedBox(height: 20),
                const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Text('Email',style: TextStyle(fontSize: 20),)),
                  MyTextField(
                   controller: emailController,
                   hintText: ' ',
                    obscureText: false,
                ),
                 const SizedBox(height: 20),
                const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Text('Password',style: TextStyle(fontSize: 20),)),
                  MyTextField(
                   controller: passwordController,
                   hintText: ' ',
                    obscureText: true,
                ),
                const SizedBox(height: 20),
                const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Text('Address',style: TextStyle(fontSize: 20),)),
                  MyTextField(
                   controller: addController,
                   hintText: ' ',
                    obscureText: false,
                ),
                const SizedBox(height: 20),
                const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Text('Phone Number',style: TextStyle(fontSize: 20),)),
                  MyTextField(
                   controller: phoneController,
                   hintText: ' ',
                    obscureText: false,
                ),
                  ],
                ),
                const SizedBox(height: 20),
                
                ElevatedButton(onPressed: (){
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(
                    width: 1,
                    color: Colors.black
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),    
                  backgroundColor: const Color.fromRGBO(243,223,198,1),
                  padding: const EdgeInsets.symmetric(horizontal: 120,vertical: 16),
                ), child: const Text('Register',style: TextStyle(color: Colors.black),)),
                const SizedBox(height: 20),
                
              ],
            ),
          ),
        )
      ),
    );
  }


}


 