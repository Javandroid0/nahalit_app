import 'package:flutter/material.dart';

import 'log_in_one.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static const String tag = '/SplashScreenRoute';
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LogInOne()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/splash_screen.jpg'),
                    fit: BoxFit.cover)),
          ),
          const Positioned(
              left: 0,
              right: 0,
              top: 600,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Nahal ',
                        style: TextStyle(
                            color: Color.fromARGB(255, 6, 88, 10),
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        ' It',
                        style: TextStyle(
                            fontSize: 40,
                            color: Color.fromARGB(255, 116, 224, 83),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
