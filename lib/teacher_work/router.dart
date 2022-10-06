import 'package:flutter/material.dart';

import '../constatnsts/constants.dart';
import 'example0.dart';
import 'example1.dart';
import 'example2.dart';
import 'example3.dart';
import 'example4.dart';
import 'example5.dart';
import 'example6.dart';
import 'example7.dart';
import 'home_screen.dart';

class MyRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case example0Route:
        return MaterialPageRoute(builder: (_) => Example0());
      case example1Route:
        return MaterialPageRoute(builder: (_) => Example1());
      case example2Route:
        return MaterialPageRoute(builder: (_) => Example2());
      case example3Route:
        return MaterialPageRoute(builder: (_) => Example3());
      case example4Route:
        return MaterialPageRoute(builder: (_) => Example4());
      case example5Route:
        return MaterialPageRoute(builder: (_) => Example5());
      case example6Route:
        return MaterialPageRoute(builder: (_) => Example6());
      case example7Route:
        return MaterialPageRoute(builder: (_) => Example7());


      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
              body: Center(
                  child: Text('No route defined for ${settings.name}')),
            ));
    }
  }
}