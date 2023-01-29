/*import 'package:drivers_app/global/global.dart';
import 'package:drivers_app/splashScreen/splash_screen.dart';
import 'package:flutter/material.dart';

class ProfileTabPage extends StatefulWidget {
  const ProfileTabPage({Key? key}) : super(key: key);

  @override
  State<ProfileTabPage> createState() => _ProfileTabPageState();
}

class _ProfileTabPageState extends State<ProfileTabPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text(
          "Sign Out",
        ),
        onPressed: ()
        {
          fAuth.signOut();
          Navigator.push(context, MaterialPageRoute(builder: (c)=> const MySplashScreen()));
        },
      ),
    );
  }
}*/

import 'package:flutter/material.dart';

import '../global/global.dart';
import '../mainScreen/main_screen.dart';
import '../splashScreen/splash_screen.dart';
import '../widgets/info_design_ui.dart';

class ProfileTabPage extends StatefulWidget
{
  const ProfileTabPage({Key? key}) : super(key: key);

  @override
  State<ProfileTabPage> createState() => _ProfileTabPageState();
}

class _ProfileTabPageState extends State<ProfileTabPage>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            //name
            Text(
              onlineDriverData.name!,
              style: const TextStyle(
                fontSize: 50.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),

            Text(
              titleStarsRating + " driver",
              style: const TextStyle(
                fontSize: 18.0,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(
              height: 20,
              width: 200,
              child: Divider(
                color: Colors.white,
                height: 2,
                thickness: 2,
              ),
            ),

            const SizedBox(height: 38.0,),

            //phone
            InfoDesignUIWidget(
              textInfo: onlineDriverData.phone!,
              iconData: Icons.phone_iphone,
            ),

            //email
            InfoDesignUIWidget(
              textInfo: onlineDriverData.email!,
              iconData: Icons.email,
            ),

            InfoDesignUIWidget(
              textInfo: onlineDriverData.car_color! + " | " + onlineDriverData.car_number! + " | " + onlineDriverData.car_model!,
              iconData: Icons.car_repair,
            ),

            const SizedBox(height: 20,),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.amber,
              ),
                onPressed: ()
                {
                  fAuth.signOut();
                  Navigator.push(context, MaterialPageRoute(builder: (c)=> const MySplashScreen()));
                },

                child: const Text(
                  "Logout",
                  style: TextStyle(
                    color: Colors.white,
                  ),


                ),
            )
          ],
        ),
      ),
    );
  }
}

