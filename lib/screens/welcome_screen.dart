import 'package:flutter/material.dart';
import 'package:hireproffapp/screens/choose_one.dart';


class SpalshScreen extends StatefulWidget {
  const SpalshScreen({super.key});

  @override
  State<SpalshScreen> createState() => _SpalshScreenState();
}

class _SpalshScreenState extends State<SpalshScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
      body: Center(
        child:SingleChildScrollView(
        child: Container(
        padding: EdgeInsets.only(top: 80,left: 30,right :30, bottom: 30),
        child: Column(
          children: [
            Container(
                height: 210,
                width: 210,
                decoration: BoxDecoration(
                  color: Colors.deepPurple[100],
                    border: Border.all(
                  color: Colors.white,
                 ),
                  borderRadius: BorderRadius.all(Radius.circular(30))

                  ),
                child: Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child:Image.asset(
                    'images/Screenshot 2024-03-03 140642.png',
                    height: 140,
                    width: 140,
                ),),
                ),
                ),

          const SizedBox(height: 150),
           
               const Text(
            "\t\t\t\t\t\tWelcome User!\n\t\t\t\tLet's Get Started!",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
                 height: 30),
               const Text(
            'Hire Professionals Or Serve Others!',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
                 height: 80),
          Container(
            height: 50,
            width: 260,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple[100],
                shape: RoundedRectangleBorder(
                  
                  borderRadius: BorderRadius.circular(20.0),
                ),),
                // Within the `FirstRoute` widget
             onPressed: () {
              Navigator.push(
               context,
                MaterialPageRoute(builder: (context) => const ChooseOne()),
             );
          },
               child: const Text('Get Started',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,

                ),),
              
            )
          )
          ],
        ),
      ),),),
    );
  }
}
