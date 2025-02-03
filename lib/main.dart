import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';
import 'package:myapp/screens/signup_screen.dart';
import 'package:myapp/screens/login_screen.dart';
import 'utils/theme_utils.dart';
import 'package:myapp/screens/home_screen.dart';

void main() {
  runApp(const PastryApp());
}

class PastryApp extends StatelessWidget {
  const PastryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pastry Delight',
      theme: ThemeUtils.lightTheme,
      darkTheme: ThemeUtils.darkTheme,
      themeMode: ThemeMode.system,
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomeScreen(),
        '/signup': (context) => const SignupScreen(),
        '/login': (context) => const LoginScreen(),
        '/home': (context) => const HomeScreen(),
      },
    );
  }
}
