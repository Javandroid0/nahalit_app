import 'package:flutter/material.dart';
import '../color&font_managment.dart';

class BlogScreen extends StatelessWidget {
  const BlogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        title: const Text(
          "بلاگ",
          style: appBarTitle,
        ),
      ),
      body: const SafeArea(
        child: Center(
          child: Text('بلاگ'),
        ),
      ),
    );
  }
}
