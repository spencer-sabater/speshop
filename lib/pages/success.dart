import 'package:flutter/material.dart';
import 'package:speshop_sabater/pages/home_page.dart';

class Success extends StatelessWidget {
  const Success({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(243,223,198,1),
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
                    ],
                  ),
                  Image.asset('lib/images/completeIcon.png',
                  width: double.infinity,
                  ),
                  const SizedBox(height: 10 ),
                  const Text('Order Complete!',style: TextStyle(fontSize: 27),),
                   const SizedBox(height: 20 ),
                  const Text('Your receipt will be available shortly in',style: TextStyle(fontSize: 18),),
                  const Text('the orders tab',style: TextStyle(fontSize: 18),),
                const SizedBox(height: 30),
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
                  backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                  padding: const EdgeInsets.symmetric(horizontal: 80,vertical: 16),
                ), child: const Text('Continue Shopping',style: TextStyle(color: Colors.white),)),

              ],
            ),
          )
        ),
      ),
    );
  }
}