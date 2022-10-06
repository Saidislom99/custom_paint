import 'dart:math';

import 'package:flutter/material.dart';

class DrawArc extends StatefulWidget {
  const DrawArc({Key? key}) : super(key: key);

  @override
  State<DrawArc> createState() => _DrawArcState();
}

class _DrawArcState extends State<DrawArc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("DrawArc"),
      ),
      body: Center(
        child: Container(
          color: Colors.blue,
          child: CustomPaint(
            size: const Size(300, 300),
            painter: MyPainter(),
          ),
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var rect = const Offset(50, 0) & const Size(120, 120);
    const startAngle = 0.0;
    const sweepAngle =  1.5*pi/2;
    const useCenter = false;
    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    canvas.drawArc(rect, startAngle, sweepAngle, useCenter, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}