//@dart=2.9
import 'package:flutter/material.dart';
import 'package:practice/login/login_screen.dart';
import 'package:practice/login/signup_screen.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.teal.shade900, Colors.purple])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const SizedBox(height: 150.0),
              Container(
                margin: EdgeInsets.fromLTRB(50, 0, 50, 0),
                child: Image.asset(
                  'images/website.jpeg',
                  fit: BoxFit.fill,
                  height: 150,
                ),
              ),
              const SizedBox(
                height: 50.0,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(40, 0, 40, 0),
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.white24,
                  ),
                  child: const Text('Log in'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(40, 20, 40, 0),
                child: TextButton(
                    style: TextButton.styleFrom(
                        primary: Colors.white, backgroundColor: Colors.white24),
                    child: const Text('Register'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegistrationScreen()),
                      );
                    }),
              ),
            ]),
      ),
    );
  }
}
