import 'package:flutter/material.dart';

Color get themeColor => HexColor('#ff4855');
String get trainingImage => 'assets/training_image.jpg';

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
    'trainer_name': 'John',
    'training_name': 'Safe Scrum Master',
    'location': 'West Des Moines',
    'date': 'Oct 11 -13,2019',
    'time': '8:30am - 12:30pm',
    'amount': 825
  },
  {
    'image': trainingImage,
    'id': '2',
    'trainer_name': 'John',
    'training_name': 'Safe Scrum Master',
    'location': 'West Des Moines',
    'date': 'Oct 11 -13,2019',
    'time': '8:30am - 12:30pm',
    'amount': 825
  },
  {
    'image': trainingImage,
    'id': '3',
    'trainer_name': 'John',
    'training_name': 'Safe Scrum Master',
    'location': 'West Des Moines',
    'date': 'Oct 11 -13,2019',
    'time': '8:30am - 12:30pm',
    'amount': 825
  },
  {
    'image': trainingImage,
    'id': '4',
    'trainer_name': 'John',
    'training_name': 'Safe Scrum Master',
    'location': 'West Des Moines',
    'date': 'Oct 11 -13,2019',
    'time': '8:30am - 12:30pm',
    'amount': 825
  },
  {
    'image': trainingImage,
    'id': '5',
    'trainer_name': 'John',
    'training_name': 'Safe Scrum Master',
    'location': 'West Des Moines',
    'date': 'Oct 11 -13,2019',
    'time': '8:30am - 12:30pm',
    'amount': 825
  },
  {
    'image': trainingImage,
    'id': '6',
    'trainer_name': 'John',
    'training_name': 'Safe Scrum Master',
    'location': 'West Des Moines',
    'date': 'Oct 11 -13,2019',
    'time': '8:30am - 12:30pm',
    'amount': 825
  },
  {
    'image': trainingImage,
    'id': '7',
    'trainer_name': 'John',
    'training_name': 'Safe Scrum Master',
    'location': 'West Des Moines',
    'date': 'Oct 11 -13,2019',
    'time': '8:30am - 12:30pm',
    'amount': 825
  },
  {
    'image': trainingImage,
    'id': '8',
    'trainer_name': 'John',
    'training_name': 'Safe Scrum Master',
    'location': 'West Des Moines',
    'date': 'Oct 11 -13,2019',
    'time': '8:30am - 12:30pm',
    'amount': 825
  },
  {
    'image': trainingImage,
    'id': '9',
    'trainer_name': 'John',
    'training_name': 'Safe Scrum Master',
    'location': 'West Des Moines',
    'date': 'Oct 11 -13,2019',
    'time': '8:30am - 12:30pm',
    'amount': 825
  },
  {
    'image': trainingImage,
    'id': '10',
    'trainer_name': 'John',
    'training_name': 'Safe Scrum Master',
    'location': 'West Des Moines',
    'date': 'Oct 11 -13,2019',
    'time': '8:30am - 12:30pm',
    'amount': 825
  },
  {
    'image': trainingImage,
    'id': '11',
    'trainer_name': 'John',
    'training_name': 'Safe Scrum Master',
    'location': 'West Des Moines',
    'date': 'Oct 11 -13,2019',
    'time': '8:30am - 12:30pm',
    'amount': 825
  },
  {
    'image': trainingImage,
    'id': '12',
    'trainer_name': 'John',
    'training_name': 'Safe Scrum Master',
    'location': 'West Des Moines',
    'date': 'Oct 11 -13,2019',
    'time': '8:30am - 12:30pm',
    'amount': 825
  },
  {
    'image': trainingImage,
    'id': '13',
    'trainer_name': 'John',
    'training_name': 'Safe Scrum Master',
    'location': 'West Des Moines',
    'date': 'Oct 11 -13,2019',
    'time': '8:30am - 12:30pm',
    'amount': 825
  },
  {
    'image': trainingImage,
    'id': '14',
    'trainer_name': 'John',
    'training_name': 'Safe Scrum Master',
    'location': 'West Des Moines',
    'date': 'Oct 11 -13,2019',
    'time': '8:30am - 12:30pm',
    'amount': 825
  },
  {
    'image': trainingImage,
    'id': '15',
    'trainer_name': 'John',
    'training_name': 'Safe Scrum Master',
    'location': 'West Des Moines',
    'date': 'Oct 11 -13,2019',
    'time': '8:30am - 12:30pm',
    'amount': 825
  },
  {
    'image': trainingImage,
    'id': '16',
    'trainer_name': 'John',
    'training_name': 'Safe Scrum Master',
    'location': 'West Des Moines',
    'date': 'Oct 11 -13,2019',
    'time': '8:30am - 12:30pm',
    'amount': 825
  },
  {
    'image': trainingImage,
    'id': '17',
    'trainer_name': 'John',
    'training_name': 'Safe Scrum Master',
    'location': 'West Des Moines',
    'date': 'Oct 11 -13,2019',
    'time': '8:30am - 12:30pm',
    'amount': 825
  },
  {
    'image': trainingImage,
    'id': '18',
    'trainer_name': 'John',
    'training_name': 'Safe Scrum Master',
    'location': 'West Des Moines',
    'date': 'Oct 11 -13,2019',
    'time': '8:30am - 12:30pm',
    'amount': 825
  },
  {
    'image': trainingImage,
    'id': '19',
    'trainer_name': 'John',
    'training_name': 'Safe Scrum Master',
    'location': 'West Des Moines',
    'date': 'Oct 11 -13,2019',
    'time': '8:30am - 12:30pm',
    'amount': 825
  },
  {
    'image': trainingImage,
    'id': '20',
    'trainer_name': 'Mark',
    'training_name': 'Full Stack Developer',
    'location': 'Chicago, IL',
    'date': 'Oct 11 -13,2019',
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
