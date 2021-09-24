// To parse this JSON data, do
//
//     final trainingModel = trainingModelFromMap(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

TrainingModel trainingModelFromMap(String str) =>
    TrainingModel.fromMap(json.decode(str));

String trainingModelToMap(TrainingModel data) => json.encode(data.toMap());

class TrainingModel {
  TrainingModel({
    required this.image,
    required this.id,
    required this.trainerName,
    required this.trainingName,
    required this.location,
    required this.date,
    required this.time,
    required this.amount,
  });

  String image;
  String id;
  String trainerName;
  String trainingName;
  String location;
  String date;
  String time;
  int amount;

  factory TrainingModel.fromMap(Map<String, dynamic> json) => TrainingModel(
        image: json["image"],
        id: json["id"],
        trainerName: json["trainer_name"],
        trainingName: json["training_name"],
        location: json["location"],
        date: json["date"],
        time: json["time"],
        amount: json["amount"],
      );

  Map<String, dynamic> toMap() => {
        "image": image,
        "id": id,
        "trainer_name": trainerName,
        "training_name": trainingName,
        "location": location,
        "date": date,
        "time": time,
        "amount": amount,
      };
}
