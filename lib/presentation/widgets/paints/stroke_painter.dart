import 'package:flutter/material.dart';

class CustomStrokePainter extends StatelessWidget {
  const CustomStrokePainter({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: CustomStrokeWidget(),
      size: const Size(200, 200),
    );
  }
}

class CustomStrokeWidget extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final startPoint = Offset(10, size.height / 2);
    final ednPoint = Offset(size.width, size.height / 2);
    final ednPoint2 = Offset(size.width * 0.70, size.height / 2);

    paintFilmStrokeTimeLine(canvas, startPoint, ednPoint, size);
    paintFimStrokeWatchedLine(canvas, startPoint, ednPoint2, size);
  }

  void paintFilmStrokeTimeLine(
      Canvas canvas, Offset startPoint, Offset endPoint, Size size) {
    final paint = Paint()
      ..color = const Color.fromRGBO(255, 255, 255, 0.5)
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 5;

    canvas.drawLine(startPoint, endPoint, paint);
  }

  void paintFimStrokeWatchedLine(
      Canvas canvas, Offset startPoint, Offset endPoint, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 5;

    canvas.drawLine(startPoint, endPoint, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
