import 'package:flutter/cupertino.dart';

import '../models/directions.dart';
import '../models/trips_history_model.dart';

class AppInfo extends ChangeNotifier
{
  Directions? userPickUpLocation, userDropOffLocation;
  int countTotalTrips = 0;
  String driverTotalEarnings = "0";
  String driverAverageRatings = "0";
  List<String> historyTripsKeysList = [];
  List<TripsHistoryModel> allTripsHistoryInformationList = [];

  void updatePickUpLocationAddress(Directions userPickUpAddress)
  {
    userPickUpLocation = userPickUpAddress;
    notifyListeners();
  }

  void updateDropOffLocationAddress(Directions dropOffAddress)
  {
    userDropOffLocation = dropOffAddress;
    notifyListeners();
  }

  updateOverallTripsCounter(int overallTripsCounter)
  {
    countTotalTrips = overallTripsCounter;
    notifyListeners();
  }

  updateOverallTripsKeys(List<String> tripsKeysList )
  {
    historyTripsKeysList = tripsKeysList;
    notifyListeners();
  }

  updateOverallTripsHistoryInformation(TripsHistoryModel eachTripHistory)
  {
    allTripsHistoryInformationList.add(eachTripHistory);
    notifyListeners();
  }

  updateDriverTotalEarnings(String driverEarnings)
  {
    driverTotalEarnings = driverEarnings;
  }

  updateDriverAverageRatings(String driverRatings)
  {
    driverAverageRatings = driverRatings;
  }
}