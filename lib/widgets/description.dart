import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  final String title;
  final List<String> description;
  const Description({Key? key, required this.title, required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 25,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35.0, right: 35, bottom: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...description.map((desc) => Text(
                      desc,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.blue.shade900,
                        fontSize: 15,
                      ),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
