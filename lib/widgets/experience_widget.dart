import 'package:flutter/material.dart';

class ExperienceWidget extends StatelessWidget {
  final String description;
  final String date;
  final String title;

  const ExperienceWidget(
      {Key? key,
      required this.description,
      required this.date,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 22,
          ),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue.shade800,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            date,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue.shade900,
              fontSize: 18,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(description),
        ],
      ),
    );
  }
}
