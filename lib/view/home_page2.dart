import 'package:flutter/material.dart';

class DrawRect extends StatefulWidget {
  const DrawRect({Key? key}) : super(key: key);

  @override
  State<DrawRect> createState() => _DrawRectState();
}

class _DrawRectState extends State<DrawRect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text("Draw Rect"),),
      body: Center(
        child: Container(
          color: Colors.yellow,
          child: CustomPaint(
            size: const Size(400, 300),
            painter: MyPainter(),
          ),
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
   var paint = Paint()
       ..color=Colors.red;

   var paint2 = Paint()
     ..color=Colors.blue;

   var paint3 = Paint()
     ..color=Colors.white;

   var paint4 = Paint()
     ..color=Colors.green;


   canvas.drawRect(
    // const Offset(0, 0) & const Size(150, 150),
     Rect.fromCenter(center: const Offset(40, 40), width: 800, height:120 ),
     paint2,
   );
   canvas.drawRect(
     //const Offset(0, 0) & const Size(150, 150),
     Rect.fromCenter(center: const Offset(0, 100), width: 800, height: 10),
     paint,
   );

   canvas.drawRect(
     //const Offset(0, 0) & const Size(150, 150),
     Rect.fromCenter(center: const Offset(0, 165), width: 800, height: 120),
     paint4,
   );
   canvas.drawRect(
     //const Offset(0, 0) & const Size(150, 150),
     Rect.fromCenter(center: const Offset(0, 220), width: 800, height: 10),
     paint,
   );
   canvas.drawRect(
     //const Offset(0, 0) & const Size(150, 150),
     Rect.fromCenter(center: const Offset(0, 280), width: 800, height: 110),
     paint3,
   );


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) =>true;

}
