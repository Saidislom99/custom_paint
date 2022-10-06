import 'package:flutter/material.dart';

class DrawPoints extends StatefulWidget {
  const DrawPoints({Key? key}) : super(key: key);

  @override
  State<DrawPoints> createState() => _DrawPointsState();
}

class _DrawPointsState extends State<DrawPoints> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Draw Points"),),
      body: Center(
        child: Container(
          color: Colors.blue,
          child: CustomPaint(
            painter: Mypainter(),
          ),
        ),
      ),
    );
  }
}
class Mypainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
   var paint = Paint()..color= Colors.black;
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;

}
