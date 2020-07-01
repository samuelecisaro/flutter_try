import 'dart:math' as Math;
import 'package:flutter/material.dart';
import 'package:fluttertry/constants.dart';

class PieChart extends CustomPainter {
  
  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = Math.min(size.width / 2, size.height / 2);

    double startAngle = -Math.pi/2;
    double total = 0.0;

    spendinds.forEach((element) { 
      total += element['amount'];
    });

 
    int index = 0;
    for(var singleSpending in spendinds) {
      var sweepAngle = singleSpending['amount']/total * 2 * Math.pi;
      var t = Math.pi * 2;
         var paint = Paint()
      ..color = spendingsCOlor[index]
      ..style = PaintingStyle.stroke
      ..strokeWidth = 55;
      canvas.drawArc(Rect.fromCircle(center: center, radius: radius/1.8), startAngle, sweepAngle, false, paint);
      index++;
      startAngle += sweepAngle; 
    }
  }
  
  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}