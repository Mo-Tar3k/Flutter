import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:news/screen/Home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (_) => HomeScreen(),
      ));
    });
  }

  @override
  void dispose() {
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
        
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                  'Assets/blurred-colorful-vertical-portrait-display-wallpaper-preview.jpg'),
              fit: BoxFit.cover),
        ),
        child: const Column(children: [
          Expanded(
            flex: 2,
            child: Center(
              child: CircleAvatar(
                radius: 112,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 110,
                  backgroundImage: AssetImage(
                      'Assets/depositphotos_392144692-stock-photo-3d-illustration-of-the-word.jpg'),
                ),
              ),
            ),
          ),
          Flex(direction: Axis.vertical, children: [
            Text(
              "Flutter Developer",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ]),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              "Mohammed Tarek",
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontFamily: 'Pacifico',
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
