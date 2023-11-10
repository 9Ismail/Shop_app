import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'products_overview_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => ProductsOverviewScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.black,
            systemNavigationBarIconBrightness: Brightness.dark),
        backgroundColor: Colors.black,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Image.network(
                'https://cdn.dribbble.com/users/146773/screenshots/4228811/dribble_cart.gif'),
          ),
          SizedBox(height: 90),
          CircularProgressIndicator(color: Colors.white)
        ],
      ),
    );
  }
}
