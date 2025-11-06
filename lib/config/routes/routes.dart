import 'package:flutter/material.dart';
import 'package:flutter_bloc_journey/config/routes/routes_name.dart';
import '/views/screen_path.dart';

class Routes {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splashScreen:
        return MaterialPageRoute(builder: (context) => SplashScreen());
      case RoutesName.loginScreen:
        return MaterialPageRoute(builder: (context) => LoginScreen());
      case RoutesName.homeScreen:
        return MaterialPageRoute(builder: (context) => HomeScreen());
      default:
        return MaterialPageRoute(builder: (context) {
          return Scaffold(body: Center(child: Text("No Routes Found"),),);
        },);
    }
  }
}