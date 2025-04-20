import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hireproffapp/screens/organizationalservices.dart';

class upload_details extends StatefulWidget {
  const upload_details({super.key});

  @override
  State<upload_details> createState() => _upload_detailsState();
}

class _upload_detailsState extends State<upload_details> {

  final _auth = FirebaseAuth.instance;
  final _formKey = GlobalKey<FormState>();
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  
  Future<String?> uploadPdf(String fileName,File file) async {
   final reference=  FirebaseStorage.instance.ref().child("Resumes/$fileName.pdf");
   final uploadTask = reference.putFile(file);
   await uploadTask.whenComplete(() => {});
   final downloadLink = await reference.getDownloadURL();
   return downloadLink;
  }
 void pickFile() async {
  final pickedFile = await FilePicker.platform.pickFiles(
    type: FileType.custom,
    allowedExtensions:['pdf'],
  );
  if(pickedFile!=null){
    String fileName = pickedFile.files[0].name;
    File file = File(pickedFile.files[0].path!);
    final downloadLink = await uploadPdf(fileName, file);
    _firebaseFirestore.collection("pdfs").add({
      "name" : fileName,
      "url" : downloadLink,
    });
   print("Pdf uploaded Successfully");
  }
 } 


  final firstNameEditingController = new TextEditingController();
  final lastNameEditingController = new TextEditingController();
  final emailNameEditingController = new TextEditingController();
  final passwordNameEditingController = new TextEditingController();
  final phoneNoEditingController = new TextEditingController();
  final GenderEditingController = new TextEditingController();
  final NationalityEditingController = new TextEditingController();
  final StateEditingController = new TextEditingController();
  final CityEditingController = new TextEditingController();
  final PinCodeEditingController = new TextEditingController();
  final AddressEditingController = new TextEditingController();
  final ExperienceEditingController = new TextEditingController();
  final OrganizationEditingController = new TextEditingController();
  final IndustryEditingController = new TextEditingController();
  final JobRoleEditingController = new TextEditingController();
  final TotalExperienceEditingController = new TextEditingController();
  final CourseEditingController = new TextEditingController();
  final UniversityEditingController = new TextEditingController();
  final DateEditingController = new TextEditingController();


