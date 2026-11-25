import 'package:flutter/material.dart';

class SpinningPlanet extends StatefulWidget {
  final String image;
  SpinningPlanet({super.key, required this.image});

  @override
  State<SpinningPlanet> createState() => _SpinningPlanetState();
}

class _SpinningPlanetState extends State<SpinningPlanet>
    with SingleTickerProviderStateMixin {
  late final AnimationController _c = AnimationController(
    vsync: this,
    duration: Duration(seconds: 40),
  )..repeat();

  @override
  void dispose() {
    _c.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: _c,
      child: Image.asset(widget.image, fit: BoxFit.contain),
    );
  }
}