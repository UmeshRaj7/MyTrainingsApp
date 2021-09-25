import 'package:flutter/material.dart';
import 'package:my_trainings_app/models/training_model.dart';
import 'package:my_trainings_app/utils/constants.dart';
import 'package:my_trainings_app/widgets/search_and_select_items.dart';

class FilterWidget extends StatefulWidget {
  final List<TrainingModel> trainingModelList;

  FilterWidget({required this.trainingModelList});

  @override
  _FilterWidgetState createState() => _FilterWidgetState();
}

class _FilterWidgetState extends State<FilterWidget> {
  List<FilterOptions> filterOptions = [];
  FilterOptions selectedOption = FilterOptions.LOCATION;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    filterOptions = [
      FilterOptions.LOCATION,
      FilterOptions.TRAINER,
      FilterOptions.TRAINING_NAME
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Text(
          'Sort and Filters',
          style: TextStyle(
              fontWeight: FontWeight.w700,
              color: Colors.black,
              fontSize: 24,
              fontFamily: 'Europa'),
        ),
        centerTitle: false,
        actions: [
          IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: Icon(
                Icons.clear,
                color: Colors.grey,
              ))
        ],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.50,
            height: MediaQuery.of(context).size.height,
            child: ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: List.generate(
                  filterOptions.length,
                  (index) => InkWell(
                        onTap: () {
                          setState(() {
                            selectedOption = filterOptions[index];
                          });
                        },
                        child: Container(
                          color: selectedOption == filterOptions[index]
                              ? Colors.white
                              : HexColor('#f2f2f2'),
                          height: 60,
                          child: Center(
                            child: Text(
                              filterOptions
                                  .elementAt(
                                    index,
                                  )
                                  .readable,
                              style: TextStyle(
                                  fontWeight:
                                      selectedOption == filterOptions[index]
                                          ? FontWeight.bold
                                          : FontWeight.normal,
                                  fontSize: 16),
                            ),
                          ),
                        ),
                      )),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.50,
            height: MediaQuery.of(context).size.height,
            child: SearchAndSelectItems(
              updatedItems: (List<TrainingModel> trainingModelList) {},
              trainingModelList: widget.trainingModelList,
              selectedOption: selectedOption,
            ),
          )
        ],
      ),
    );
  }
}
