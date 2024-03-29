// import 'package:flutter/material.dart';
// import 'home.dart';
//
// void main() {
//   runApp(MyApp());
// }
//@dart=2.9
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'login/welcome_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'welcome_screen',
      routes: {
        'welcome_screen': (context) => WelcomeScreen(),
        // 'registration_screen': (context) => RegistrationScreen(),
        // 'login_screen': (context) => LoginScreen(),
        // 'home_screen': (context) => HomeScreen()
      },
    );
  }
}
