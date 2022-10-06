import 'package:custom_paint/teacher_work/router.dart';
import 'package:custom_paint/view/home_page6.dart';
import 'package:custom_paint/view/home_page1.dart';
import 'package:custom_paint/view/home_page2.dart';
import 'package:custom_paint/view/home_page3.dart';
import 'package:custom_paint/view/home_page7.dart';
import 'package:flutter/material.dart';

import 'constatnsts/constants.dart';
import 'view/home_page4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // onGenerateRoute: MyRouter.generateRoute,
      // initialRoute: homeRoute,


      home: Flag(),
    );
  }
}