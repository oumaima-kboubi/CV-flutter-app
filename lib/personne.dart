import 'package:cvapp/experience.dart';

class Personne {
  int? id;
  String name;
  String phone;
  String email;
  String profileDescription;
  List<String> skills;
  List<Experience> experiences;

  Personne(
      {this.id,
      required this.name,
      required this.phone,
      required this.email,
      required this.profileDescription,
      required this.skills,
      required this.experiences});
}
