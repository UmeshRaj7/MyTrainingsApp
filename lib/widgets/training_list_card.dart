import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_trainings_app/models/training_model.dart';
import 'package:my_trainings_app/utils/constants.dart';

class TrainingListCard extends StatelessWidget {
  final TrainingModel? trainingModel;

  TrainingListCard({this.trainingModel});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        color: Colors.white,
        child: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.35,
              margin: EdgeInsets.only(left: 8, top: 8, bottom: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    trainingModel!.date,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    trainingModel!.time,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: HexColor('#b2b2b2')),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    trainingModel!.location,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            CustomPaint(
                size: Size(1, 140), painter: DashedLineVerticalPainter()),
            Container(
              width: MediaQuery.of(context).size.width * 0.50,
              margin: EdgeInsets.only(left: 10, top: 15, bottom: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Filling Fast',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: themeColor),
                  ),
                  Text(
                    trainingModel!.trainingName,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.all(0),
                    leading: Container(
                      width: 50,
                      height: 50,
                      child: Stack(
                        children: [
                          CircleAvatar(),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Icon(
                              Icons.email,
                              size: 20,
                            ),
                          )
                        ],
                      ),
                    ),
                    title: Text(
                      'Keynote Speaker',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    subtitle: Text(
                      trainingModel!.trainerName,
                      style:
                          TextStyle(fontSize: 12, color: HexColor('#b2b2b2')),
                    ),
                  ),
                  Container(
                    height: 30,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                primary: themeColor, onPrimary: Colors.white),
                            child: Text('Enrol Now'))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
