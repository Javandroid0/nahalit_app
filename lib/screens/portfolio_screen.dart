import 'package:flutter/material.dart';
import 'package:nahal_it/screens/appbar_screen.dart';
//import 'package:side_menu_app/screens/appbar_screen.dart';

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarScreen(
        title: 'نمونه کارها',
      ),
      body: SafeArea(
        child: Center(
          child: Text('نمونه کارها'),
        ),
      ),
    );
  }
}
