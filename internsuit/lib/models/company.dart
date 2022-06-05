class Company {
  String id;
  String companyname;
  String companywebsite;
  String address;
  String dedicatedfield;
  String password;

 Company({
    this.id="1",
    required this.companyname,
    required this.companywebsite,
    required this.address,
    required this.dedicatedfield,
  this.password="1",
  });


   factory Company.fromJson(Map<String, dynamic> json) {
    return Company(
       id : json['_id'],
        companyname : json['company_name'],
        companywebsite :json['Company_website'],
        address : json['Address'],
        password:json['password'],
        dedicatedfield : json['dedicated_field']);
  }
}



 