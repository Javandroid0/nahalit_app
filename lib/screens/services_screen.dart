import 'package:flutter/material.dart';
import 'package:nahal_it/screens/appbar_screen.dart';
// import 'package:side_menu_app/screens/appbar_screen.dart';

class OurServicesScreen extends StatelessWidget {
  const OurServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarScreen(
        title: 'خدمات ما',
      ),
      body: SafeArea(
        child: Center(
          child: Text('خدمات ما'),
        ),
      ),
    );
  }
}
