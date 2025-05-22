import 'package:flutter/material.dart';
import 'package:custom_responsive_button/custom_responsive_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Button Demo',
      home: Scaffold(
        appBar: AppBar(title: const Text('Demo')),
        body: Center(
          child: CustomResponsiveButton(
            text: "Click Me",
            color: Colors.deepPurple,
            onPressed: () {
              print("Button Pressed!");
            },
            borderRadius: 20,
          ),
        ),
      ),
    );
  }
}
