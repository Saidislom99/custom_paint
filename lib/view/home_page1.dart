import 'package:flutter/material.dart';

class DrawLine extends StatefulWidget {
  const DrawLine({Key? key}) : super(key: key);

  @override
  State<DrawLine> createState() => _DrawLineState();
}

class _DrawLineState extends State<DrawLine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Draw Line"),),
      body: Column(
        children: [
          Container(
            // width: 300,
            // height: 300,
            color: Colors.blue,
            child: CustomPaint(
              size: const Size(300, 300),
              painter: MyPainter(),
            ),
          ),
        ],
      ),
    );
  }
}

class MyPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
        ..color=Colors.red
      ..strokeWidth=20
        ..strokeCap=StrokeCap.butt;

    canvas.drawLine(
      Offset(30, 50),//(100,100)
      Offset(100, 200), //(200,100)

      paint,
    );

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;

}

