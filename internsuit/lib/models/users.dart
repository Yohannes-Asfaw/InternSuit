
class User {
  String userName;
  String fullName;
  String address;
  String department;
  String university;
  late var Password;
  late var id;



  User({
   this.Password,
    required this.address,
    required this.department,
    required this.fullName,
     this.university="addis ababa",
    required this.userName,
    this.id
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        userName : json['user_name'],
        fullName :json['full_name'],
        university : json['university'],
        address : json['Address'],
        Password:json['password'],
        id:json['_id'],
        department : json['department']);
        
  }

  
}
