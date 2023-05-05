import 'package:firebase_auth/firebase_auth.dart';

import '../models/direction_details_info.dart';
import '../models/user_model.dart';

final FirebaseAuth fAuth = FirebaseAuth.instance;
User? currentFirebaseUser;
UserModel? userModelCurrentInfo;
List dList = []; //online drivers Information List
DirectionDetailsInfo? tripDirectionDetailsInfo;
String? chosenDriverId = "";
String cloudMessagingServerToken = "key=AAAA1qA_NGU:APA91bEcj8UIPdU9ygaG9iLqqn1mvLp_k9BYJGvacCTuAV32ogZg9_rUCV1Y8V9tMKiPRCpdvQkvOFeHrRBMMnk9Kz6LjFhW96oUpjbhx-ReeycZGu-E9Wd2MVhbZ7M7sowUfn9v9kuX";
String userDropOffAddress = "";
String driverCarDetails = "";
String driverName = "";
String driverPhone = "";
double countRatingStars = 0.0;
String titleStarsRating ="";
