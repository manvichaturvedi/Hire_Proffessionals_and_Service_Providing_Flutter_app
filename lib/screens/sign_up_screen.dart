import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hireproffapp/model/user_model.dart';
import 'package:hireproffapp/screens/home_screen.dart';

class RegisterationScreen extends StatefulWidget {
  const RegisterationScreen({Key? key}) : super(key: key);

  @override
  _RegisterationScreenState createState() => _RegisterationScreenState();
  }
  class _RegisterationScreenState extends State<RegisterationScreen>
 {
  final _auth = FirebaseAuth.instance;

  final _formKey = GlobalKey<FormState>();

  final firstNameEditingController = new TextEditingController();
  final lastNameEditingController = new TextEditingController();
  final emailNameEditingController = new TextEditingController();
  final passwordNameEditingController = new TextEditingController();
  final confirmPasswordNameEditingController = new TextEditingController();

    @override
    Widget build(BuildContext context) {

      final firstNameField = TextFormField(
              style:TextStyle(color:Colors.white),

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
        prefixIcon: const Icon(Icons.account_circle,color: Colors.white,),
        contentPadding: const EdgeInsets.fromLTRB(20,15,20,15),
          hintStyle: TextStyle(color:Colors.white,),

        hintText: "firstName",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      )
    );

    final lastNameField = TextFormField(
            style:TextStyle(color:Colors.white),

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
        prefixIcon: const Icon(Icons.person,color: Colors.white,),
        contentPadding: const EdgeInsets.fromLTRB(20,15,20,15),
          hintStyle: TextStyle(color:Colors.white,),

        hintText: "lastName",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      )
    );

     final emailField = TextFormField(
            style:TextStyle(color:Colors.white),

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
        prefixIcon: const Icon(Icons.mail,color: Colors.white,),
        contentPadding: const EdgeInsets.fromLTRB(20,15,20,15),
          hintStyle: TextStyle(color:Colors.white,),

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
        prefixIcon: const Icon(Icons.password,color: Colors.white,),
        contentPadding: const EdgeInsets.fromLTRB(20,15,20,15),
          hintStyle: TextStyle(color:Colors.white,),

        hintText: "password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      )
    );

  final confirmPasswordNameField = TextFormField(
          style:TextStyle(color:Colors.white),

      autofocus: false,
      controller: confirmPasswordNameEditingController,
      keyboardType: TextInputType.emailAddress,
       validator: (value) {
          if(confirmPasswordNameEditingController.text != passwordNameEditingController.text){
            return "Password do not match";
          }
          return null;
        },

      onSaved: (value)
      {
        
        confirmPasswordNameEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.password,color: Colors.white,),
        contentPadding: const EdgeInsets.fromLTRB(20,15,20,15),
          hintStyle: TextStyle(color:Colors.white,),

        hintText: "confirm password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      )
    );
    
    final signupButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.deepPurple[200],
      child: MaterialButton(
        padding: const EdgeInsets.fromLTRB(20,15,20,15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          signUp(emailNameEditingController.text, passwordNameEditingController.text);
        },
        child: const Text("SignUp", textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold
        ),),
      ),
      );

    return Scaffold(
      backgroundColor: Colors.black,
      body:  Center(
        child: SingleChildScrollView(
        child: Container( 
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.all(26.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                SizedBox(
                height: 200,
               child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                 child: Image.asset(
                "images/Screenshot 2024-03-03 140642.png",
                  fit : BoxFit.contain,
                ))),
                const SizedBox(height: 35),
                firstNameField,
                const SizedBox(height: 35),
                lastNameField,
                const SizedBox(height: 35),
                
                emailField,
                const SizedBox(height: 35),
                passwordField,
                const SizedBox(height: 35),
                confirmPasswordNameField,
                const SizedBox(height: 35),
                signupButton,
                ],
            ),
            
          ),
          ),
        ),
        ),
      ),

    );
    }
      void signUp(String email, String password) async {
    if (_formKey.currentState!.validate()) {
      
        await _auth
            .createUserWithEmailAndPassword(email: email, password: password)
            .then((value) => {
              postDetailsToFirestore()
              }).catchError((e)
              {
                 Fluttertoast.showToast(msg: e!.message);
              });
              }
              }
  postDetailsToFirestore() async {
    // calling our firestore
    // calling our user model
    // sending these values

    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User? user = _auth.currentUser;

    UserModel userModel = UserModel();

    // writing all the values
    userModel.email = user!.email;
    userModel.uid = user.uid;
    userModel.firstName = firstNameEditingController.text;
    userModel.lastName = lastNameEditingController.text;

    await firebaseFirestore
        .collection("users")
        .doc(user.uid)
        .set(userModel.toMap());
    Fluttertoast.showToast(msg: "Account created successfully :) ");

    Navigator.pushAndRemoveUntil(
        (context),
        MaterialPageRoute(builder: (context) => HomePage()),
        (route) => false);
  }
 }