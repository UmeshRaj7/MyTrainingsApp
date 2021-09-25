import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_trainings_app/models/training_model.dart';
import 'package:my_trainings_app/utils/constants.dart';
import 'package:my_trainings_app/widgets/carousal_card.dart';
import 'package:my_trainings_app/widgets/filter_widget.dart';
import 'package:my_trainings_app/widgets/scroll_widget.dart';
import 'package:my_trainings_app/widgets/training_details.dart';
import 'package:my_trainings_app/widgets/training_list_card.dart';

class TrainingHomePage extends StatefulWidget {
  TrainingHomePage();

  @override
  _TrainingHomePageState createState() => _TrainingHomePageState();
}

class _TrainingHomePageState extends State<TrainingHomePage> {
  List<TrainingModel> trainingModelList = [];

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
        child: Text(
          'Work in Progress Come back Later',
          style: TextStyle(
              fontWeight: FontWeight.w700,
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'Europa'),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.50,
              child: Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.25,
                    color: themeColor,
                  ),
                  Container(
                      //color: Colors.white,
                      ),
                  Column(
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
                          topPositionPercent: 0.3,
                          builder: (context, controller) => PageView.builder(
                            // physics: NeverScrollableScrollPhysics(),
                            controller: controller,
                            itemCount: trainingModelList.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => TrainingDetails(
                                            trainingModel:
                                                trainingModelList[index]))),
                                child: CarousalCard(
                                  trainingModel: trainingModelList[index],
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () {
                          showModalBottomSheet(
                              context: context,
                              // isScrollControlled: true,
                              builder: (bottomSheetContext) => Container(
                                    // padding: EdgeInsets.only(
                                    //     bottom: MediaQuery.of(context)
                                    //         .viewInsets
                                    //         .bottom),
                                    child: FilterWidget(
                                      updatedItems: (List<Filter> filtersList) {
                                        List<TrainingModel> modelList = [];
                                        if (filtersList != null &&
                                            filtersList.length > 0) {
                                          trainingModelList.forEach((m) {
                                            final data = filtersList
                                                .any((f) => f.checkFilter(m));
                                            if (data) {
                                              modelList.add(m);
                                            }
                                          });
                                        } else {
                                          getTrainingData.forEach((element) {
                                            modelList.add(
                                                TrainingModel.fromMap(element));
                                          });
                                        }
                                        setState(() {
                                          trainingModelList = modelList;
                                        });
                                      },
                                    ),
                                  ));
                        },
                        child: Container(
                          height: 35,
                          width: 60,
                          margin: EdgeInsets.only(left: 15),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
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
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              color: HexColor('#f2f2f2'),
              child: SingleChildScrollView(
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: trainingModelList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 12),
                        child: InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TrainingDetails(
                                      trainingModel:
                                          trainingModelList[index]))),
                          child: TrainingListCard(
                            trainingModel: trainingModelList[index],
                            onTap: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text("Come Back Later")));
                            },
                          ),
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
