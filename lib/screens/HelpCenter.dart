import 'package:flutter/material.dart';
import 'package:hireproffapp/screens/home_screen.dart';

class HelpCenter extends StatefulWidget {
  const HelpCenter({super.key});

  @override
  State<HelpCenter> createState() => _HelpCenterState();
}

class _HelpCenterState extends State<HelpCenter> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage())),
        ), 
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        title: Text("Contact Us"),
        centerTitle: true,
      ),
      
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
          Card(
                          elevation: 5,
                          shadowColor: Colors.black,
                          color: Colors.white,
                          child:SizedBox(
                            width: 360,
                            height: 170,
                            child:Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                SizedBox(width: 20,),
                                Icon(Icons.phone_callback_outlined,color:Colors.black,size:40),
                                Divider(height: 20,),
                                Text("Contact Us-Now"),
                              ],
                              ),
                            )
                          ),
                        ),
                        SizedBox(height:20),
                        Text("If You have any inquiries get in touch with us we'll be happy to help!",style:TextStyle(color:Colors.black,fontSize:16)),
                        SizedBox(height: 10,),
                        Card(
                          elevation: 5,
                          shadowColor: Colors.black,
                          color: Colors.white,
                          child:SizedBox(
                            width: 360,
                            height: 80,
                            child:Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                Icon(Icons.email),
                                Text("chatmanvi5@gmail.com"),
                              ],
                              ),
                            )
                          ),
                        ),
                        SizedBox(height:10),
                        Card(
                          elevation: 5,
                          shadowColor: Colors.black,
                          color: Colors.white,
                          child:SizedBox(
                            width: 360,
                            height: 80,
                            child:Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                Icon(Icons.phone),
                                Text("9675924615"),
                              ],
                              ),
                            )
                          ),
                        ),
                        SizedBox(height:10),
                        Card(
                          elevation: 5,
                          shadowColor: Colors.black,
                          color: Colors.white,
                          child:SizedBox(
                            width: 360,
                            height: 230,
                            child:Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    children: [
                                    Icon(Icons.camera_front),
                                    Text("HireProff_345"),
                                  ],
                                  ),
                                   Row(
                                    children: [
                                    Icon(Icons.inbox),
                                    Text("HireProff/linkedin/profile.com"),
                                  ],
                                  ),
                                   Row(
                                    children: [
                                    Icon(Icons.facebook),
                                    Text("hireproff_678"),
                                  ],
                                  ),
                                  
                                ],
                              ),
                            )
                          ),
                        ),
                        

        ],),
      ));
  }
}