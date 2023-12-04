import 'package:flutter/material.dart';
import 'package:nahal_it/screens/appbar_screen.dart';
// import 'package:side_menu_app/screens/appbar_screen.dart';

// این صفحه برای تست اپلیکیشن استفاده میشود و فاقد اهمیت است

// صفحه عضویت در اپلیکیشن
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarScreen(
        title: 'ورود و عضویت',
      ),
      body: SafeArea(
        child: Center(
          child: Text('Welcome to login screen'),
        ),
      ),
    );
  }
}
