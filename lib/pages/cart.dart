import 'package:flutter/material.dart';
import 'package:speshop_sabater/pages/checkout.dart';

class Cart extends StatelessWidget{
 const Cart ({super.key});
 
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
                   
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                   const Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 5),
                      child:  Icon(Icons.check_box),
                    ), 
                    const SizedBox(width: 10),
                    Container(
                      height: 98,
                      width: 98,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey)
                      ),child: Image.asset('lib/images/itemone.png',fit: BoxFit.fill,),
                    ),
                    const SizedBox(width: 5),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        const Text('Nike Air Force 1',
                        style: TextStyle(fontSize: 18),),
                        const SizedBox(height: 5),
                        const Text('P 2,500',
                        style: TextStyle(fontSize: 18, color: Color.fromARGB(185, 185, 0, 11)),),
                        const SizedBox(height: 5),
                        Padding(
                         padding: const EdgeInsets.all(0),
                        child: Row(
                        children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          border: Border.all()
                        ),child: const Center(child: Text('-', style: TextStyle(fontSize: 24),)),
                      ),
                      Container(
                        width: 80,
                        height: 40,
                        decoration: BoxDecoration(
                          border: Border.all()
                        ),child: const Center(child: Text('1', style: TextStyle(fontSize: 24),)),
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          border: Border.all()
                        ),child: const Center(child: Text('+', style: TextStyle(fontSize: 24),)),
                      ),
                    ],
                  ),
                ),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 20),
                const Divider(
                  thickness: 8,
                  color: Colors.grey,
                ),


                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                   const Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 5),
                      child:  Icon(Icons.check_box_outline_blank),
                    ), 
                    const SizedBox(width: 10),
                    Container(
                      height: 98,
                      width: 98,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey)
                      ),child: Image.asset('lib/images/itemtwo.png',fit: BoxFit.fill,),
                    ),
                    const SizedBox(width: 5),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        const Text('Nike Air Force 1',
                        style: TextStyle(fontSize: 18),),
                        const SizedBox(height: 5),
                        const Text('P 4,500',
                        style: TextStyle(fontSize: 18, color: Color.fromARGB(185, 185, 0, 11)),),
                        const SizedBox(height: 5),
                        Padding(
                         padding: const EdgeInsets.all(0),
                        child: Row(
                        children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          border: Border.all()
                        ),child: const Center(child: Text('-', style: TextStyle(fontSize: 24),)),
                      ),
                      Container(
                        width: 80,
                        height: 40,
                        decoration: BoxDecoration(
                          border: Border.all()
                        ),child: const Center(child: Text('1', style: TextStyle(fontSize: 24),)),
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          border: Border.all()
                        ),child: const Center(child: Text('+', style: TextStyle(fontSize: 24),)),
                      ),
                    ],
                  ),
                ),
                      ],
                    )
                  ],
                ),

            
              const SizedBox(height: 250),
              Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const Checkout()));
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
                  
                ), child: const Text('Checkout',style: TextStyle(color: Colors.black,fontSize: 20),)),
              ),
                
              ],
            ),
          ),
        )
        ),
    );
  }

  
}