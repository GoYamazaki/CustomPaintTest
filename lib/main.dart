import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: HomeWidget(),
      ),
    );
  }
}

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 30),
      child: CustomPaint(
        size: Size(300, 50),
        painter: MyPainter(),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final textStyle = TextStyle(
        color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold);
    final textSpan = TextSpan(
      text: 'アイウエオかきくけこ',
      style: textStyle,
    );
    final textPainter = TextPainter(
        text: textSpan, textDirection: TextDirection.ltr, maxLines: 1);

    textPainter.layout(
      minWidth: 0,
      maxWidth: size.width,
    );
    final offset = Offset(0, 0);
    textPainter.paint(canvas, offset);

    print(textPainter.didExceedMaxLines);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}
