import 'dart:async';

import 'package:drivers_app/authentication/login_screen.dart';
import 'package:drivers_app/authentication/signup_screen.dart';
import 'package:drivers_app/global/global.dart';
import 'package:drivers_app/mainScreen/main_screen.dart';
import 'package:flutter/material.dart';

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

              Image.asset(
                "images/car-iconcopy.png",
                width: 150,
                height: 150,
              ),

              const SizedBox(height: 25,),

              const Text(
                "MyRide Driver",
                style: TextStyle(
                  fontStyle: FontStyle.normal,
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
