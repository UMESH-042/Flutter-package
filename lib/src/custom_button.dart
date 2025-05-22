import 'package:flutter/material.dart';

class CustomResponsiveButton extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback onPressed;
  final double? width;
  final double? height;
  final double borderRadius;
  final TextStyle? textStyle;

  const CustomResponsiveButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.color = Colors.blue,
    this.width,
    this.height,
    this.borderRadius = 12.0,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      width: width ?? screenWidth * 0.8,
      height: height ?? 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: textStyle ??
              const TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
        ),
      ),
    );
  }
}
