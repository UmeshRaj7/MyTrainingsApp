import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobile_carousel/carousel.dart';
import 'package:flutter_mobile_carousel/carousel_arrow.dart';
import 'package:my_trainings_app/models/training_model.dart';
import 'package:my_trainings_app/utils/constants.dart';
import 'package:my_trainings_app/widgets/carousal_card.dart';
import 'package:my_trainings_app/widgets/scroll_widget.dart';
import 'package:my_trainings_app/widgets/training_list_card.dart';

class TrainingHomePage extends StatefulWidget {
  TrainingHomePage();

  @override
  _TrainingHomePageState createState() => _TrainingHomePageState();
}

class _TrainingHomePageState extends State<TrainingHomePage> {
  List<TrainingModel> trainingModelList = [];
  static const double ARROW_WIDTH = 20.0;
  static const double ARROW_ICON_SIZE = 18.0;

  @override
  void initState() {
    // TODO: implement initState
    getTrainingData.forEach((element) {
      trainingModelList.add(TrainingModel.fromMap(element));
    });
    setState(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: themeColor,
        centerTitle: false,
        elevation: 0,
        title: Text(
          'Trainings',
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 30,
              letterSpacing: 1,
              fontFamily: 'Europa'),
        ),
      ),
      endDrawer: Center(
        child: Text('Work in Progress Come back Later'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.50,
              color: themeColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Highlights',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Colors.white,
                          fontFamily: 'Europa'),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    child: ScrollButton(
                      itemsLength: trainingModelList.length,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      topPositionPercent: 0.3,
                      builder: (context, controller) => ListView.builder(
                        // physics: NeverScrollableScrollPhysics(),
                        controller: controller,
                        shrinkWrap: true,
                        itemCount: trainingModelList.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return CarousalCard(
                            trainingModel: trainingModelList[index],
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 35,
                    width: 60,
                    margin: EdgeInsets.only(left: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        border: Border.all(
                          color: HexColor('#b2b2b2'),
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.filter_list_sharp,
                          size: 20,
                          color: HexColor('#b2b2b2'),
                        ),
                        Text(
                          'Filter',
                          style: TextStyle(color: HexColor('#b2b2b2')),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.50,
              color: HexColor('#f2f2f2'),
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: trainingModelList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 8),
                      child: TrainingListCard(
                        trainingModel: trainingModelList[index],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}