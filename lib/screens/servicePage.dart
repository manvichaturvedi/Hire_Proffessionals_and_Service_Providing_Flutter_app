import 'package:flutter/material.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        title: Text("Services"),
        centerTitle: true,
        
      ),
      body:Column(children:
       [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text('This page will display services that you will use and take you to payment procedure...',style:TextStyle(fontSize: 20,color:Colors.blueAccent)),
        ),
      
      ],
      )
      
    );
  }
}