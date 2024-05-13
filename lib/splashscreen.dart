import 'package:flutter/material.dart';
import 'package:shivalik_test1/sign_in.dart';


class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
          () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const SignInPage()));
        // Navigate to main screen
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.green,
      body: Center(

        child: Image(image: AssetImage("asset/img.png"),),
      ),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}