




import 'dart:async';
import 'package:apinwes_demo/home_screen.dart';
import 'package:flutter/material.dart';


import 'package:flutter_spinkit/flutter_spinkit.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    
    super.initState();
    
    Timer(Duration(seconds: 2), () { 
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
    });

  }
  
  
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1 ;
  //  final width = MediaQuery.sizeOf(context).width * 1 ;

    return  Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/heaith.jpeg',
            fit: BoxFit.cover,
              height:  height * .5,
            ),
            SizedBox(height: height * 0.04,),
            Text('TOP HEADLINES' , style: TextStyle(letterSpacing: .6 , color: Colors.grey.shade700),),
            SizedBox(height: height * 0.04,),
            SpinKitChasingDots(
              color: Colors.blue ,
                size: 40,
            )

          ],
        ),
      ),
    );
  }
}