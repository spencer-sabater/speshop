import 'package:flutter/material.dart';
import 'package:speshop_sabater/pages/success.dart';

class Checkout extends StatelessWidget{
 const Checkout ({super.key});
 
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
                   const SizedBox(width: 50),
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
                      children: const [
                         Text('Nike Air Force 1',
                        style: TextStyle(fontSize: 18),),
                       SizedBox(height: 5),
                         Text('P 2,500',
                        style: TextStyle(fontSize: 18, color: Color.fromARGB(185, 185, 0, 11)),),
                         SizedBox(height: 5),
                        
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 10),
                const Divider(
                  thickness: 3,
                  color: Colors.grey,
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: const [
                      Icon(Icons.location_pin,size: 30,),
                      Text('Delivery Address',style: TextStyle(fontSize: 18),)
                    ],
                  ),
                ),
                const SizedBox(height: 10),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 10),
                 child: Row(
                  children: const [
                    Text('Spencer Sabater\t|',style: TextStyle(fontSize: 15)),
                    Text('\t09269975117',style: TextStyle(fontSize: 15))
                    
                  ],
                 ),
               ),
               const SizedBox(height: 10),
               Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                 child: Row(
                  children: const [
                    Text('#23 Quirino St., Guiset Norte San Manuel,',style: TextStyle(fontSize: 15)),
                  ],
                 ),
               ),
               const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                  children: const [
                    Text('Pangasinan, North Luzon, 2438',style: TextStyle(fontSize: 15)),
                  ],
                               ),
                ),
              const Divider(
                  thickness: 3,
                  color: Colors.grey,
                ),
                const SizedBox(height: 10),
                Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Standard Local', style: TextStyle(fontSize: 18),),
                        SizedBox(height: 10),
                        Text('Receive by May 3-7', style: TextStyle(fontSize: 15,color: Colors.grey),),
                        
                      ],
                    ),
                    Column(
                      children: const [
                        Text('P 35', style: TextStyle(fontSize: 22,color: Colors.red)),
                      ],
                    )
                  ],),
                ),

                const SizedBox(height: 10),
                const Divider(
                  thickness: 3,
                  color: Colors.grey,
                ),
                const SizedBox(height: 10),
                Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Column(
                      children: [
                        Row(
                          children: const [
                           
                            Text('Order Total (1 Item)', style: TextStyle(fontSize: 22),)
                          ],
                        ),
                        
                      ],
                    ),
                    Column(
                      children: const [
                        Text('P 2500', style: TextStyle(fontSize: 22))
                      ],
                    )

                  ],),
                ),
                 const SizedBox(height: 10),
                 const Divider(
                  thickness: 3,
                  color: Colors.grey,
                ),

                const SizedBox(height: 10),
                Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Column(
                      children: [
                        Row(
                          children: const [
                            ImageIcon(AssetImage('lib/images/payIcon.png'),size: 30,),
                            Text('Payment Option', style: TextStyle(fontSize: 18),)
                          ],
                        ),
                        
                      ],
                    ),
                    Column(
                      children: const [
                        Text('Cash On Delivery', style: TextStyle(fontSize: 18))
                      ],
                    )

                  ],),
                ),

                const SizedBox(height: 10),

                const Divider(
                  thickness: 3,
                  color: Colors.grey,
                ),

                const SizedBox(height: 10),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(children: const [
                    ImageIcon(AssetImage('lib/images/detailsIcon.png'),size: 30,),
                    Text('Payment Details',style: TextStyle(fontSize: 22),),
                  ],),
                ),
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Merchandise Subtotal',style: TextStyle(color: Colors.grey,fontSize: 19)),
                         Text('P 2500',style: TextStyle(color: Colors.grey,fontSize: 19)),
                      ],
                  ),
                ),
                const SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Shipping Subtotal',style: TextStyle(color: Colors.grey,fontSize: 19)),
                         Text('P 35',style: TextStyle(color: Colors.grey,fontSize: 19)),
                      ],
                  ),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Total Payment',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
                      Text('P 2535',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
                const SizedBox(height: 30),

              Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const Success()));
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
                  
                ), child: const Text('Place Order',style: TextStyle(color: Colors.black,fontSize: 20),)),
              ),
                
              ],
            ),
          ),
        )
        ),
    );
  }

  
}