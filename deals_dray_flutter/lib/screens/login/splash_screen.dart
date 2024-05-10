import 'package:deals_dray_flutter/screens/login/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateTiHome();
  }

  _navigateTiHome() async {
    await Future.delayed(
      const Duration(
        milliseconds: 4000,
      ),
      () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => LoginScreen(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Image.asset(
                'assets/images/splash_screen_image.jpeg',
              ),
            ),
            Expanded(
              child: Image.asset(
                'assets/images/deals_dray_logo.png',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
