import 'dart:async';
import 'package:flutter/material.dart';
import 'package:users_app/authentication/login_screen.dart';
import 'package:users_app/mainScreens/main_screen.dart';

import '../assistants/assistant_methods.dart';
import '../global/global.dart';

class MySplashScreen extends StatefulWidget
{
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen>
{

  starTimer()
  {
    fAuth.currentUser != null ? AssistantMethods.readCurrentOnLineUserInfo() : null;

    Timer(const Duration(seconds: 3), () async
    {
      if(await fAuth.currentUser != null)
      {
        currentFirebaseUser = fAuth.currentUser;
        //if logged in, send user to main screen
        Navigator.push(context, MaterialPageRoute(builder: (c)=> MainScreen()));
      }
      else
      {
        //if not logged in, send user to login screen
        Navigator.push(context, MaterialPageRoute(builder: (c)=> LoginScreen()));
      }
    });
  }

  @override
  void initState() {
    super.initState();

    starTimer();
  }

  @override
  Widget build(BuildContext context)
  {
    return Material(
      child: Container(
        color: Colors.black,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Image.asset("images/car-iconcopy.png",
              width: 170,
              ),

              const SizedBox(height: 10,),

              const Text(
                "MyRide",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
