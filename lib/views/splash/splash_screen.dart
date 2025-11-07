import 'package:flutter/material.dart';
import 'package:flutter_bloc_journey/config/routes/routes_name.dart';
import 'package:flutter_bloc_journey/views/widgets/custom_button.dart';
import 'package:flutter_bloc_journey/views/widgets/internet_exception.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InternetException(
            onTap: (){},
          ),
          Center(child: Text("Splash Screen", style: TextStyle(fontSize: 30))),
          SizedBox(height: 50),

          CustomButton(
            width: 200.w,
            title: 'Go to Home Scree',
            onTap: () {
              Navigator.pushNamed(context, RoutesName.homeScreen);
            },
          ),
        ],
      ),
    );
  }
}
