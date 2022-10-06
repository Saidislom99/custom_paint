import 'package:flutter/material.dart';
class DrawCircle extends StatefulWidget {
  const DrawCircle({Key? key}) : super(key: key);

  @override
  State<DrawCircle> createState() => _DrawCircleState();
}

class _DrawCircleState extends State<DrawCircle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Draw Circle"),),
      backgroundColor: const Color(0xFFE5E5E5),
      body: Center(
        child: Container(
          color: Colors.yellow,
          child: CustomPaint(
            painter: MYYPP(),
            size: const Size(300, 300),
          )
          ,
        ),
      ),
    );
  }
}
class MYYPP extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()..color= Colors.green;
    canvas.drawCircle(Offset(size.width*0.5, size.height*0.6), 100, paint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate){
    return true;
  }

}
