import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:week_four/main.dart';
import 'package:week_four/screens/screen_home.dart';
import 'package:week_four/screens/screen_login.dart';

class ScreenSPlash extends StatefulWidget {
  const ScreenSPlash({super.key});
  

  @override
  State<ScreenSPlash> createState() => _ScreenSPlashState();
}



class _ScreenSPlashState extends State<ScreenSPlash> {

  @override
  void initState() {
    checkingValidation();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [ //Splash screen gif
          Image(image: NetworkImage('https://cdn.pixabay.com/animation/2023/09/18/22/37/22-37-05-587_512.gif')),
  
        ],
      ),
    );
  }
  
  Future<void>gotoLogin()async{
     Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx)=>const ScreenLogin()));
  }

//Checking Account
  Future<void>checkingValidation()async{
    //await Future.delayed(Duration(seconds: 3));
    final _sharedpfs=await SharedPreferences.getInstance();
    final _getValue= _sharedpfs.getBool(KEY_VALUE);
    await Future.delayed(Duration(seconds: 3));
    if(_getValue==false ||_getValue==null){
      gotoLogin();
    }else{
      
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx1)=>ScreenHome()));
    }
  }
}