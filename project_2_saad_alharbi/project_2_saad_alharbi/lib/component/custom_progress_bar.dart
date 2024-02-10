import 'package:flutter/material.dart';

class CustomProgressBar extends CustomPainter {
  CustomProgressBar({
    required this.value,
    this.barHeight = 15,
    this.barColor = const Color(0xffECC055),
    this.backgroundColor = const Color(0xffC4C4C4),
  });
  double? value;
  double? barHeight;
  Color? barColor;
  Color? backgroundColor;

  @override
  void paint(Canvas canvas, Size size) {
    final barHeight = this.barHeight;
    final circleRadius = barHeight! / 2;
    final value = this.value!;
    final barColor = this.barColor!;
    final backgroundColor = this.backgroundColor!;

    //draw bar background
    final paintSecondary = Paint()
      ..style = PaintingStyle.fill
      ..strokeJoin = StrokeJoin.round
      ..color = backgroundColor;

    final path2 = Path()
      ..moveTo(0, size.height)
      ..lineTo(size.width - circleRadius, size.height)
      ..lineTo(size.width - circleRadius, size.height - barHeight)
      ..lineTo(5, size.height - barHeight)
      ..close();

    canvas.drawPath(path2, paintSecondary);

    //draw bar
    final paintMain = Paint()
      ..style = PaintingStyle.fill
      ..strokeJoin = StrokeJoin.round
      ..color = barColor;

    final path = Path()
      ..moveTo(0, size.height)
      ..lineTo(size.width * value - circleRadius, size.height)
      ..lineTo(size.width * value - circleRadius, size.height - barHeight)
      ..lineTo(2 , size.height - barHeight)
      ..close();

    canvas.drawPath(path, paintMain);

    final capPaint = Paint()..color = backgroundColor;
    canvas.drawCircle(
        Offset(size.width - circleRadius, size.height - circleRadius),
        circleRadius,
        capPaint);
    
    final capPaint2 = Paint()..color = barColor;
    canvas.drawCircle(
        Offset(size.width * value - circleRadius/1.3, size.height - circleRadius),
        circleRadius,
        capPaint2);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}