import 'package:flutter/material.dart';

class CanvasPage extends StatelessWidget {
  final String title;
  final CustomPainter painter;

  const CanvasPage({
    super.key,
    required this.title,
    required this.painter,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      backgroundColor: Colors.grey[200],
      body: Center(
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black),
          ),
          child: AspectRatio(
            aspectRatio: 1,
            child: CustomPaint(
              painter: painter,
              size: Size.infinite,
            ),
          ),
        ),
      ),
    );
  }
}