import 'package:flutter/material.dart';
import 'package:flutter_bloc_journey/views/home/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text("Splash Screen", style: TextStyle(fontSize: 30)),
          ),
          SizedBox(height: 50),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
          }, child: Text("Go to Home Screen"))
        ],
      ),
    );
  }
 }
