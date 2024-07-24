import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:week_four/main.dart';
import 'package:week_four/screens/screen_home.dart';

class ScreenLogin extends StatefulWidget {
  const ScreenLogin({super.key});

  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
  final _username = "admin";
  final _password = "123456";
  int flag = 0;

  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _keyValidate = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Form(   //Form starting
            key: _keyValidate,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Login',   //Login text logo
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Please sign in to continue",           
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),                                   //Text for contineue
                const SizedBox(height: 50),
                TextFormField(        //Username text field
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      flag = 1;
                      return "Please enter username";
                    } else {
                      return null;
                    }
                  },
                  controller: _usernameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(19)),
                    ),
                    hintText: "Username",
                    icon: Icon(Icons.account_circle_rounded),
                  ),
                ),
                const SizedBox(height: 30),
                TextFormField(   //Password text field
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      flag = 1;
                      return "Please enter the password";
                    } else {
                      return null;
                    }
                  },
                  obscureText: true,
                  controller: _passwordController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(19)),
                    ),
                    hintText: "Password",
                    icon: Icon(Icons.lock),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton.icon(   //Login button
                      onPressed: () {
                        if (_keyValidate.currentState!.validate()){}
                        if (flag != 0) {
                          flag = 0;
                        } else {
                          checkingValidation(context);
                        }
                      },
                      icon: const Icon(Icons.arrow_forward),
                      label: const Text(
                        'Login',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

//Checking validation
  void checkingValidation(BuildContext ctx) async {
    final _usrname = _usernameController.text;
    final _pswrd = _passwordController.text;


    if (_pswrd == _password && _usrname == _username) {  //Chekking password and username
      final _shrd = await SharedPreferences.getInstance();
      _shrd.setBool(KEY_VALUE, true);
      Navigator.of(ctx).pushReplacement(MaterialPageRoute(builder: (ctx1) {
        return ScreenHome();
      }));
    } else {
      snackBarr("Username and password don't match", ctx);
    }
  }

  // Snackbar for validation function
  void snackBarr(String text, BuildContext ctx) {
    ScaffoldMessenger.of(ctx).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        margin:const EdgeInsetsDirectional.all(10),
        content: Text(text),
        backgroundColor: Colors.red,
      ),
    );
  }
}
