import 'package:flutter/material.dart';
import 'planet.dart';
import 'Spinning.dart';

class PlanetDetailsScreen extends StatelessWidget {
  final Planet planet;
  PlanetDetailsScreen({super.key, required this.planet});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Stack(
              children: [
                SizedBox(
                  height: 150,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.asset(
                        'assets/images/Moon.png',
                        fit: BoxFit.cover,
                        width: 375,
                        alignment: Alignment.topCenter,
                      ),
                      DecoratedBox(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              Color(0x99000000),
                              Colors.black,
                            ],
                            stops: [0.0, 0.55, 1.0],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SafeArea(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 56,
                          child: Center(
                            child: Text(planet.name,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                        SizedBox(height: 25,),
                        Text(planet.subtitle,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                        SizedBox(height: 40),
                        Center(
                          child: SizedBox(
                            height: 260,
                            width: 260,
                            child: SpinningPlanet(image: planet.image),
                          ),
                        ),

                        SizedBox(height: 24),
                        Text('About',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold)),
                        SizedBox(height: 8),
                        Text(planet.about,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                                height: 1.5)),
                        SizedBox(height: 16),
                        ...planet.stats.entries.map((e) => Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Text('${e.key} : ${e.value}',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold)),
                        )),
                        SizedBox(height: 24),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SafeArea(
            child: Padding(
              padding:EdgeInsets.fromLTRB(16, 12, 16, 0),
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  width: 32,
                  height: 32,
                  decoration:BoxDecoration(
                      color: Color(0xFFEE403D), shape: BoxShape.circle),
                  child:Icon(Icons.arrow_back,
                      color: Colors.white, size: 18),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}