import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hireproffapp/model/user_model.dart';
import 'package:hireproffapp/screens/home_screen.dart';
import 'package:hireproffapp/screens/profilepage.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({super.key});

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  
  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInuser = UserModel();
  
  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
    .collection("users")
    .doc(user?.uid)
    .get()
    .then((value){
        this.loggedInuser = UserModel.fromMap(value.data());
        setState(() {  });
        });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
        appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage())),
        ), 
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        title: Text("My Account"),
        centerTitle: true,
      ),
      body: Stack(
        children: [
        Column(
          children: [
            Container(
              height: 50,
              width:double.infinity,
              color: Colors.black,
              child: Center(child: Text('Your Details',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Colors.white),)),
            ),
            SizedBox(height:80),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            Text('First Name :',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            Text('${loggedInuser.firstName}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ]
            ),
            SizedBox(height:20),
            Divider(
          height: 100,
          color: Colors.green,
          thickness: 1,
        ),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            Text('Last Name :',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            Text('${loggedInuser.lastName}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ]
            ),
             SizedBox(height:50),
             Divider(
              height: 100,
               color: Colors.green,
               thickness: 1,
             ),
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            Text('Email Id :',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            Text('${loggedInuser.email}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ]
            ),
            SizedBox(height:100),
            Divider(
          height: 90,
          color: Colors.green,
          thickness: 1,
        ),
             Container(
              height: 40,
              width:150,
              decoration: BoxDecoration(
                border : Border.all(color:Colors.black, width:2),
                 color: Colors.black,
                borderRadius: BorderRadius.circular(40),           
              ),
              child:Center(child: Text('Edit Profile',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Colors.white),))
            ),
          ],
        ),
        ]
      ),
    );
  }
}