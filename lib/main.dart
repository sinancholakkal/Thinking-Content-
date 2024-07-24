import 'package:flutter/material.dart';
import 'package:week_four/screens/screen_splash.dart';


const KEY_VALUE="user_longed_in";
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home:const ScreenSPlash(), //invoking splash screen
    );
  }
}