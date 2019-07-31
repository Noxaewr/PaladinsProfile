import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import 'Home.dart';

class SplashScreens extends StatefulWidget {
  @override
  _SplashScreensState createState() => _SplashScreensState();
}

class _SplashScreensState extends State<SplashScreens> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/4),
      color: Colors.white,
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
          body: SplashScreen(
            seconds: 7,
            navigateAfterSeconds: new Home(),
            image: 
            //new Image.asset('assets/lestron.jpg'),
            new Image.asset('assets/ChampionChenSplash.png'),
            title: Text('Paladins',
                        style: TextStyle(fontSize: 32.0, fontFamily: 'Lato', fontWeight: FontWeight.bold, color: Colors.black),),
            backgroundColor: Colors.white,
            styleTextUnderTheLoader: new TextStyle(),
            photoSize: 145.0,
            loaderColor: Colors.white
        )
      )
    );
  }
}