import 'package:flutter/material.dart';
// import 'package:flutter_lesson/backend/services.dart';
import 'package:flutter_lesson/home.dart';
import 'auth.dart';

void main() async {
  // DBConnection().connectDB();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyThemeApp());
}

class MyThemeApp extends StatelessWidget {
  const MyThemeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: AuthPage(),
      initialRoute: '/',
      routes: {
        '/': (context) => const AuthPage(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}
