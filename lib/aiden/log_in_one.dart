import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'log_in_two.dart';

class LogInOne extends StatefulWidget {
  LogInOne({super.key});

  @override
  State<LogInOne> createState() => _LogInOneState();
}

class _LogInOneState extends State<LogInOne> {
  final controllerr = PageController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 213, 241, 198),
              Color.fromARGB(255, 2, 179, 11),
            ],
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(0.2, 1.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp,
          )),
          child: Column(children: [
            SizedBox(
              height: size.height / 1.5,
              width: double.infinity,
              child: PageView.builder(
                  itemCount: 3,
                  controller: controllerr,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: double.infinity,
                      child: Stack(children: [
                        Positioned(
                          right: 10,
                          top: 130,
                          child: CircleAvatar(
                            radius: 40,
                          ),
                        ),
                        Positioned(
                          right: 30,
                          top: 100,
                          child: Container(
                            height: size.width / 9.9,
                            width: size.width / 3.0,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.check_circle_rounded,
                                  color: Colors.blue,
                                  size: 30,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      height: 5,
                                      width: size.width / 5,
                                      decoration: BoxDecoration(
                                          color: Colors.lightBlueAccent,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                    ),
                                    Container(
                                      height: 5,
                                      width: size.width / 7,
                                      decoration: BoxDecoration(
                                          color: Colors.lightBlueAccent,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 40,
                          top: 200,
                          child: CircleAvatar(
                            radius: 50,
                          ),
                        ),
                        Positioned(
                          left: 60,
                          top: 180,
                          child: Container(
                              height: size.width / 9.9,
                              width: size.width / 3.0,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.check_circle_rounded,
                                    color: Colors.blue,
                                    size: 30,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: 5,
                                        width: size.width / 5,
                                        decoration: BoxDecoration(
                                            color: Colors.lightBlueAccent,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                      ),
                                      Container(
                                        height: 5,
                                        width: size.width / 7,
                                        decoration: BoxDecoration(
                                            color: Colors.lightBlueAccent,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                      ),
                                    ],
                                  )
                                ],
                              )),
                        ),
                      ]),
                    );
                  }),
            ),
            Positioned(
              left: 10,
              top: size.height / 1.5,
              child: SmoothPageIndicator(
                controller: controllerr,
                count: 3,
                effect: const ExpandingDotsEffect(
                    dotColor: Colors.greenAccent,
                    dotHeight: 10,
                    dotWidth: 10,
                    activeDotColor: Colors.tealAccent),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LogInTwo()));
                    },
                    child: Container(
                      width: 230,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25)),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.login),
                          Text(
                            ' Continue with E-mail',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
