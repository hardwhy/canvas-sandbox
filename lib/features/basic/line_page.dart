import 'package:canvas/core/core.dart';
import 'package:flutter/material.dart';

class LinePage extends StatelessWidget {
  const LinePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CanvasPage(
      title: 'Line & Axis',
      painter: AxisPainter(),
    );
  }
}

class AxisPainter extends CustomPainter {
  const AxisPainter();
  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);

    final axisPaint = Paint()
      ..color = Colors.grey
      ..strokeWidth = 1;

    // X axis
    canvas.drawLine(
      // x start point on the middle left of the canvas
      Offset(0, center.dy),
      // x end point on the middle right of the canvas
      Offset(size.width, center.dy),
      axisPaint,
    );

    // Y axis
    // y start point on the middle top of the canvas
    canvas.drawLine(
      // y start point on the top side of the canvas
      Offset(center.dx, 0),
      // y end point on the middle bottom of the canvas
      Offset(center.dx, size.height),
      axisPaint,
    );

    final linePaint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.round;


    // draw a line from the top left corner to the center of the canvas
    canvas.drawLine(
      // x start point on the top left corner of the canvas
      Offset(0, 0),
      // y end point on the center of the canvas
      Offset(center.dx, center.dy),
      linePaint,
    );

    // corner points to guide the size of the canvas 
    final debugPaint = Paint()..color = Colors.blueGrey;

    debugPrint('Canvas size: $size');

    canvas.drawCircle(Offset(0, 0), 10, debugPaint);
    canvas.drawCircle(Offset(size.width, 0), 10, debugPaint);
    canvas.drawCircle(Offset(0, size.height), 10, debugPaint);
    canvas.drawCircle(Offset(size.width, size.height), 10, debugPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
