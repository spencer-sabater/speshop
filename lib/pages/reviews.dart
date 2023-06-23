import 'package:flutter/material.dart';

class Reviews extends StatelessWidget{
const Reviews({super.key});

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
                      child: Text('Reviews',textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,)),
                    ),
                    const SizedBox(width: 60)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(237, 237, 237, 237),
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
                const Divider(
                  thickness: 2,
                  indent: 30,
                  endIndent: 30,
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    children:const [
                      ImageIcon(AssetImage('lib/images/addRevIcon.png')),
                      SizedBox(width: 2),
                      Text('Add Review',style: TextStyle(fontSize: 18),)
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                const Divider(
                  thickness: 2,
                  indent: 30,
                  endIndent: 30,
                ),

                const SizedBox(height: 10),
                
                 Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: const [
                      Text('User Review',style: TextStyle(fontSize: 18),),
                    ],
                  ),
                  ),
                  const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 170,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(237, 237, 237, 237),
                      border: Border.all(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(20),
                    ),child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: const [
                                Icon(Icons.account_circle,size: 30),
                                Text('Igop',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                                SizedBox(width: 5),
                                Text('2h ago', style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 20),)
                                  ],
                                ),
                                Row(
                                  children: const [
                                      Icon(Icons.star,color: Colors.orange,size: 20,),
                                      Icon(Icons.star,color: Colors.orange,size: 20,),
                                      Icon(Icons.star,color: Colors.orange,size: 20,),
                                      Icon(Icons.star,color: Colors.orange,size: 20,),
                                      Icon(Icons.star,size: 20,),
                                  ],
                                ),                               
                              ],
                              ),
                            const SizedBox(height: 20),
                            const Text('super legit', style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 18),)
                          ],
                        ),
                      ),
                        ),
                  ),
                ),
                const SizedBox(height: 20),
                 Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 170,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(237, 237, 237, 237),
                      border: Border.all(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(20),
                    ),child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: const [
                                Icon(Icons.account_circle,size: 30),
                                Text('Kobe10',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                                SizedBox(width: 5),
                                Text('13h ago', style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 20),)
                                  ],
                                ),
                                Row(
                                  children: const [
                                      Icon(Icons.star,color: Colors.orange,size: 20,),
                                      Icon(Icons.star,color: Colors.orange,size: 20,),
                                      Icon(Icons.star,color: Colors.orange,size: 20,),
                                      Icon(Icons.star,color: Colors.orange,size: 20,),
                                      Icon(Icons.star,color: Colors.orange,size: 20,),
                                  ],
                                ),                               
                              ],
                              ),
                            const SizedBox(height: 20),
                            const Text('ang ganda niya sobra at legit siya', style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 18),)
                          ],
                        ),
                      ),
                        ),
                  ),
                ),

              ],
            ),
          ),
        )
        ),
    );
  }
}
  
