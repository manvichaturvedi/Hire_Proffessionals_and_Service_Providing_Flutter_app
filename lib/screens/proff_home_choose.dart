import 'package:flutter/material.dart';
import 'package:hireproffapp/screens/home_screen.dart';
import 'package:hireproffapp/screens/upload_details.dart';

class proff_Home_choose extends StatelessWidget {
  const proff_Home_choose({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple[100],
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
       Container(
           height: 180,
          decoration: BoxDecoration(   
            color: Colors.greenAccent[100],
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(100,),
            )
          ),
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:  [
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 30),
              title: Text('Join Us Now\nTo Serve & Get Job', style:Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.blue
              )),
             
              trailing: const CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('images/2150709814.jpg')
              ),
            ),
            const SizedBox(height: 30),
          ],
          ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:15,top:250,right:15),
            child: Card(
                        elevation: 5,
                        shadowColor: Colors.black,
                        color: Colors.blue,
                        child:SizedBox(
                          width: 360,
                          height: 350,
                          child:Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Card(
                                   elevation: 5,
                                 shadowColor: Colors.black,
                                  color: Colors.greenAccent[100],
                                  child: SizedBox(
                                    width:310,
                                    height:250,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Row(children: [
                                        Text("Provide Your details to get hired and\nprovide services and we will contact\nyou if you get shortlisted..",style:TextStyle(color:Colors.red,fontWeight: FontWeight.bold,fontSize: 15)),
                                      ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                             ElevatedButton(
                              onPressed: ()=>Navigator.of(context)
                           .push(MaterialPageRoute(builder: (context) => const upload_details())), 
                             child: Text('Upload Your Details',style:TextStyle(color:Colors.black,fontWeight: FontWeight.bold)), 
                             style: ElevatedButton.styleFrom(
                               backgroundColor: Colors.deepPurple[200],
                                ),),

 
                            ],
                          )
                        )
                  
                        
                      ),
          ),
        Padding(
          padding: const EdgeInsets.only(top:770),
          child: Center(child: Text('Get Hired!',style:TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 20))),
        ), 

        ],),
    );
  }
}