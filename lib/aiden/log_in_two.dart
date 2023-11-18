import 'package:flutter/material.dart';
import 'package:nahal_it/aiden/sign_in.dart';

import '../home_screen.dart';

class LogInTwo extends StatefulWidget {
  const LogInTwo({super.key});
  static const String tag = '/LogInTwoRoute';
  @override
  State<LogInTwo> createState() => _SignInTwoState();
}

class _SignInTwoState extends State<LogInTwo> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
            end: FractionalOffset(0.0, 1.5),
            stops: [0.0, 1.5],
            tileMode: TileMode.clamp,
          )),
          child: Center(
            child: Column(children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Continue with E-mail',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
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
              const Padding(
                padding: EdgeInsets.all(30.0),
                child: SizedBox(
                  width: 300,
                  child: TextField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(fontSize: 20),
                        hintText: 'Enter your password',
                        hintStyle: TextStyle(fontSize: 12)),
                  ),
                ),
              ),
              const Text('I forgot my password'),
              SizedBox(height: size.height / 2.5),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(SignIn.tag);
                  },
                  child: const Text(
                    "Don't have account? Let's create !",
                    style: TextStyle(fontSize: 17),
                  )),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple[100],
                    shape: const BeveledRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                  child: const Text(
                    '       Next      ',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ))
            ]),
          ),
        ),
      ),
    );
  }
}
