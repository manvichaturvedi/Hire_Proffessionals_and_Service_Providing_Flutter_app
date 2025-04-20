class UserModel2 {
  String? uid;
  String? firstName;
  String? lastName;
  String? email;
  String? phoneNo;
  String? Gender;
  String? Experience;
  String? Organization;
  String? Industry;
  String? jobRole;
  String? TotalExperience;
  String? Nationality;
  String? state;
  String? city;
  String? course;
  String? University;
  String? Date;


  UserModel2({this.uid,this.firstName,this.lastName,this.email,this.phoneNo,this.Gender,this.Experience,this.Organization,this.Industry,this.jobRole,this.TotalExperience,this.Nationality,this.state,this.city,this.course,this.University,this.Date});

  // taking data from server
  factory UserModel2.fromMap(map)
  {
    return UserModel2(
      uid: map['uid'],
    firstName: map['firstName'],
    lastName: map['lastName'],
    email: map['email'],
    phoneNo: map['phoneNo'],
    Gender: map['Gender'],
    Experience: map['Experience'],
    Organization: map['Organization'],
    Industry: map['Industry'],
    jobRole: map['jobRole'],
    TotalExperience : map['TotalExperience '],
    Nationality : map['Nationality '],
    state : map['state'],
    city : map['city'],
    course : map['course'],
    University : map['University'],
    Date : map['Date']
    );
  }
   // sending data to our server
   Map<String ,dynamic> toMap() {
    return {
    'uid': uid,
    'firstName': firstName,
    'lastName': lastName,
    'email': email,
     'phoneNo' : phoneNo,
     'Gender' : Gender,
     'Experience' : Experience,
     'Organization' : Organization,
     'Industry' : Industry,
     'jobRole' : jobRole,
     'TotalExperience' : TotalExperience,
     'Nationality' : Nationality,
     'state' : state,
     'city' : city,
     'course' : course,
     'University' : University,
     'Date' : Date
    };
   }
}