import 'package:flutter/material.dart';
import 'package:speshop_sabater/pages/cart.dart';
import 'package:speshop_sabater/pages/product_info.dart';

class Details extends StatelessWidget{
 const Details ({super.key});
 
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
                      child: Text('SHOPPING',textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,)),
                    ),
                    const SizedBox(width: 60)
                  ],
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const ProductInfo()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(),
                      ),child: Image.asset('lib/images/itemone.png'),
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Row(children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    child: Text('Nike Air Force 1', style: TextStyle(fontSize: 22) ,))
                ],),
                const Divider(
                  color: Colors.black,
                  indent: 50,
                  endIndent: 50,
                  thickness: 1,
                ),
                Row(children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    child: Text('P 2,500', style: TextStyle(color: Color.fromARGB(185, 185, 0, 11),fontSize: 22) ,))
                ],),
                const Divider(
                  color: Colors.black,
                  indent: 50,
                  endIndent: 50,
                  thickness: 1,
                ),
                
                Row(children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    child: Text('Size', style: TextStyle(fontSize: 22) ,))
                ],),
                const SizedBox(height: 5),
                
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                        border: Border.all()
                        
                        ),
                        child: const Center(child: Text('8',style: TextStyle(fontSize: 20),)),
                      ),
                      
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                        color: const Color.fromRGBO(243, 223, 198, 1),
                        border: Border.all()
                        
                        ),
                        child: const Center(child: Text('9',style: TextStyle(fontSize: 20),)),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                        border: Border.all()
                        
                        ),
                        child: const Center(child: Text('9.5',style: TextStyle(fontSize: 20),)),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                        border: Border.all()
                        
                        ),
                        child: const Center(child: Text('10',style: TextStyle(fontSize: 20),)),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                        border: Border.all()
                        
                        ),
                        child: const Center(child: Text('10.5',style: TextStyle(fontSize: 20),)),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Row(children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    child: Text('Quantity', style: TextStyle(fontSize: 22) ,))
                ],),
                const SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all()
                        ),child: const Center(child: Text('-', style: TextStyle(fontSize: 24),)),
                      ),
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all()
                        ),child: const Center(child: Text('1', style: TextStyle(fontSize: 24),)),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all()
                        ),child: const Center(child: Text('+', style: TextStyle(fontSize: 24),)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Row(children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    child: Text('Ratings', style: TextStyle(fontSize: 22) ,))
                ],),
                const SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Row(
                    children: const [
                      Icon(Icons.star,color: Colors.orange,size: 30,),
                      Icon(Icons.star,color: Colors.orange,size: 30,),
                      Icon(Icons.star,color: Colors.orange,size: 30,),
                      Icon(Icons.star,color: Colors.orange,size: 30,),
                      Icon(Icons.star,size: 30,),
                      SizedBox(width: 10,),
                      Text('4.0/5',style: TextStyle(fontSize: 25),)
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                 ElevatedButton(onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const Cart()));
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
                
              ), child: const Text('Add to cart',style: TextStyle(color: Colors.black,fontSize: 20),)),

              const SizedBox(height: 30)
              ],
            ),
          ),
        )
        ),
    );
  }

  
}