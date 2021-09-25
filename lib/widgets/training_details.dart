import 'package:flutter/material.dart';
import 'package:my_trainings_app/models/training_model.dart';
import 'package:my_trainings_app/utils/constants.dart';

class TrainingDetails extends StatelessWidget {
  final TrainingModel trainingModel;

  const TrainingDetails({Key? key, required this.trainingModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: themeColor,
        title: Text(
          'Training Details',
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 22,
              color: Colors.white,
              fontFamily: 'Europa'),
        ),
      ),
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.black,
              child: Image.asset(
                trainingModel?.image ?? trainingImage,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Training Name:',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: Colors.grey,
                  fontFamily: 'Europa'),
            ),
            Text(
              trainingModel.trainingName,
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  fontFamily: 'Europa'),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Trainer',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: Colors.grey,
                  fontFamily: 'Europa'),
            ),
            ListTile(
              leading: Container(
                width: 50,
                height: 50,
                child: Stack(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(trainingModel.trainer_image),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.verified,
                        size: 20,
                        color: Colors.blue,
                      ),
                    )
                  ],
                ),
              ),
              title: Text(
                trainingModel.trainerName,
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    fontFamily: 'Europa'),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Date',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: Colors.grey,
                  fontFamily: 'Europa'),
            ),
            Text(
              trainingModel.date,
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  fontFamily: 'Europa'),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Time',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: Colors.grey,
                  fontFamily: 'Europa'),
            ),
            Text(
              trainingModel.time,
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  fontFamily: 'Europa'),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Location',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: Colors.grey,
                  fontFamily: 'Europa'),
            ),
            Text(
              trainingModel.location,
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  fontFamily: 'Europa'),
            ),
          ],
        ),
      )),
    );
  }
}
