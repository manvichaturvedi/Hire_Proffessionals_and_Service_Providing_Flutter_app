import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hireproffapp/model/user_model.dart';
import 'package:hireproffapp/screens/addemp.dart';
import 'package:hireproffapp/screens/login_screen.dart';

class admin_panel extends StatefulWidget {
  const admin_panel({super.key});
  @override
  State<admin_panel> createState() => _admin_panelState();
}

class _admin_panelState extends State<admin_panel> {
      
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
      backgroundColor:Colors.black,
      body:SingleChildScrollView(
        child: Stack(
          children: [
          Column(
            children: [
            Container(
              height:200,
              width:double.infinity,
              decoration: BoxDecoration(
                color : Colors.red,
                border : Border.all(color:Colors.black, width:2),
                borderRadius: BorderRadius.circular(40),           
              gradient : LinearGradient(
                colors: [Colors.black,Colors.pink,Colors.black]
              )
              ),
                        child:Padding(
                          padding: const EdgeInsets.only(top:30),
                          child: Column(
                            children: [
                              Center(child:Text('Welcome, Admin',style:TextStyle(fontSize: 30,color:Colors.white,fontWeight: FontWeight.bold))),
                            Center(child:Text("@ ${loggedInuser.firstName}  ${loggedInuser.lastName} ",style:TextStyle(fontSize: 20,color:Colors.white,fontWeight: FontWeight.bold))),
                            ],
                          ),
                        ),
            ),
             Row(
               children: [
                 Padding(
                   padding: const EdgeInsets.only(
                    left:8,top:70),
                   child: InkWell(
                     onTap: () => {                                
                      Navigator.pushReplacement(
                      context,MaterialPageRoute(builder: (context) => RealtimeDatabaseInsert()),),},
                   child: Card(
                         elevation: 5,
                        shadowColor: Colors.black,                       
                          child: Container(
                          height:150,
                          width:150,
                          margin:EdgeInsets.all(5),
                          decoration:BoxDecoration(
                          gradient : LinearGradient(
                         colors: [Colors.black,Colors.pink,Colors.black]
                       )
                          ),
                          child:Column(
                            children: [
                              SizedBox(height:40),
                              Icon(Icons.post_add,color:Colors.white,size: 40,),
                              Text('Add Employees',style:TextStyle(color:Colors.white,fontSize:15))
                    ],
                   ),          
                  ),
                ),
                   ),
              ),
                          SizedBox(width:20),
                           Card(
                       elevation: 5,
                      shadowColor: Colors.black,                       
                      child: Container(
                        height:150,
                        width:150,
                        margin:EdgeInsets.all(5),
                        decoration:BoxDecoration(
                           gradient : LinearGradient(
                    colors: [Colors.black,Colors.pink,Colors.black]
                  )
                        ),
                        
                         child:Column(
                            children: [
                              SizedBox(height:40),
                              Icon(Icons.person,color:Colors.white,size: 40,),
                              Text('Service Requests',style:TextStyle(color:Colors.white,fontSize:15))
                    ],
                   ),       
                          ),
                          ),           
               ],
             ),
              Row(
               children: [
                 Padding(
                   padding: const EdgeInsets.only(
                    left:8,top:70),
                   child: Card(
                         elevation: 5,
                        shadowColor: Colors.black,                       
                          child: Container(
                          height:150,
                          width:150,
                          margin:EdgeInsets.all(5),
                          decoration:BoxDecoration(
                          gradient : LinearGradient(
                         colors: [Colors.black,Colors.pink,Colors.black]
                       )
                          ),
                          child:Column(
                            children: [
                              SizedBox(height:40),
                              Icon(Icons.post_add,color:Colors.white,size: 40,),
                              Text('Add Employees',style:TextStyle(color:Colors.white,fontSize:15))
                    ],
                   ),          
                  ),
                ),
              ),
                          SizedBox(width:20),
                           Card(
                       elevation: 5,
                      shadowColor: Colors.black,                       
                      child: Container(
                        height:150,
                        width:150,
                        margin:EdgeInsets.all(5),
                        decoration:BoxDecoration(
                           gradient : LinearGradient(
                    colors: [Colors.black,Colors.pink,Colors.black]
                  )
                ),
                         child:Column(
                            children: [
                              SizedBox(height:40),
                              Icon(Icons.person,color:Colors.white,size: 40,),
                              Text('Service Requests',style:TextStyle(color:Colors.white,fontSize:15))
                    ],
                   ),       
                  ),
                ),     
               ],
             ),
             SizedBox(height: 20,),
             Container(
             height: 140,
            decoration: BoxDecoration(
              gradient : LinearGradient(
                    colors: [Colors.black,Colors.pink,Colors.black]
                  ),
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(100),      
              )
            ),
                child:Text('Hey Admin,\nWhat would you like to do?',style:TextStyle(color: Colors.white))
            ),
          ],
          ),
          ]
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                gradient : LinearGradient(
              colors: [Colors.black,Colors.pink,Colors.black]
            )
              ), //BoxDecoration
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  gradient : LinearGradient(
              colors: [Colors.black,Colors.pink,Colors.black]
            )
                  ),
                accountName:  Text(
                    "Manvi Chaturvedi",
                    style: TextStyle(fontSize: 18),
                  ),
                accountEmail: Padding(
                  padding: EdgeInsets.only(),
                  child: Text("chatmanvi5@gmail.com"),
                ),
                currentAccountPictureSize: Size.square(60),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Text(
                    "MC",
                    style: TextStyle(fontSize: 30.0, color: Colors.white),
                  ), //Text
                ), //circleAvatar
              ), //UserAccountDrawerHeader
            ), //DrawerHeader
            ListTile(
              leading: const Icon(Icons.person,color:Colors.blue),
              title: const Text(' My Profile '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(height: 10),
            ListTile(
              leading: const Icon(Icons.book,color:Colors.blue),
              title: const Text(' View Deals '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
              SizedBox(height: 10),
            ListTile(
              leading: const Icon(Icons.workspace_premium,color:Colors.blue),
              title: const Text('Meetings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(height: 10),
            ListTile(
              leading: const Icon(Icons.video_label,color:Colors.blue),
              title: const Text('Hired Employees'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(height: 10),
            ListTile(
              leading: const Icon(Icons.edit,color:Colors.blue),
              title: const Text(' Edit Profile '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(height: 10),
            ListTile(
              leading: const Icon(Icons.logout,color:Colors.blue),
              title: const Text('LogOut'),
              onTap: () {
                logout(context);
              },
            ),
          ],
        ),
      ), //Drawer
    );
  }
   Future<void> logout(BuildContext context) async 
  {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> LoginScreen()));
  } 
}