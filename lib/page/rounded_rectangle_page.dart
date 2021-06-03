import 'package:flutter/material.dart';

class RoundedRectanglePaintPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: CustomPaint(

            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100,vertical: 50),
              child: Text("Submit",style: TextStyle(color: Colors.white),),
            ),
            painter: RoundedRectanglePainter(),
          ),
        ),
      );
}

class RoundedRectanglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke;

    final a = Offset(size.width * 1 / 6, size.height * 1 / 4);
    final b = Offset(size.width * 5 / 6, size.height * 3 / 4);
    final rect = Rect.fromPoints(a, b);
    final radius = Radius.circular(10);

    canvas.drawRRect(RRect.fromRectAndRadius(rect, radius), paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
