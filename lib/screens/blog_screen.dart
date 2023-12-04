import 'package:flutter/material.dart';
import 'package:nahal_it/screens/appbar_screen.dart';
// import 'package:side_menu_app/screens/appbar_screen.dart';

class BlogScreen extends StatelessWidget {
  const BlogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarScreen(
        title: 'بلاگ',
      ),
      body: SafeArea(
        child: Center(
          child: Text('بلاگ'),
        ),
      ),
    );
  }
}
