import 'package:flutter/material.dart';
import '../color&font_managment.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        title: const Text(
          "ورود و عضویت",
          style: appBarTitle,
        ),
      ),
      body: const SafeArea(
        child: Center(
          child: Text('ورود و عضویت'),
        ),
      ),
    );
  }
}
