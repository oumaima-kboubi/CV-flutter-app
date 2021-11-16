import 'package:cvapp/experience.dart';
import 'package:cvapp/personne.dart';
import 'package:cvapp/widgets/description.dart';
import 'package:cvapp/widgets/experience_widget.dart';
import 'package:cvapp/widgets/header.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      home: CVScreen(),
    );
  }
}

class CVScreen extends StatefulWidget {
  const CVScreen({Key? key}) : super(key: key);
  @override
  _CVScreenState createState() => _CVScreenState();
}

class _CVScreenState extends State<CVScreen> {
  // List<Experience> experiences = [];
  Personne personne = Personne(
      id: 11,
      name: "Ouma Kboubi",
      phone: "99 887 766",
      email: "foulen@gmail.com",
      profileDescription:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      skills: [
        "- Communication",
        "- Team Building",
        "- ETCCC"
      ],
      experiences: [
        Experience(
            id: 1,
            title: "Directrice générale des RH",
            date: "Mars 2018 à présent",
            description:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
        Experience(
            id: 2,
            title: "Généraliste en ressources humaines",
            date: "fevrier 2015- mars 2018",
            description:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
        Experience(
            id: 3,
            title: "Généraliste en ressources humaines",
            date: "fevrier 2015- mars 2018",
            description:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
      ]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(height: 50),
          Header(
              name: personne.name,
              phone: personne.phone,
              email: personne.email),
          Description(
              title: 'Profile', description: [personne.profileDescription]),
          Description(
              title: 'Compétence Principale', description: personne.skills),
          Padding(
            padding: const EdgeInsets.only(left: 0),
            child: Column(
              children: [
                const Text(
                  "Experience Professionnelle",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    fontSize: 25,
                  ),
                ),
                ...personne.experiences.map((experience) => ExperienceWidget(
                    description: experience.description,
                    date: experience.date,
                    title: experience.title)),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
