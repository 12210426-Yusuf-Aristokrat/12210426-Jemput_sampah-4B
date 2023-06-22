library shape_widget;

import 'package:flutter/material.dart';

class Wave extends StatelessWidget {
  const Wave({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: _WaveClipper(),
      child: Container(
        width: double.infinity,
        height: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xff0593fe), Color(0xea034e87)],
          ),
        ),
      ),
    );
  }
}

class _WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    path.lineTo(0, size.height - 40);
    path.quadraticBezierTo(
        size.width / 4, size.height - 80, size.width / 2, size.height - 80);
    path.quadraticBezierTo(
        size.width * 3 / 4, size.height - 90, size.width, size.height - 130);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(_WaveClipper oldClipper) => false;
}



class CustomGradientContainer extends StatelessWidget {
  final double width;
  final double height;

  const CustomGradientContainer({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 53, 167, 255),
              Color(0xff034e87),
              Color.fromARGB(255, 53, 167, 255),
            ],
            stops: [0.0, 0.5, 1.0],
            tileMode: TileMode.clamp,
          ),
          color: Colors.white,
        ),
      ),
    );
  }
}

class Rectangle extends StatelessWidget {
  final double height;

  const Rectangle({
    super.key,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
          colors: [Color(0xff0593fe), Color(0xf6047ad4), Color(0xe5024e87)],
        ),
      ),
    );
  }
}