  @override
  Widget build(BuildContext context) {
    final firstNameField = TextFormField(
    style:TextStyle(color:Colors.black),
      autofocus: false,
      controller: firstNameEditingController,
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
          RegExp regex = new RegExp(r'^.{3,}$');
          if (value!.isEmpty) {
            return ("Firstname cannot be empty");
          }
          if (!regex.hasMatch(value)) {
            return ("Enter Valid name(Min. 3 Character)");
          }
          return null;
        },

      onSaved: (value)
      {
        firstNameEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.account_circle,color: Colors.black),
        contentPadding: const EdgeInsets.fromLTRB(20,15,20,15),
          hintStyle: TextStyle(color:Colors.black,),
        hintText: "firstName",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      )
    );

    final lastNameField = TextFormField(
      style:TextStyle(color:Colors.black),
      autofocus: false,
      controller: lastNameEditingController,
      keyboardType: TextInputType.name,
       validator: (value) {
          if (value!.isEmpty) {
            return ("Lastname cannot be empty");
          }
          return null;
        },
      onSaved: (value)
      {
        lastNameEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.person,color: Colors.black),
        contentPadding: const EdgeInsets.fromLTRB(20,15,20,15),
          hintStyle: TextStyle(color:Colors.black,),

        hintText: "lastName",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      )
    );

     final emailField = TextFormField(
     style:TextStyle(color:Colors.black),
      autofocus: false,
      controller: emailNameEditingController,
      keyboardType: TextInputType.emailAddress,     
      validator: (value)
      {
        if(value!.isEmpty)
        {
          return ("Please Enter Your Email");
        }

        if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) {
            return ("Please Enter a valid email");
          }
          return null;
      },
      onSaved: (value)
      {
        firstNameEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.mail,color: Colors.black,),
        contentPadding: const EdgeInsets.fromLTRB(20,15,20,15),
          hintStyle: TextStyle(color:Colors.black),

        hintText: "email",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      )
    );
 
 final passwordField = TextFormField(
            style:TextStyle(color:Colors.white),

      autofocus: false,
      controller: passwordNameEditingController,
      keyboardType: TextInputType.emailAddress,
       validator: (value) {
          RegExp regex = new RegExp(r'^.{6,}$');
          if (value!.isEmpty) {
            return ("Password is required for login");
          }
          if (!regex.hasMatch(value)) {
            return ("Enter Valid Password(Min. 6 Character)");
          }
          return null;
        },

      onSaved: (value)
      {
        passwordNameEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.mail,color: Colors.black,),
        contentPadding: const EdgeInsets.fromLTRB(20,15,20,15),
          hintStyle: TextStyle(color:Colors.black),

        hintText: "password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      )
    );

    final phoneNoField = TextFormField(
      style:TextStyle(color:Colors.black),
      autofocus: false,
      controller: phoneNoEditingController,
      keyboardType: TextInputType.name,
       validator: (value) {
          if (value!.isEmpty) {
            return ("Lastname cannot be empty");
          }
          return null;
        },

      onSaved: (value)
      {
        phoneNoEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.phone,color: Colors.black),
        contentPadding: const EdgeInsets.fromLTRB(20,15,20,15),
          hintStyle: TextStyle(color:Colors.black,),

        hintText: "phoneNo",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      )
    );


    final GenderField = TextFormField(
      style:TextStyle(color:Colors.black),
      autofocus: false,
      controller: GenderEditingController,
      keyboardType: TextInputType.name,
       validator: (value) {
          if (value!.isEmpty) {
            return ("Lastname cannot be empty");
          }
          return null;
        },

      onSaved: (value)
      {
        GenderEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.male,color: Colors.black),
        contentPadding: const EdgeInsets.fromLTRB(20,15,20,15),
          hintStyle: TextStyle(color:Colors.black,),

        hintText: "Gender(male or female)",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      )
    );
 
 // Work Expetrience
  final ExperienceField = TextFormField(
      style:TextStyle(color:Colors.black),
      autofocus: false,
      controller: ExperienceEditingController,
      keyboardType: TextInputType.name,
       validator: (value) {
          if (value!.isEmpty) {
            return ("Experience cannot be empty");
          }
          return null;
        },

      onSaved: (value)
      {
        ExperienceEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(20,15,20,15),
          hintStyle: TextStyle(color:Colors.transparent,),
          labelText: "Experience(fresher or Experienced)",
        hintText: "Experience(Fresher or Experienced)",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      )
    );
 
  final OrganizationField = TextFormField(
      style:TextStyle(color:Colors.black),
      autofocus: false,
      controller: OrganizationEditingController,
      keyboardType: TextInputType.name,
       validator: (value) {
          if (value!.isEmpty) {
            return ("Organization cannot be empty");
          }
          return null;
        },

      onSaved: (value)
      {
        OrganizationEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(20,15,20,15),
          hintStyle: TextStyle(color:Colors.transparent,),
          labelText: "Organization",
        hintText: "Organization",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      )
    );
  final Indutry = TextFormField(
      style:TextStyle(color:Colors.black),
      autofocus: false,
      controller: IndustryEditingController,
      keyboardType: TextInputType.name,
       validator: (value) {
          if (value!.isEmpty) {
            return ("Indutry cannot be empty");
          }
          return null;
        },

      onSaved: (value)
      {
        IndustryEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(20,15,20,15),
          hintStyle: TextStyle(color:Colors.transparent),
          labelText: "Industry",
        hintText: "Industry",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      )
    );
  final JobRoleField = TextFormField(
      style:TextStyle(color:Colors.black),
      autofocus: false,
      controller: JobRoleEditingController,
      keyboardType: TextInputType.name,
       validator: (value) {
          if (value!.isEmpty) {
            return ("JobRole cannot be empty");
          }
          return null;
        },

      onSaved: (value)
      {
        JobRoleEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(20,15,20,15),
          hintStyle: TextStyle(color:Colors.transparent,),
           labelText: "JobRole",
        hintText: "JobRole",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      )
    );
  final TotalExperienceField = TextFormField(
      style:TextStyle(color:Colors.black),
      autofocus: false,
      controller: TotalExperienceEditingController,
      keyboardType: TextInputType.name,
       validator: (value) {
          if (value!.isEmpty) {
            return ("TotalExperience cannot be empty");
          }
          return null;
        },

      onSaved: (value)
      {
        TotalExperienceEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(20,15,20,15),
          hintStyle: TextStyle(color:Colors.transparent),
          labelText: "Total Experince",
        hintText: "Total Experince",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      )
    );
  final CountryField = TextFormField(
      style:TextStyle(color:Colors.black),
      autofocus: false,
      controller: NationalityEditingController,
      keyboardType: TextInputType.name,
       validator: (value) {
          if (value!.isEmpty) {
            return ("Nationality cannot be empty");
          }
          return null;
        },

      onSaved: (value)
      {
        NationalityEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.location_city_outlined,color: Colors.black),
        contentPadding: const EdgeInsets.fromLTRB(20,15,20,15),
          hintStyle: TextStyle(color:Colors.transparent),
          labelText:"Nationality",

        hintText: "Nationality",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      )
    );
 final StateField = TextFormField(
      style:TextStyle(color:Colors.black),
      autofocus: false,
      controller: StateEditingController,
      keyboardType: TextInputType.name,
       validator: (value) {
          if (value!.isEmpty) {
            return ("State cannot be empty");
          }
          return null;
        },

      onSaved: (value)
      {
        StateEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.location_city_outlined,color: Colors.black),
        contentPadding: const EdgeInsets.fromLTRB(20,15,20,15),
          hintStyle: TextStyle(color:Colors.transparent),
          labelText:"State",
        hintText: "State",
          border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      )
    );
 final CityField = TextFormField(
      style:TextStyle(color:Colors.black),
      autofocus: false,
      controller: CityEditingController,
      keyboardType: TextInputType.name,
       validator: (value) {
          if (value!.isEmpty) {
            return ("City cannot be empty");
          }
          return null;
        },

      onSaved: (value)
      {
        CityEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.location_city_outlined,color: Colors.black),
        contentPadding: const EdgeInsets.fromLTRB(20,15,20,15),
          hintStyle: TextStyle(color:Colors.transparent),
          labelText:"City",
          hintText: "City",
          border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      )
    );
  
    final EducationField = TextFormField(
      style:TextStyle(color:Colors.black),
      autofocus: false,
      controller: CourseEditingController,
      keyboardType: TextInputType.name,
       validator: (value) {
          if (value!.isEmpty) {
            return ("Coursename cannot be empty");
          }
          return null;
        },

      onSaved: (value)
      {
        CourseEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(20,15,20,15),
          hintStyle: TextStyle(color:Colors.transparent),
          labelText: "Course",
        hintText: "Course",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      )
    );
   
   final University = TextFormField(
      style:TextStyle(color:Colors.black),
      autofocus: false,
      controller: UniversityEditingController,
      keyboardType: TextInputType.name,
       validator: (value) {
          if (value!.isEmpty) {
            return ("University name cannot be empty");
          }
          return null;
        },

      onSaved: (value)
      {
        UniversityEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.school,color: Colors.black),
        contentPadding: const EdgeInsets.fromLTRB(20,15,20,15),
          hintStyle: TextStyle(color:Colors.transparent),
          labelText:"University",

        hintText: "University",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      )
    );
 final DateField = TextFormField(
      style:TextStyle(color:Colors.black),
      autofocus: false,
      controller: DateEditingController,
      keyboardType: TextInputType.datetime,
       validator: (value) {
          if (value!.isEmpty) {
            return ("Date cannot be empty");
          }
          return null;
        },

      onSaved: (value)
      {
        DateEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.date_range,color: Colors.black),
        contentPadding: const EdgeInsets.fromLTRB(20,15,20,15),
          hintStyle: TextStyle(color:Colors.transparent),
          labelText:"Date",
        hintText: "Date",
          border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      )
    );
      
      final upload_detailsButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.deepPurple[200],
      child: MaterialButton(
        padding: const EdgeInsets.fromLTRB(20,15,20,15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          CollectionReference collRef = FirebaseFirestore.instance.collection('userdetails');
          collRef.add({
            'firstName' : firstNameEditingController.text,
            'lastName' : lastNameEditingController.text,
            'email' : emailNameEditingController.text,
            'phoneNo' : phoneNoEditingController.text,
             'Gender'  : GenderEditingController.text,
          'Experience' : ExperienceEditingController.text,
          'Organization' : OrganizationEditingController.text,
          'Industry' : IndustryEditingController.text,
           'jobRole' : JobRoleEditingController.text,
          'TotalExperience' : TotalExperienceEditingController.text,
            'Nationality' : NationalityEditingController.text,
           'state' : StateEditingController.text,
           'city' : CityEditingController.text,
          'course' : CourseEditingController.text,
           'Date' : DateEditingController.text,       
          }
          );
           Navigator.push(
                 context,
                  MaterialPageRoute(builder: (context) => const OrganizationalServices()),
               );
          Fluttertoast.showToast(msg: "Details Submitted successfully :)");
        },
        child: const Text("Upload Details", textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold
        ),),
      ),
      );
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
       appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.black,
        title: Text("E-Recruitment"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.settings_rounded),
          )
        ]
      ),
      body:SingleChildScrollView(
        child: Stack(
          children:[
          Column(
            children:[
              Form(
               key: _formKey,
                child: Container(
                  height:50,
                  width:double.infinity,
                  color: Colors.black,
                    child:Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('Personal Information',style:TextStyle(color: Colors.white,fontSize: 20)),
                    ), 
                ),
              ),
                const SizedBox(height: 35),
                  firstNameField,
                  const SizedBox(height: 35),
                  lastNameField,
                  const SizedBox(height: 35),   
                  emailField,
                  const SizedBox(height: 35),
                  passwordField,
                  SizedBox(height:35),
                  phoneNoField,
                  const SizedBox(height: 35),
                  GenderField,
                  const SizedBox(height: 35),
                  Container(
                height:50,
                width:double.infinity,
                color: Colors.black,
                  child:Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('Work Experience',style:TextStyle(color: Colors.white,fontSize: 20)),
                  ), 
              ),
              const SizedBox(height:35),
              ExperienceField,
              const SizedBox(height:35),
              OrganizationField,
              const SizedBox(height:35),
              Indutry,
              const SizedBox(height:35),
              JobRoleField,
              const SizedBox(height:35),
              TotalExperienceField,
              const SizedBox(height:35),
              CountryField,
              const SizedBox(height:35),
              StateField,
              const SizedBox(height:35),
              CityField,
              const SizedBox(height:35),

               Container(
                height:50,
                width:double.infinity,
                color: Colors.black,
                  child:Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('Educational Qualifications',style:TextStyle(color: Colors.white,fontSize: 20)),
                  ), 
              ),
              SizedBox(height: 35,),
            Center(child: Text('Highest Qualification',style:TextStyle(color: Colors.black,fontSize: 20))),
              SizedBox(height:35),
              EducationField,
              SizedBox(height:35),
              University,
              SizedBox(height: 35,),
              DateField,
              Container(
                height:50,
                width:double.infinity,
                color: Colors.black,
                  child:Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('CV/Resume',style:TextStyle(color: Colors.white,fontSize: 20)),
                    
                  ), 
              ),
              SizedBox(height: 20),
              ElevatedButton(               
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(             
                  borderRadius: BorderRadius.circular(10.0),
                ),),
                // Within the `FirstRoute` widget
             onPressed: () {
              pickFile();
          },
               child: Row(
                 children: [
                   Center(
                     child: const Text('Upload Resume/CV',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                     
                      ),),
                   ),
                   Icon(Icons.upload,color: Colors.black)

                 ],
               ),
              
            ),
             const SizedBox(height:10),
             Text('***File Should be of pdf format only',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),),
                      SizedBox(height:35),
                      upload_detailsButton,
                     SizedBox(height: 20),

            ],
          ),
          ],
        ),
      ),
    );
  }
  
  /*void upload_details(String email, String password) async {
    if (_formKey.currentState!.validate()) {      
        await _auth
            .createUserWithEmailAndPassword(email: email, password: password)
            .then((value) => {
              postDetailsToFirestore()
              }).catchError((e)
              {
                 Fluttertoast.showToast(msg: e!.message);
              });
              } }
  postDetailsToFirestore() async {
    // calling our firestore
    // calling our user model
    // sending these values

    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User? user = _auth.currentUser;

    UserModel2 userModel = UserModel2();

    // writing all the values
    userModel.email = user!.email;
    userModel.uid = user.uid;
    userModel.firstName = firstNameEditingController.text;
    userModel.lastName = lastNameEditingController.text;
    userModel.email = emailNameEditingController.text;
    userModel.phoneNo = phoneNoEditingController.text;
    userModel.Gender = GenderEditingController.text;
    userModel.Experience = ExperienceEditingController.text;
    userModel.Organization = OrganizationEditingController.text;
    userModel.Industry = IndustryEditingController.text;
    userModel.jobRole = JobRoleEditingController.text;
    userModel.TotalExperience = TotalExperienceEditingController.text;
    userModel.Nationality = NationalityEditingController.text;
    userModel.state = StateEditingController.text;
    userModel.city = CityEditingController.text;
    userModel.course = CourseEditingController.text;
    userModel.Date = DateEditingController.text;
   
    await firebaseFirestore
        .collection("userdetails")
        .doc(user.uid)
        .set(userModel.toMap());
    Fluttertoast.showToast(msg: "Details Submitted successfully :)");

    Navigator.pushAndRemoveUntil(
        (context),
        MaterialPageRoute(builder: (context) => const profileScreen()),
        (route) => false);
  }*/

}
 