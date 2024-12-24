import 'package:apinwes_demo/home_screen.dart';
import 'package:flutter/material.dart';
class LandindPage extends StatefulWidget {
  const LandindPage({super.key});

  @override
  State<LandindPage> createState() => _LandindPageState();
}

class _LandindPageState extends State<LandindPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Container(
  margin: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
  child: Column(
  
    children: [
      Material(
        elevation: 3.0,
        borderRadius: BorderRadius.circular(30),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Image.asset("assets/images/news.jpeg",
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height/1.7,
          fit: BoxFit.cover,),
        ),
      ),
      SizedBox(height: 15,),
      Text("News from around the\n        world for you",style: TextStyle(fontSize:26 ,fontWeight: FontWeight.bold,
      color: Colors.black),),
        SizedBox(height: 15,),
      Text("Best time to read, take your time to read\n          a little more of this world",style: TextStyle(fontSize:18 ,fontWeight: FontWeight.bold,
      color: Colors.black45),),

      SizedBox(height: 15,),
      GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
        },
        child: Container(
            width: MediaQuery.of(context).size.width/1.2,
            
          child: Material(
             borderRadius: BorderRadius.circular(30),
             elevation: 5.0,
            child: Container(
             padding: EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(color: Colors.blue,
              borderRadius: BorderRadius.circular(30)),
              child: Center(
                child: Text("Get Started",style: TextStyle(
                  fontSize:17 ,
                  fontWeight: FontWeight.bold,
                      color: Colors.white),),
              ),
            ),
          ),
        ),
      )
    ],
  ),
),
    );
  }
}