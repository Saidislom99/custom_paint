import 'package:flutter/material.dart';

import '../constatnsts/constants.dart';
import '/teacher_work/widgets/my_button.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> routeNames = [
    example0Route,
    example1Route,
    example2Route,
    example3Route,
    example4Route,
    example5Route,
    example6Route,
    example7Route,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animations"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...List.generate(
              routeNames.length,
                  (index) => ListTile(
                title: Text("Example ${index + 1}"),
                onTap: () {
                  Navigator.pushNamed(context, routeNames[index]);
                },
              ),
            ),
            myButton(() {
              Navigator.pushNamed(context, example3Route);
            })
          ],
        ),
      ),
    );
  }
}