import 'package:flutter/material.dart';
import 'login.dart';
import 'signup.dart';
import 'home.dart';
import 'jadwal.dart';
import 'buatjadwal.dart';
import 'chat.dart';
import 'profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginScreen(),
        '/signup': (context) => SignUpScreen(),
        '/home': (context) => HomeScreen(),
        '/jadwal': (context) => JadwalScreen(),
        '/buatjadwal': (context) => BuatJadwalScreen(),
        '/chat': (context) => ChatScreen(),
        '/profile': (context) => ProfileScreen(),
      },
    );
  }
}
