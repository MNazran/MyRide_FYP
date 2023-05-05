import 'package:flutter/cupertino.dart';
import 'package:users_app/models/trips_history_model.dart';
import '../models/directions.dart';

class AppInfo extends ChangeNotifier
{
  Directions? userPickUpLocation, userDropOffLocation;
  int countTotalTrips = 0;
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

}