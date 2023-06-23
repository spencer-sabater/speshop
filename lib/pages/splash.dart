import 'package:flutter/material.dart';
import 'package:speshop_sabater/pages/login_page.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});


  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

void initState() {
    
    super.initState();
    _navigateNext();
  }

  _navigateNext() async{
    await Future.delayed(const Duration(milliseconds: 2500),(){});
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const Login()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(
      child: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Image.asset('lib/images/splash.png', fit: BoxFit.fill,),
      ),
     ),
    );
  }
  
}
