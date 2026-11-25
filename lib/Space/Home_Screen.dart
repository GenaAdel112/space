import 'package:flutter/material.dart';
import 'planet.dart';
import 'Planet_Details_Screen.dart';


class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _controller = PageController(viewportFraction: 1.0);
  int _index = 0;

  void _go(int i) {
    if (i < 0) {
      Navigator.pop(context);
      return;
    }
    if (i < 0 || i >= planets.length) return;
    _controller.animateToPage(
      i,
      duration:Duration(milliseconds: 350),
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final planet = planets[_index];
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned(
            top: 0, left: 0, right: 0, height: 160,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset('assets/images/Moon.png', fit: BoxFit.cover),
                DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.transparent, Colors.black],
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
                  SizedBox(height: 12),
                  Center(
                    child: Text('Explore',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(height: 60),
                  Text(
                    'Which planet\nwould you like to explore?',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                    child: PageView.builder(
                      controller: _controller,
                      itemCount: planets.length,
                      onPageChanged: (i) => setState(() => _index = i),
                      itemBuilder: (_, i) => Padding(
                        padding:EdgeInsets.all(10),
                        child: Image.asset(planets[i].image,
                            fit: BoxFit.contain),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Opacity(
                        opacity: _index == 0 ? 0 : 1,
                        child: IgnorePointer(
                          ignoring: _index == 0,
                          child: _CircleArrow(
                            icon: Icons.arrow_back,
                            onTap: () => _go(_index - 1),
                          ),
                        ),
                      ),

                      Text(
                        planet.name,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Opacity(
                        opacity: _index == planets.length - 1 ? 0 : 1,
                        child: IgnorePointer(
                          ignoring: _index == planets.length - 1,
                          child: _CircleArrow(
                            icon: Icons.arrow_forward,
                            onTap: () => _go(_index + 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 24),
                  SizedBox(
                    width: double.infinity,
                    height: 52,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFEE403D),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        padding: EdgeInsets.symmetric(horizontal: 18),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => PlanetDetailsScreen(planet: planet),
                          ),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Explore ${planet.name}',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w400)),
                          Icon(Icons.arrow_forward, size: 20),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _CircleArrow extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  _CircleArrow({required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 32,
        height: 32,
        decoration: BoxDecoration(
            color: Color(0xFFEE403D), shape: BoxShape.circle),
        child: Icon(icon, color: Colors.white, size: 18),
      ),
    );
  }
}