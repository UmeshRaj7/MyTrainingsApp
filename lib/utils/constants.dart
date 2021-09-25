import 'package:flutter/material.dart';
import 'package:my_trainings_app/models/training_model.dart';

Color get themeColor => HexColor('#ff4855');
String get trainingImage => 'assets/training_image.jpg';
String get rajImage => 'assets/raj.png';
String get johnImage => 'assets/john.jpg';
String get chrissImage => 'assets/chriss.jpg';
String get markImage => 'assets/mark.jpeg';
String get tonyImage => 'assets/tony.jpg';

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF$hexColor';
    }
    return int.parse(hexColor, radix: 16);
  }
}

List<dynamic> getTrainingData = [
  {
    'image': trainingImage,
    'id': '1',
    'trainer_name': 'Raj',
    'trainer_image': rajImage,
    'training_name': 'Safe Scrum Master',
    'location': 'West Des Moines',
    'date': 'Oct 11-13,\n2019',
    'time': '8:30am - 12:30pm',
    'amount': 825
  },
  {
    'image': trainingImage,
    'id': '2',
    'trainer_name': 'Raj',
    'trainer_image': rajImage,
    'training_name': 'Python Master',
    'location': 'West Des Moines',
    'date': 'Oct 11-13,\n2019',
    'time': '8:30am - 12:30pm',
    'amount': 700
  },
  {
    'image': trainingImage,
    'id': '3',
    'trainer_name': 'Tony',
    'trainer_image': tonyImage,
    'training_name': 'AI Master',
    'location': 'West Des Moines',
    'date': 'Oct 11-13,\n2019',
    'time': '8:30am - 12:30pm',
    'amount': 750
  },
  {
    'image': trainingImage,
    'id': '4',
    'trainer_name': 'Mark',
    'trainer_image': markImage,
    'training_name': 'Full Stack Developer',
    'location': 'Delhi',
    'date': 'Oct 11-13,\n2019',
    'time': '8:30am - 12:30pm',
    'amount': 900
  },
  {
    'image': trainingImage,
    'id': '5',
    'trainer_name': 'Tony',
    'trainer_image': tonyImage,
    'training_name': 'AI Master',
    'location': 'Delhi',
    'date': 'Oct 11-13,\n2019',
    'time': '8:30am - 12:30pm',
    'amount': 825
  },
  {
    'image': trainingImage,
    'id': '6',
    'trainer_name': 'John',
    'trainer_image': johnImage,
    'training_name': 'Safe Scrum Master',
    'location': 'Delhi',
    'date': 'Oct 11-13,\n2019',
    'time': '8:30am - 12:30pm',
    'amount': 825
  },
  {
    'image': trainingImage,
    'id': '7',
    'trainer_name': 'Raj',
    'trainer_image': rajImage,
    'training_name': 'Python Master',
    'location': 'Delhi',
    'date': 'Oct 11-13,\n2019',
    'time': '8:30am - 12:30pm',
    'amount': 700
  },
  {
    'image': trainingImage,
    'id': '8',
    'trainer_name': 'Chris',
    'trainer_image': chrissImage,
    'training_name': 'Safe Scrum Master',
    'location': 'Silicon Vally',
    'date': 'Oct 11-13,\n2019',
    'time': '8:30am - 12:30pm',
    'amount': 825
  },
  {
    'image': trainingImage,
    'id': '9',
    'trainer_name': 'Chris',
    'trainer_image': chrissImage,
    'training_name': 'Safe Scrum Master',
    'location': 'Silicon Vally',
    'date': 'Oct 11-13,\n2019',
    'time': '8:30am - 12:30pm',
    'amount': 825
  },
  {
    'image': trainingImage,
    'id': '10',
    'trainer_name': 'Chris',
    'trainer_image': chrissImage,
    'training_name': 'Safe Scrum Master',
    'location': 'Silicon Vally',
    'date': 'Oct 11-13,\n2019',
    'time': '8:30am - 12:30pm',
    'amount': 825
  },
  {
    'image': trainingImage,
    'id': '11',
    'trainer_name': 'John',
    'trainer_image': johnImage,
    'training_name': 'Safe Scrum Master',
    'location': 'Silicon Vally',
    'date': 'Oct 11-13,\n2019',
    'time': '8:30am - 12:30pm',
    'amount': 825
  },
  {
    'image': trainingImage,
    'id': '12',
    'trainer_name': 'Raj',
    'trainer_image': rajImage,
    'training_name': 'Python Master',
    'location': 'Chicago, IL',
    'date': 'Oct 11-13,\n2019',
    'time': '8:30am - 12:30pm',
    'amount': 700
  },
  {
    'image': trainingImage,
    'id': '13',
    'trainer_name': 'Raj',
    'trainer_image': rajImage,
    'training_name': 'Safe Scrum Master',
    'location': 'Chicago, IL',
    'date': 'Oct 11-13,\n2019',
    'time': '8:30am - 12:30pm',
    'amount': 825
  },
  {
    'image': trainingImage,
    'id': '14',
    'trainer_name': 'Raj',
    'trainer_image': rajImage,
    'training_name': 'Python Master',
    'location': 'Chicago, IL',
    'date': 'Oct 11-13,\n2019',
    'time': '8:30am - 12:30pm',
    'amount': 700
  },
  {
    'image': trainingImage,
    'id': '15',
    'trainer_name': 'Tony',
    'trainer_image': tonyImage,
    'training_name': 'AI Master',
    'location': 'New york',
    'date': 'Oct 11-13,\n2019',
    'time': '8:30am - 12:30pm',
    'amount': 750
  },
  {
    'image': trainingImage,
    'id': '16',
    'trainer_name': 'Tony',
    'trainer_image': tonyImage,
    'training_name': 'AI Master',
    'location': 'New york',
    'date': 'Oct 11-13,\n2019',
    'time': '8:30am - 12:30pm',
    'amount': 750
  },
  {
    'image': trainingImage,
    'id': '17',
    'trainer_name': 'Mark',
    'trainer_image': markImage,
    'training_name': 'Full Stack Developer',
    'location': 'New york',
    'date': 'Oct 11-13,\n2019',
    'time': '8:30am - 12:30pm',
    'amount': 900
  },
  {
    'image': trainingImage,
    'id': '18',
    'trainer_name': 'John',
    'trainer_image': johnImage,
    'training_name': 'Safe Scrum Master',
    'location': 'New york',
    'date': 'Oct 11-13,\n2019',
    'time': '8:30am - 12:30pm',
    'amount': 825
  },
  {
    'image': trainingImage,
    'id': '19',
    'trainer_name': 'John',
    'trainer_image': johnImage,
    'training_name': 'Safe Scrum Master',
    'location': 'Silicon Vally',
    'date': 'Oct 11-13,\n2019',
    'time': '8:30am - 12:30pm',
    'amount': 825
  },
  {
    'image': trainingImage,
    'id': '20',
    'trainer_name': 'Mark',
    'trainer_image': markImage,
    'training_name': 'Full Stack Developer',
    'location': 'Chicago, IL',
    'date': 'Oct 11-13,\n2019',
    'time': '8:30am - 12:30pm',
    'amount': 900
  },
];

class DashedLineVerticalPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double dashHeight = 3, dashSpace = 3, startY = 0;
    final paint = Paint()
      ..color = Colors.grey
      ..strokeWidth = 1;
    while (startY < size.height) {
      canvas.drawLine(Offset(0, startY), Offset(0, startY + dashHeight), paint);
      startY += dashHeight + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

enum FilterOptions {
  LOCATION,
  TRAINER,
  TRAINING_NAME,
}

extension ReadableFilterOptions on FilterOptions {
  String get readable {
    switch (this) {
      case FilterOptions.LOCATION:
        return 'Location';

      case FilterOptions.TRAINER:
        return 'Trainer';

      case FilterOptions.TRAINING_NAME:
        return 'Training Name';

      default:
        return 'Location';
    }
  }
}

class LoadingIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        valueColor:
            AlwaysStoppedAnimation<Color>(Theme.of(context).primaryColor),
      ),
    );
  }
}

abstract class Filter {
  final String data;
  bool checkFilter(TrainingModel model);

  Filter(this.data);
}

class LocationFilter extends Filter {
  LocationFilter(String data) : super(data);

  @override
  bool checkFilter(TrainingModel model) {
    // TODO: implement checkFilter
    return model.location == data;
  }
}

class TrainingNameFilter extends Filter {
  TrainingNameFilter(String data) : super(data);

  @override
  bool checkFilter(TrainingModel model) {
    // TODO: implement checkFilter
    return model.trainingName == data;
  }
}

class TrainerFilter extends Filter {
  TrainerFilter(String data) : super(data);

  @override
  bool checkFilter(TrainingModel model) {
    // TODO: implement checkFilter
    return model.trainerName == data;
  }
}
