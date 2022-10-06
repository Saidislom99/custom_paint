import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class Emoji extends StatefulWidget {
  const Emoji({Key? key}) : super(key: key);

  @override
  State<Emoji> createState() => _EmojiState();
}

class _EmojiState extends State<Emoji> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Emoji"),
      ),
      body: Center(
        child: Container(
          color: Color(0xFFE5E5E5),
          child: CustomPaint(
            size: const Size(200, 200),
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
    final radius = min(size.width, size.height) / 2;
    final center = Offset(size.width / 2, size.height / 2);

    //Draw the body
    var paint = Paint()..color = Colors.yellow;
    canvas.drawCircle(center, 150, paint);


    //Draw the mouth
    var rect = const Offset(45, 100) & const Size(120, 120);
    final smilePaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 10;



    //-------------------------Xursand--------------

    // canvas.drawArc(
    //   Rect.fromCenter(center: center/1, width: radius, height: radius,),
    //   0,
    //   pi,
    //   false,
    //   smilePaint,
    // );


    // ---------------- Xafa------------

    canvas.drawArc(rect, 0.0, -pi, false, smilePaint);


  // ------------ Yaxshi----------------

// var liner= Paint()
//   .. color=Colors.black
//   ..strokeWidth=10
//   ..strokeCap = StrokeCap.round;
//
// canvas.drawRect(Rect.fromCenter(center: const Offset(100, 140), width: 100, height: 20), liner);


    //Draw the eyes
    canvas.drawCircle(
        Offset(center.dx - radius / 2, center.dy - radius / 2), 15, Paint());
    canvas.drawCircle(
        Offset(center.dx + radius / 2, center.dy - radius / 2), 15, Paint());
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}