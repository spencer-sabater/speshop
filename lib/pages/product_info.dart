import 'package:flutter/material.dart';
import 'package:speshop_sabater/pages/reviews.dart';

class ProductInfo extends StatelessWidget{
 const ProductInfo ({super.key});
 
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
                      child: Text('PRODUCT INFO',textAlign: TextAlign.center,
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
                    ),child: Image.asset('lib/images/itemone.png'),
                  ),
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    child: SizedBox(
                    child: Text('Nike Air Force 1',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                                 ),
                  ),
                ),
                const Text('The original high-flier. From era-echoing, 80\'s\nconstruction to bold details and nothin\'-but\n-net style, the AF-1 elevate your game with\npremium materials, plush ankle padding and\nan adjustable strap.',
                style: TextStyle(fontSize: 15),),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(237, 237, 237, 237),
                      border: Border.all( color: Colors.transparent),
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                    ),child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        const SizedBox(height: 40),
                        const Text('4.0/5',style: TextStyle(fontSize: 25),),
                        const Text('Reviews and Ratings',style: TextStyle(fontSize: 18)),
                      Row(
                        children: const [
                      Icon(Icons.star,color: Colors.orange,size: 30,),
                      Icon(Icons.star,color: Colors.orange,size: 30,),
                      Icon(Icons.star,color: Colors.orange,size: 30,),
                      Icon(Icons.star,color: Colors.orange,size: 30,),
                      Icon(Icons.star,size: 30,),
                        ],
                      )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Reviews()));
                    },
                    child: Row(
                      children: const [
                        ImageIcon(AssetImage('lib/images/reviewIcon.png'),size: 40),
                        Text('Reviews',style: TextStyle(fontSize: 18),)
                      ],
                    ),
                  ),
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