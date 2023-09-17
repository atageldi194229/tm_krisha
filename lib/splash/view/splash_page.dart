import 'package:flutter/material.dart';
import 'package:tm_krisha/home/home.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  static MaterialPageRoute<void> route() => MaterialPageRoute(builder: (_) => const SplashPage());

  @override
  Widget build(BuildContext context) {
    return const SplashView();
  }
}

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushAndRemoveUntil(HomePage.route(), (route) => false);
    });

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              width: 200,
              height: 200,
              child: Image.asset("assets/images/logo.png"),
            ),
          ),
          const SizedBox(height: 16.0),
          const Center(
            child: Text("tm_krisha", style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}
