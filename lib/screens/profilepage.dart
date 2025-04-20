import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hireproffapp/model/user_model.dart';
import 'package:hireproffapp/screens/HelpCenter.dart';
import 'package:hireproffapp/screens/login_screen.dart';
import 'package:hireproffapp/screens/myaccount.dart';
import 'package:hireproffapp/screens/proff_home_choose.dart';



class profileScreen extends StatefulWidget {
  const profileScreen({super.key});

  @override
  State<profileScreen> createState() => _profileScreenState();
}

class _profileScreenState extends State<profileScreen> {

   
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
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        title: Text("Profile"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.settings_rounded),
          )
        ]
      ),
      body: Center(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Stack(
                      children: [
                        SizedBox(
                          width: 120,
                          height:120,
                          child: CircleAvatar(
                            radius:60,
                            child:Image.asset('images/Profile-Avatar-PNG.png',
                              fit:BoxFit.fill)
                          ),
                        ),
                    
                      Positioned(
                        right : 0,
                        bottom: 0,
                          height:46,
                          width: 46,
                          child: Container(
                            height:35,
                            width:35,
                            child:Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.image),
                              ]
                            ),
                            
                      decoration: BoxDecoration(
                        color: Colors.amber[300],
                     border: Border.all(
                    color: Colors.black,
                   ),
                   borderRadius: BorderRadius.all(Radius.circular(30))
                          ),
                          ),
                      ),
                      ],),
                      SizedBox(height: 20,),
                      Text(
                        "${loggedInuser.firstName} ${loggedInuser.lastName}",
                          style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("developer"),
                    SizedBox(height: 20,),
                    InkWell(
                     onTap: () => {                                
                      Navigator.pushReplacement(
                      context,MaterialPageRoute(builder: (context) => MyAccount()),),},
                    child:Card(
                        elevation: 5,
                        shadowColor: Colors.black,
                        color: Colors.greenAccent[100],
                        child:SizedBox(
                          width: 360,
                          height: 70,
                          child:Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(children: [
                              Icon(Icons.person_2_outlined),
                              SizedBox(width: 20,),
                              Text("My Account"),
                              SizedBox(width:160),
                              Icon(Icons.arrow_circle_right),
                            ],
                            ),
                          )
                        )
                      ),
                  ),
                      SizedBox(height: 20,),
                    Card(
                        elevation: 5,
                        shadowColor: Colors.black,
                        color: Colors.greenAccent[100],
                        child:InkWell(
                          onTap: () => {logout(context)},
                        child:SizedBox(
                          width: 360,
                          height: 70,
                          child:Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(children: [
                              Icon(Icons.notifications),
                              SizedBox(width: 20,),
                              Text("Logout"),
                              SizedBox(width:200),
                              Icon(Icons.arrow_circle_right)
                            ],
                            ),
                          )
                        ),
                        ),
                      ),
                      SizedBox(height: 20,),
                    Card(
                        elevation: 5,
                        shadowColor: Colors.black,
                        color: Colors.greenAccent[100],
                        child:SizedBox(
                          width: 360,
                          height: 70,
                          child:Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(children: [
                              Icon(Icons.logout_outlined),
                              SizedBox(width: 20,),
                              Text("Notifications"),
                              SizedBox(width:160),
                              Icon(Icons.arrow_circle_right)
                            ],
                            ),
                          )
                        ) 
                      ),
                      SizedBox(height: 20,),
                    InkWell(
                     onTap: () => {                                
                      Navigator.pushReplacement(
                      context,MaterialPageRoute(builder: (context) => proff_Home_choose()),),},
                      child: Card(
                          elevation: 5,
                          shadowColor: Colors.black,
                          color: Colors.greenAccent[100],
                        
                            child: SizedBox(
                              width: 360,
                              height: 70,
                              child:Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(children: [
                                  Icon(Icons.person),
                                  SizedBox(width: 20,),
                                  Text("Join Us"),
                                  SizedBox(width:190),
                                  Icon(Icons.arrow_circle_right)
                                ],
                                ),
                              )
                            ),
                          
                        ),
                    ),
                      SizedBox(height: 20,),
                    InkWell(
                     onTap: () => {                                
                      Navigator.pushReplacement(
                      context,MaterialPageRoute(builder: (context) => HelpCenter()),),},
                    child:Card(
                        elevation: 5,
                        shadowColor: Colors.black,
                        color: Colors.greenAccent[100],
                        child:SizedBox(
                          width: 360,
                          height: 70,
                          child:Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(children: [
                              Icon(Icons.person_2_outlined),
                              SizedBox(width: 20,),
                              Text("Help Center"),
                              SizedBox(width:160),
                              Icon(Icons.arrow_circle_right)
                            ],
                            ),
                          )
                        ) 
                      ),
                    ),
                      SizedBox(height:10),

                    ],),
                ),
              
            ),
    );
  }
  Future<void> logout(BuildContext context) async 
  {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> LoginScreen()));
  }
}
