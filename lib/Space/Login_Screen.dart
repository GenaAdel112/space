import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Home_Screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
              child: Stack(
                children: [
                  Container(
                    color: Colors.black,),
                  Positioned(
                    left: -225,
                    top: 33,
                    child: Image.asset(
                      'assets/images/Sun.png',
                      width: 740,
                      height: 746,
                    ),
                  ),
                  Positioned.fill(
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors:[
                              Colors.transparent,
                              Colors.black12,
                              Colors.black.withOpacity(0.15),
                              Colors.black.withOpacity(0.4),
                            ],
                        ),
                      ),
                      ),
                  ),
                  Positioned(
                    top: 319,
                    left: 16,
                    child: Text('Explore\nThe\nUniverse ',style: TextStyle(
                      color: Colors.white,
                      fontSize: 48,
                      fontWeight: FontWeight.w900,
                      height: 1.05,
                    ),
                    ),
                  ),
                  Positioned(
                    right: 16,
                    left: 16,
                    bottom: 32,
                    child:  SizedBox(
                      height: 52,
                      child: ElevatedButton(onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => HomeScreen()),
                        );
                      },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:Color(0xFFEE403D),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 18),
                          ),
                      child: Row(
                          children: [
                          Text('Explore',textAlign: TextAlign.left,style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),),
                      SizedBox(width: 230,),
                      Icon(Icons.arrow_forward,fontWeight: FontWeight.w600,size: 14,),
                      ],
                    ),
                  )
                    ),
                  ),
                ],
              ),
          ),
      ),
    );
  }

}