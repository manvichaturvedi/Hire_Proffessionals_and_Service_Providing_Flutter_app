import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        title: Text("About Us"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.settings_rounded),
          )
        ]
      ),
     body:Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children:[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text('we Provide Services as per your requirement and also help job seekers to make a living by hiring them for providing services.You can hire our Experts from different fields and also join us to get employed......'),
              ),
              Center(child: Text('Our Team',style:TextStyle(fontSize: 30,color:Colors.red))),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text('Meet Our Team, we support individuals everyday We are headquartered in bareilly but our team is spread accrossed globally',style:TextStyle(color:Colors.blue[300],fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    
                            Card(
                              elevation: 5,
                              
                              shadowColor: Colors.black,
                              color: Colors.greenAccent[100],
                              child:SizedBox(

                                width: 150,
                                height: 220,
                                child:Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Column(
                                    children: [
                                      Row(children: [
                                        Image.asset('images/aboutmanvi.jpeg.jpg',height: 140,width:140),
                                      ],
                                      ),
                                      SizedBox(height:10),
                                   Text('Manvi Chaturevdi',style:TextStyle(fontWeight: FontWeight.bold)),
                                  SizedBox(height:10),

                                   Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children : [
                                     Icon(Icons.facebook,size: 20,color:Colors.black),
                                          Icon(Icons.inbox, size:20,color:Colors.black),
                                           Icon(CupertinoIcons.increase_indent,size: 20,color:Colors.black),
                                           Icon(Icons.facebook,size: 20,color:Colors. black),
                                    ]
                                   ),

                                    ],
                                  ),
                                ),

                              ),
                            ),
                                                        Card(
                              elevation: 5,
                              
                              shadowColor: Colors.black,
                              color: Colors.greenAccent[100],
                              child:SizedBox(

                                width: 150,
                                height: 220,
                                child:Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Column(
                                    children: [
                                      Row(children: [
                                        Image.asset('images/aboutjuhi.jpg',height: 140,width:140),
                                      ],
                                      ),
                                      SizedBox(height:10),
                                   Text('Juhi Awasthi',style:TextStyle(fontWeight: FontWeight.bold)),
                                  SizedBox(height:10),

                                   Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children : [
                                     Icon(Icons.facebook,size: 20,color:Colors.black),
                                          Icon(Icons.inbox, size:20,color:Colors.black),
                                           Icon(CupertinoIcons.increase_indent,size: 20,color:Colors.black),
                                           Icon(Icons.facebook,size: 20,color:Colors. black),
                                    ]
                                   ),

                                    ],
                                  ),
                                ),

                              ),
                            ),
                  ],
                ), 
              ),
                           Card(
                              elevation: 5,
                              
                              shadowColor: Colors.black,
                              color: Colors.greenAccent[100],
                              child:SizedBox(

                                width: 150,
                                height: 220,
                                child:Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Column(
                                    children: [
                                      Row(children: [
                                        Image.asset('images/aboutnavya.jpg',height: 140,width:140),
                                      ],
                                      ),
                                      SizedBox(height:10),
                                   Text('Navya Sharma',style:TextStyle(fontWeight: FontWeight.bold)),
                                  SizedBox(height:10),

                                   Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children : [
                                     Icon(Icons.facebook,size: 20,color:Colors.black),
                                          Icon(Icons.inbox, size:20,color:Colors.black),
                                           Icon(CupertinoIcons.increase_indent,size: 20,color:Colors.black),
                                           Icon(Icons.facebook,size: 20,color:Colors. black),
                                    ]
                                   ),

                                    ],
                                  ),
                                ),

                              ),
                            ),
                            SizedBox(height:15),
                        Card(
                              elevation: 5,
                              shadowColor: Colors.black,
                              color: Colors.black,
                              child:SizedBox(
                                width: double.infinity,
                                height: 250,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                      Text('For Further Enquiries Contact us.',style:TextStyle(fontSize: 20,color:Colors.white)),
                                     SizedBox(height:20),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Icon(Icons.facebook,size: 50,color:Colors.white),
                                          Icon(Icons.inbox, size:50,color:Colors.white),
                                           Icon(CupertinoIcons.increase_indent,size: 50,color:Colors.white),
                                           Icon(Icons.facebook,size: 50,color:Colors.white),
                                        ],
                                      ),
                                      SizedBox(height:50),
                                      Text('Contact-Us Now!',style:TextStyle(fontSize: 20,color:Colors.white)),
                                      SizedBox(height:10),
                                     Text('@2024 Visionary Group.All rights reserved\n\t\tCreative Team To infinite and beyond',style:TextStyle(fontSize: 10,color:Colors.white)),

                                    ],
                                    ),
                                  ),
                                
                              ),
                            ),
            ]
          ),
        )
      ],)
    );
  }
}