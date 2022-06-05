import 'package:mynotes/models/company.dart';
import 'users.dart';


class Application {
  User user;
  String cgpa;
  String description;
  String Subject;
  Company company;
  String Seen;


Application({
    required this.user,
    required this.cgpa,
     this.Seen='none',
    required this.Subject,
    required this.company,
    required this.description,
  });
  factory Application.fromJson(Map<String, dynamic> json) {
      return Application(
       user :User.fromJson(json['user']),
        cgpa : json['cgpa'],
        description : json['description'],
        Subject:json['Subject'],
        Seen:json['Seen'],
     company :Company.fromJson(json['company']));
  }


}

