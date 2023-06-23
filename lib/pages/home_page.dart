import 'package:flutter/material.dart';
import 'package:speshop_sabater/components/item_container.dart';
import 'package:speshop_sabater/pages/cart.dart';
import 'package:speshop_sabater/pages/profile.dart';
import 'package:speshop_sabater/pages/shopping.dart';

class Homepage extends StatelessWidget{
 Homepage({super.key});
 
final usernameController = TextEditingController();

final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.fromLTRB(10,20,10,10),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const Cart()));
              }, icon: Image.asset('lib/images/cartIcon.png',width: 30,height: 50,)),
              IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const Profile()));
              }, icon: Image.asset('lib/images/profileIcon.png',width: 30,height: 50,)),
          ],),
        )
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              const SizedBox(height: 5),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 35),
                child: TextField(
                    decoration: InputDecoration(
                    border: OutlineInputBorder(
                      
                      borderSide: BorderSide(color: Colors.black,width: 10),
                      borderRadius: BorderRadius.all(Radius.circular(40),
                      )
                    ),
                    
                    suffixIcon: Icon(Icons.search),
                    hintText: 'Search'
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Padding(padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text('Products',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)
                  )
                ],
              ),
              const SizedBox(height: 20),
              GestureDetector(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const Details() ));
              },
                child: const ItemContainer(shoeInfo: 'Nike Air Force 1', imagePath: 'lib/images/itemone.png', shoePrice: 'P 2,500.00')),
              const SizedBox(height: 20),
              const ItemContainer(shoeInfo: 'Nike Huarache', imagePath: 'lib/images/itemtwo.png', shoePrice: 'P 4,500.00'),
              const SizedBox(height: 20),
            ],
          ),
        )
      ),
    );
  }


}


 