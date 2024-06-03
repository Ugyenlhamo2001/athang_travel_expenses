import 'package:flutter/material.dart';

class OwnProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(75.0),
        child: AppBar(
          backgroundColor: Colors.deepOrange,
          title: Text(
            'Accounts',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 60),
          Center(
            child: CustomPaint(
              size: Size(150, 150),
              painter: DashedCirclePainter(),
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: ClipOval(
                  child: Icon(
                    Icons.person,
                    size: 80,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                Text(
                  'Ugyen Lhamo',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10), // Space between the texts
                Text(
                  'Software Developer',
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
                SizedBox(height: 10), // Space between the texts
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.calendar_today,
                      size: 20,
                      color: Colors.black,
                    ),
                    SizedBox(width: 5),
                    Text(
                      '24th Dec, 1997',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 10), // Space between the texts
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.location_on_rounded,
                      size: 20,
                      color: Colors.black,
                    ),
                    SizedBox(width: 5),
                    Text(
                      'Thimphu, Bhutan',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(height: 50), // Space between the texts
                Text(
                  'Total Banlance',
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
                SizedBox(height: 10), // Space between the texts
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 5),
                    Text(
                      'Nu.70000',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 26,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 10), // Space between the texts
                Text(
                  'Total Expenses',
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
                SizedBox(height: 10), // Space between the texts
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 5),
                    Text(
                      'Nu.70000',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 26,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DashedCirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double dashWidth = 5, dashSpace = 3;
    final paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    double radius = size.width / 2;
    double circumference = 2 * 3.141592653589793 * radius;
    double dashCount = circumference / (dashWidth + dashSpace);

    for (int i = 0; i < dashCount; ++i) {
      double startAngle = (i * (dashWidth + dashSpace)) / radius;
      double sweepAngle = dashWidth / radius;
      canvas.drawArc(
        Rect.fromCircle(center: Offset(radius, radius), radius: radius),
        startAngle,
        sweepAngle,
        false,
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

// void main() {
//   runApp(MaterialApp(
//     home: OwnProfile(),
//   ));
// }
