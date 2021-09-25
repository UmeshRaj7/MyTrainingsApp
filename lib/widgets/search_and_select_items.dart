import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_trainings_app/models/training_model.dart';
import 'package:my_trainings_app/utils/constants.dart';

class SearchAndSelectItems extends StatefulWidget {
  final Function(List<Filter> filtersList) updatedItems;
  final FilterOptions selectedOption;

  SearchAndSelectItems({
    required this.updatedItems,
    required this.selectedOption,
  });

  @override
  _SearchAndSelectItemsState createState() => _SearchAndSelectItemsState();
}

class _SearchAndSelectItemsState extends State<SearchAndSelectItems> {
  bool isExpanded = false;
  bool _isSearching = false;
  String selectedCategory = '';
  List<Filter> selectedSubCategories = [];
  List<String> selectedListName = [];
  List<TrainingModel> categories = [];
  List<TrainingModel> searchcategories = [];
  TextEditingController _textEditingController = TextEditingController();
  bool dataLoaded = false;

  @override
  void initState() {
    super.initState();
    getCategories();
  }

  Future<void> getCategories() async {
    getTrainingData.forEach((element) {
      categories.add(TrainingModel.fromMap(element));
    });

    dataLoaded = true;
    setState(() {});
  }

  // search function
  void filterSearchResults(String query) {
    if (widget.selectedOption == FilterOptions.LOCATION) {
      searchcategories = List<TrainingModel>.from(categories.where((element) =>
          element.location.toLowerCase().contains(query.toLowerCase())));
    } else if (widget.selectedOption == FilterOptions.TRAINING_NAME) {
      searchcategories = List<TrainingModel>.from(categories.where((element) =>
          element.trainingName.toLowerCase().contains(query.toLowerCase())));
    } else {
      searchcategories = List<TrainingModel>.from(categories.where((element) =>
          element.trainerName.toLowerCase().contains(query.toLowerCase())));
    }
    setState(() {});
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: !dataLoaded
          ? LoadingIndicator()
          : categories.length > 1
              ? Container(
                  child: Column(
                    children: [
                      // Search field
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: TextField(
                          onChanged: (value) {
                            filterSearchResults(value);
                          },
                          controller: _textEditingController,
                          decoration: InputDecoration(
                            hintText: 'Search',
                            hintStyle: TextStyle(fontSize: 14),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            contentPadding:
                                EdgeInsets.fromLTRB(10.0, 12.0, 10.0, 5.0),
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.black,
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      //list view
                      searchResults(),
                      // Divider(),
                      SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                )
              : Center(
                  child: Text("No data available"),
                ),
    );
  }

  Widget searchResults() {
    List<String> subs = [];
    if (_textEditingController.text.trim() != null &&
        _textEditingController.text.length > 0) {
      subs = filterOptionData(searchcategories);
    } else {
      subs = filterOptionData(categories);
    }
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: subs.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: CheckboxListTile(
              title: Text(subs[index], style: TextStyle(color: Colors.black)),
              value: selectedListName.contains(subs[index]),
              onChanged: (value) {
                if (value == true) {
                  if (widget.selectedOption == FilterOptions.LOCATION) {
                    selectedSubCategories.add(LocationFilter(subs[index]));
                  } else if (widget.selectedOption ==
                      FilterOptions.TRAINING_NAME) {
                    selectedSubCategories.add(TrainingNameFilter(subs[index]));
                  } else {
                    selectedSubCategories.add(TrainerFilter(subs[index]));
                  }
                  selectedListName.add(subs[index]);

                  widget.updatedItems(selectedSubCategories);
                } else {
                  if (widget.selectedOption == FilterOptions.LOCATION) {
                    selectedSubCategories.remove(LocationFilter(subs[index]));
                  } else if (widget.selectedOption ==
                      FilterOptions.TRAINING_NAME) {
                    selectedSubCategories
                        .remove(TrainingNameFilter(subs[index]));
                  } else {
                    selectedSubCategories.remove(TrainerFilter(subs[index]));
                  }
                  selectedListName.remove(subs[index]);

                  widget.updatedItems(selectedSubCategories);
                }
                setState(() {});
              },
              activeColor: themeColor,
              checkColor: Colors.white,
              contentPadding: EdgeInsets.zero,
              controlAffinity: ListTileControlAffinity.leading,
            ),
          );
        },
      ),
    );
  }

  List<String> filterOptionData(List<TrainingModel> mainCategories) {
    List<String> filteredList = [];
    switch (widget.selectedOption) {
      case FilterOptions.LOCATION:
        var locations =
            List<String>.from(mainCategories.map((e) => e.location));
        filteredList = locations.toSet().toList();
        break;

      case FilterOptions.TRAINING_NAME:
        var trainingNames =
            List<String>.from(mainCategories.map((e) => e.trainingName));
        filteredList = trainingNames.toSet().toList();
        break;
      case FilterOptions.TRAINER:
        var trainerNames =
            List<String>.from(mainCategories.map((e) => e.trainerName));
        filteredList = trainerNames.toSet().toList();
        break;
      default:
        var locations =
            List<String>.from(mainCategories.map((e) => e.location));
        filteredList = locations.toSet().toList();
    }

    return filteredList;
  }
}
