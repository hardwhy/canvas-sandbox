import 'package:canvas/features/basic/basic.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CanvasLabApp());
}

class CanvasLabApp extends StatelessWidget {
  const CanvasLabApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Canvas Lab',
      home: const LinePage(),
    );
  }
}