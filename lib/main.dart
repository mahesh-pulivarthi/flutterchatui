import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Chat',
      theme: ThemeData(
        primaryColor: Colors.redAccent,
        secondaryHeaderColor: Color(0xFFFEF9EB),
      ),
      home: const HomeScreen(),
    );
  }
}
