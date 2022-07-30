import 'package:Muchatlu/screens/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _onLoadMethod();
    super.initState();
  }

// Navigating to home screen
  _onLoadMethod() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (_) => HomeScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/chat.jpeg",
              height: 50,
            ),
            Text(
              "Muchatlu",
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            CircularProgressIndicator(
              color: Theme.of(context).primaryColor,
            )
          ],
        ),
      ),
      backgroundColor: const Color(0xFFFFEFEE),
    );
  }
}
