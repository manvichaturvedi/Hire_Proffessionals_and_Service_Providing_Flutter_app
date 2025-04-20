import 'package:flutter/material.dart';
import 'package:hireproffapp/screens/home_screen.dart';
class OrganizationalServices extends StatefulWidget {
  const OrganizationalServices({Key? key}) : super(key: key);

  @override
  _OrganizatinalServicesState createState() => _OrganizatinalServicesState();
   
}

class _OrganizatinalServicesState extends State<OrganizationalServices> {
    
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Text("Thank You",style:TextStyle(color:Colors.white)),
        centerTitle: true,
      ),
      body: Stack(
        children:[
        Column(
          children:
         [
            Padding(
              padding: EdgeInsets.only(top:160,left:30),
              child: Card(
                 elevation: 5,
                shadowColor: Colors.black,                       
                child: Container(
                  height:300,
                  width:300,
                  margin:EdgeInsets.all(5),
                  decoration:BoxDecoration(
                    gradient:LinearGradient(colors: [
                      Colors.indigo,
                      Theme.of(context).colorScheme.surface,
                    ],
                    stops: [0,0.8])
                  ),
                  child:Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Thank You For Sharing your details with us. We Will Contact you shortly if you will get shortlisted by our HR and also you will be called for an interview after your selection.',style:TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold)),
                      ),
                      SizedBox(height:40),
                      ElevatedButton(
          child: Text('Ok'),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            textStyle:  TextStyle(
                color: Colors.black,
                 fontSize: 20, 
                 fontStyle: FontStyle.normal),
          ),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HomePage()));
             },),
            ],
           ),          
         ),
         ),
        ),
        ],
        ),
        ]
      ),
      );
    }
}
