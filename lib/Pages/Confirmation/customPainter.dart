//import 'package:flutter/cupertino.dart';

import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    //pink rectangle
    Paint paint0 = Paint()
      ..color = ui.Color.fromARGB(1000, 255, 176, 176)
      ..style = PaintingStyle.fill
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(size.width * 0.9315833, size.height * 0.0205607);
    path0.lineTo(size.width * 0.0701389, size.height * 0.0170895);
    path0.lineTo(size.width * 0.0690556, size.height * 0.9819493);
    path0.lineTo(size.width * 0.9375000, size.height * 0.9823765);
    path0.lineTo(size.width * 0.9315833, size.height * 0.0205607);
    path0.close();

    canvas.drawPath(path0, paint0);

    //white circle
    Paint paint1 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path1 = Path();
    path1.moveTo(size.width * 0.5190278, size.height * 0.3436449);
    path1.cubicTo(
        size.width * 0.6300833,
        size.height * 0.3431909,
        size.width * 0.7530556,
        size.height * 0.3923097,
        size.width * 0.7455000,
        size.height * 0.4663551);
    path1.cubicTo(
        size.width * 0.7455000,
        size.height * 0.5038451,
        size.width * 0.6531944,
        size.height * 0.5699866,
        size.width * 0.5114722,
        size.height * 0.5688518);
    path1.cubicTo(
        size.width * 0.3990278,
        size.height * 0.5702136,
        size.width * 0.2793056,
        size.height * 0.5217623,
        size.width * 0.2793056,
        size.height * 0.4561415);
    path1.cubicTo(
        size.width * 0.2769444,
        size.height * 0.3971028,
        size.width * 0.3825278,
        size.height * 0.3436449,
        size.width * 0.5190278,
        size.height * 0.3436449);
    path1.close();

    canvas.drawPath(path1, paint1);

    //check mark
    Paint paint2 = Paint()
      ..color = const Color.fromARGB(1000, 255, 176, 176)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path2 = Path();
    path2.moveTo(size.width * 0.3555556, size.height * 0.4566088);
    path2.lineTo(size.width * 0.4000000, size.height * 0.4365821);
    path2.lineTo(size.width * 0.4666667, size.height * 0.4699599);
    path2.lineTo(size.width * 0.6250000, size.height * 0.4005340);
    path2.lineTo(size.width * 0.6666667, size.height * 0.4218959);
    path2.lineTo(size.width * 0.4666667, size.height * 0.5113485);
    path2.lineTo(size.width * 0.3555556, size.height * 0.4566088);
    path2.close();

    canvas.drawPath(path2, paint2);

    ui.ParagraphStyle ps =
        ui.ParagraphStyle(fontSize: 20, textAlign: TextAlign.center);
    ui.TextStyle style = ui.TextStyle(color: ui.Color.fromARGB(255, 0, 0, 0));

    ui.ParagraphConstraints constraints = ui.ParagraphConstraints(width: 300);
    ui.ParagraphBuilder pb = ui.ParagraphBuilder(ps);
    pb.pushStyle(style);
    pb.addText("Account Succesfully Created!");
    final paragraph = pb.build();
    paragraph.layout(constraints);
    canvas.drawParagraph(paragraph, const Offset(30.0, 440.0));

    ui.ParagraphStyle ps2 =
        ui.ParagraphStyle(fontSize: 20, textAlign: TextAlign.center);
    ui.TextStyle style2 = ui.TextStyle(color: ui.Color.fromARGB(255, 0, 0, 0));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
