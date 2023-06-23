import 'package:flutter/material.dart';

class ItemContainer extends StatelessWidget {
  final String imagePath;
  final String shoeInfo;
  final String shoePrice;
  
  const ItemContainer({
    super.key,
    required this.shoeInfo, required this.imagePath, required this.shoePrice
    
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60),
      child: Container(
        padding: const EdgeInsets.all(0.0),
        decoration: BoxDecoration(
          border: Border.all(color: const Color.fromARGB(255, 0, 0, 0), width: 1),
          borderRadius: BorderRadius.circular(0),
          color:  const Color.fromRGBO(243,223,198,1),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(imagePath,height: 300, width: 255,),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 12),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                             Text( shoeInfo,
                             style: const TextStyle(fontSize: 18)),
                             Text(shoePrice,
                             style: const TextStyle(fontSize: 18))
                           ],
                           ),
               ),
            const SizedBox(height: 10)
            ],
           
          ),
          
        ),
        ),
    );
  }
}