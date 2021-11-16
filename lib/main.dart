import 'package:cvapp/experience.dart';
import 'package:cvapp/personne.dart';
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
        "Communication",
        "Team Building",
        "ETCCC"
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
        /*  appBar: AppBar(
          centerTitle: true,
          title: const Text("CVTech"),
        ),*/
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 50, 0, 00),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  //  mainAxisAlignment: MainAxisAlignment.,
                  children: <Widget>[
                    Text(
                      personne.name.toUpperCase(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue.shade900,
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      personne.phone,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue.shade700,
                          fontSize: 15),
                    ),
                    Text(
                      personne.email,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue.shade700,
                          fontSize: 15),
                    ),
                  ],
                ),
                const CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage("assets/images/picture.jpg"),
                ),
                // Image.asset(
                //   'assets/images/picture.jpg',
                //   width: 100.0,
                //   height: 100.0,
                // ), //image
              ],
            ),
            //   Text("hiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii")
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    "Profil",
                    // textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                      fontSize: 25,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                      child: Text(
                        personne.profileDescription,
                        //textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue.shade900,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Compétence Principale",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  ...personne.skills.map((skill) => Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text("*" + skill),
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
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
                  ...personne.experiences.map((experience) => Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Text(
                                experience.title,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue.shade800,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Text(
                              experience.date,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue.shade900,
                                fontSize: 15,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(experience.description),
                            ),
                          ],
                        ),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
