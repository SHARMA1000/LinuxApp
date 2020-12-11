import 'dart:ui';

import 'package:docker/chat.dart';

import 'home.dart';
// import 'package:async/async.dart';
import 'login.dart';
import 'logreg.dart';
import 'reg.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:splashscreen/splashscreen.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
   Firebase.initializeApp();

  runApp(MaterialApp(
   debugShowCheckedModeBanner: false,

  theme: ThemeData(
    // Define the default brightness and colors.
    brightness: Brightness.dark,
    primaryColor: Colors.white,
    accentColor: Colors.white,

    // Define the default font family.
    fontFamily: 'Georgia',

    // Define the default TextTheme. Use this to specify the default
    // text styling for headlines, titles, bodies of text, and more.
    textTheme: TextTheme(
      headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
      headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
      bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
    ),
  ),





    initialRoute: "",
    routes: {
      "": (context) => MyApp(),
      "home":(context) => Main(),
      "login":(context) => MyLogin(),
      "logreg":(context) =>Mylogreg(),
      "reg":(context) =>MyReg(),
      "chat":(context) =>MyChat(),
               },
  ));
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  SplashScreen(
      gradientBackground:  LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.grey, Colors.grey[100],Colors.grey[50]]),

      seconds: 4,
      navigateAfterSeconds: new Mylogreg(),
      // title: new Text('LinuxApp',textScaleFactor: 2,style: TextStyle(color: Colors.black,fontSize: 25,fontStyle:FontStyle.italic ,fontWeight: FontWeight.bold,fontFamily: 'MyFont')),
      // image: new Image.network('https://www.pikpng.com/pngl/b/201-2013357_linux-logo-png-transparent-tux-linux-logo-vector.png'),
      image:new Image.asset('assets/images/linux.jpg',height: 120,alignment: Alignment.center,),
      loadingText: Text("Loading",style:TextStyle(color: Colors.black) ,),
      photoSize: 100.0,
      loaderColor: Colors.red,
    );
  }
}



















