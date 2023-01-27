import 'package:flutter/material.dart';

class Notepad extends StatefulWidget {
  final Rect? area;

  Notepad({this.area});
  @override
  _NotepadState createState() => _NotepadState();
}

class _NotepadState extends State<Notepad> {
  final _paint = Paint()
    ..color = Colors.black
    ..strokeCap = StrokeCap.round
    ..strokeWidth = 5.0;
    
  var _points = <Offset>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onPanUpdate: (details) {
          // _points.add(details.localPosition);
          // setState(() {});
          if (widget.area!.contains(details.globalPosition)) {
            setState(() {
              _points = List.from(_points)..add(details.localPosition);
            });
          }
        },
        onPanEnd: (details) => _points.clear(),
        child: InkWell(

          child: CustomPaint(
            painter: _DrawingLinePainter(_points, _paint),
            child: Container(
              height: 100,
              width: 100,
            ),
          ),
        ),
      ),
    );
  }
}

class _DrawingLinePainter extends CustomPainter {
  _DrawingLinePainter(this.points, this.paintt);

  final List<Offset> points;
  final Paint paintt;

  @override
  void paint(Canvas canvas, Size size) {
     Path path0 = Path();
    path0.moveTo(size.width*0.3621667,size.height*0.3542857);
    path0.lineTo(size.width*0.4166667,size.height*0.2871429);
    path0.lineTo(size.width*0.4591667,size.height*0.2857143);
    path0.lineTo(size.width*0.4575000,size.height*0.3585714);
    path0.lineTo(size.width*0.4583333,size.height*0.4257143);
    path0.lineTo(size.width*0.4575000,size.height*0.4985714);
    path0.lineTo(size.width*0.4575000,size.height*0.5714286);
    path0.lineTo(size.width*0.4150000,size.height*0.5714286);
    path0.lineTo(size.width*0.4158333,size.height*0.5000000);
    path0.lineTo(size.width*0.4166667,size.height*0.4242857);
    path0.lineTo(size.width*0.4158333,size.height*0.3528571);
    path0.lineTo(size.width*0.3621667,size.height*0.3542857);
    path0.close();

    canvas.drawPath(path0, paintt);

    for (int i = 0; i < points.length - 1; i++) {
      if (points[i] != null && points[i + 1] != null)
        canvas.drawLine(points[i], points[i + 1], paintt);
    }
  }

  @override
  bool shouldRepaint(_DrawingLinePainter oldDelegate) {
    return oldDelegate.points != points;
  }
}



