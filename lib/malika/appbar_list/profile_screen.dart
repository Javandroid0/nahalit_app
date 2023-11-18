import 'package:flutter/material.dart';
import '../color&font_managment.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        title: const Text(
          "نمونه کارها",
          style: appBarTitle,
        ),
      ),
      body: const SafeArea(
        child: Center(
          child: Text('نمونه کارها'),
        ),
      ),
    );
  }
}
