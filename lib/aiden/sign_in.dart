import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});
  static const String tag = '/SignInRoute';
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 213, 241, 198),
            Color.fromARGB(255, 2, 179, 11),
          ],
          begin: FractionalOffset(0.0, 0.0),
          end: FractionalOffset(0.2, 1.0),
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp,
        )),
        child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Create Account',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: SizedBox(
                  width: 300,
                  child: TextField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      hintText: 'Enter your first name',
                      hintStyle: TextStyle(fontSize: 12),
                      labelText: 'First name',
                      labelStyle: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: SizedBox(
                  width: 300,
                  child: TextField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      hintText: 'Enter your last name',
                      hintStyle: TextStyle(fontSize: 12),
                      labelText: 'Last name',
                      labelStyle: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: SizedBox(
                  width: 300,
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Enter your E-mail address',
                      hintStyle: TextStyle(fontSize: 12),
                      labelText: 'E-mail',
                      labelStyle: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: SizedBox(
                  width: 300,
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Create a password',
                      hintStyle: TextStyle(fontSize: 12),
                      labelText: 'Password',
                      labelStyle: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
            ]),
      )),
    );
  }
}
