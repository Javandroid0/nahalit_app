import 'package:flutter/material.dart';
import 'package:nahal_it/VideoPlayerWidget.dart';
// import 'package:fluttertest/VideoPlayerWidget.dart';

class GiridView extends StatelessWidget {
  const GiridView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Card(
            child: GridView.count(
              padding: const EdgeInsets.all(6.0),
              crossAxisCount: 1,
              children: List.generate(6, (index) {
                return Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.blue,
                      width: 5,
                    ),
                  ),
                  child: const Center(
                    child: VideoPlayerWidget(),
                  ),
                );
              }),
            ),
          )),
    );
  }
}
