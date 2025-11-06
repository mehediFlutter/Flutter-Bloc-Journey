import 'package:flutter/material.dart';
import 'package:flutter_bloc_journey/config/routes/routes.dart';
import 'package:flutter_bloc_journey/config/routes/routes_name.dart';
import 'package:flutter_bloc_journey/views/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
 initialRoute: RoutesName.splashScreen,
      onGenerateRoute: Routes.generateRoutes,

    );
  }
}


