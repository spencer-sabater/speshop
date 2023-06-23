import 'package:flutter/material.dart';
import 'package:speshop_sabater/pages/login_page.dart';

class Profile extends StatelessWidget{
 const Profile ({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 10),
                Row(
                  children: [
                    IconButton(onPressed: (){
                    Navigator.pop(context);
                    } ,padding: const EdgeInsets.all(0), icon: const Icon(Icons.arrow_back_ios_new, size: 30,)),
                    const Expanded(
                      child: Text('PROFILE',textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,)),
                    ),
                    const SizedBox(width: 60)
                  ],
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                    ),child: Image.asset('lib/images/avatar.png',fit: BoxFit.contain,),
                  ),
                ),
                const SizedBox(height: 10),
                const Text('Spencer T. Sabater',
                style: TextStyle(fontSize: 24),),
                const SizedBox(height: 180),

              ElevatedButton(onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const Login()));
              },
              style: ElevatedButton.styleFrom(
                side: const BorderSide(
                  width: 1,
                  color: Colors.transparent
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ),    
                backgroundColor: const Color.fromRGBO(243,223,198,1),
                padding: const EdgeInsets.symmetric(horizontal: 120,vertical: 12),
                
              ), child: const Text('Logout',style: TextStyle(color: Colors.black,fontSize: 20),)),
                
              ],
            ),
          ),
        )
        ),
    );
  }

  
}