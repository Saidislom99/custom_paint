import 'package:custom_paint/teacher_work/example1.dart';
import 'package:flutter/material.dart';

class Flag extends StatefulWidget {
  const Flag({Key? key}) : super(key: key);

  @override
  State<Flag> createState() => _FlagState();
}

class _FlagState extends State<Flag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flag of Uzbekistan"),),
      body: Container(
        margin: EdgeInsets.all(20),
        color: Colors.grey,
        width: 350,
        height: 300,
        child: CustomPaint(
          painter: MyPainter(),
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
    ..color=Colors.blue
    ..style= PaintingStyle.fill;

    var paint2 = Paint()
      ..color=Colors.red
      ..style= PaintingStyle.fill;



    var path=  Path();



    path.moveTo(0, 0);
    path.lineTo(0, 100);
    path.lineTo(size.width, 100);
    path.lineTo(size.width, 0);
    canvas.drawPath(path, paint);


    path.moveTo(0, 120);
    path.lineTo(0, 140);
    path.lineTo(size.width, 140);
    path.lineTo(size.width, 120);
    path.lineTo(0, 120);
    canvas.drawPath(path, paint2);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;

}
