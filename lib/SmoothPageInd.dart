import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SmoothPageInd extends StatelessWidget {
  const SmoothPageInd({
    super.key,
    required PageController controler,
  }) : _controler = controler;

  final PageController _controler;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: _controler,
      count: 6,
      effect: const ExpandingDotsEffect(
          dotColor: Colors.greenAccent,
          dotHeight: 10,
          dotWidth: 10,
          activeDotColor: Colors.tealAccent),
    );
  }
}
