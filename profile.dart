import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.red.shade900, Colors.blue])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircleAvatar(
                backgroundImage: AssetImage('images/me.png'),
                radius: 80.0,
              ),
              const Text(
                'Saurabh Thapliyal',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  color: Colors.teal.shade100,
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Card(
                color: Colors.white,
                margin: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 10.0,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ListTile(
                    leading: const Icon(
                      Icons.phone,
                      color: Colors.purple,
                    ),
                    title: Text(
                      '+91 93891 46699',
                      style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        color: Colors.purple.shade900,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ), //Phone no Card
              Card(
                color: Colors.white,
                margin: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 10.0,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ListTile(
                    leading: const Icon(
                      Icons.email,
                      color: Colors.purple,
                    ),
                    title: Text(
                      'saurabhthapliyal20011682@gmail.com',
                      style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        color: Colors.purple.shade900,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ), //Email Card
              TextButton.icon(
                // <-- TextButton
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  size: 24.0,
                  color: Colors.white,
                ),
                label: const Text(''),
              ), //Back Button
            ],
          ),
        ),
      ),
    );
  }
}
