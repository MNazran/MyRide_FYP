import 'package:firebase_database/firebase_database.dart';

class TripsHistoryModel
{
  String? time;
  String? originAddress;
  String? destinationAddress;
  String? status;
  String? fareAmount;
  String? userName;
  String? userPhone;

  TripsHistoryModel({
    this.time,
    this.originAddress,
    this.destinationAddress,
    this.status,
    this.userName,
    this.userPhone,
  });

  TripsHistoryModel.fromSnapshot(DataSnapshot dataSnapshot)
  {
    time = (dataSnapshot.value as Map)['time'];
    originAddress = (dataSnapshot.value as Map)['originAddress'];
    status = (dataSnapshot.value as Map)['status'];
    fareAmount = (dataSnapshot.value as Map)['fareAmount'];
    userName = (dataSnapshot.value as Map)['car_details'];
    userPhone = (dataSnapshot.value as Map)['driverName'];
  }
}