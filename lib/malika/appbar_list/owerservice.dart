import 'package:flutter/material.dart';
import '../color&font_managment.dart';

class OuerService extends StatelessWidget {
  const OuerService({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        title: const Text(
          "خدمات ما",
          style: appBarTitle,
        ),
      ),
      body: const SafeArea(
        child: Center(
          child: Text('خدمات ما'),
        ),
      ),
    );
  }
}
