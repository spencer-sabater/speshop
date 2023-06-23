import 'package:flutter/material.dart';
import 'package:speshop_sabater/components/my_textfield.dart';
import 'package:speshop_sabater/pages/home_page.dart';
import 'package:speshop_sabater/pages/signup_page.dart';

class Login extends StatefulWidget{
 const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

final usernameController = TextEditingController();

final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
               
                const Text('LOGIN', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),),
                const SizedBox(height: 80),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Text('Email',style: TextStyle(fontSize: 20),)),
                  MyTextField(
                   controller: usernameController,
                   hintText: ' ',
                    obscureText: false,
                ),
                const SizedBox(height: 30),
                const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Text('Password',style: TextStyle(fontSize: 20),)),
                  MyTextField(
                   controller: passwordController,
                   hintText: ' ',
                    obscureText: true,
                ),
                
                  ],
                ),
                const SizedBox(height: 20),
                const Text('Forgot Password',
                style: TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 20),
                ElevatedButton(onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Homepage()));
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
                  padding: const EdgeInsets.symmetric(horizontal: 120,vertical: 12),
                  
                ), child: const Text('Login',style: TextStyle(color: Colors.black,fontSize: 20),)),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    const Text('Don\'t have an account?'),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Signup()));
                    },
                     child: const Text('Sign up',style: TextStyle(color:  Color.fromRGBO(243,223,198,1)),))
                  ] 
                  ),
                  const SizedBox(height: 20),
              ],
            ),
          ),
        )
      ),
    );
  }
}