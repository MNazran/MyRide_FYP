import 'package:flutter/material.dart';

import 'main_screen.dart';

class AboutScreen extends StatefulWidget 
{
  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> 
{
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        
        children: [
          
          //image
          Container(
            height: 230,
            child: Center(
              child: Image.asset(
                "images/car_logo.png",
                width: 260,
              ),
            ),
          ),

          Column(
            children: [

              //app name
              const Text(
                "MyRide App",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white54,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20,),

              //credits
              const Text(
                "This app has been developed by Naz",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white54,
                ),
              ),

              const SizedBox(height: 40,),

              ElevatedButton(
                  onPressed: ()
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (c) => MainScreen()));
                  },
                  child: const Text(
                    "Close",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )
              )

            ],
          )
        ],
      ),
    );
  }
}
