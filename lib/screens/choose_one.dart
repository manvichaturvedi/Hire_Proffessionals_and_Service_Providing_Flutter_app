// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hireproffapp/screens/login_screen.dart';
import 'package:hireproffapp/screens/sign_up_screen.dart';

class ChooseOne extends StatefulWidget {
  const ChooseOne({Key? key}) : super(key: key);

  @override
  State<ChooseOne> createState() => _ChooseOne();
}

class _ChooseOne extends State<ChooseOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
       body: Stack(
        children: [
          
          Container(
           height: 180,
          decoration: BoxDecoration(
            
            color: Colors.deepPurple[200],
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(100),      
            )
          ),
          child: Column(
            children:  [
            const SizedBox(height: 50),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 30),
              title: Text('Hey User!', style:Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.white
              )),
              subtitle: Text('What would you like to do?', style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.white
              ),),
              trailing: const CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('images/2150709814.jpg')
              ),
            ),
            const SizedBox(height: 30)
          ],
          ),
          ),
           const SizedBox(height: 80,),
           Padding(
             padding: const EdgeInsets.only(left: 70,top: 380),
             child: Container(
              height: 70,
              width: 240,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple[200],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)
                  ),),
                  // Within the `FirstRoute` widget
               onPressed: () {
                Navigator.push(
                 context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
               );
                       },
               child: const Text('Login',
                  style: TextStyle(
                    fontSize: 18,
                   fontWeight: FontWeight.bold,

                    color: Colors.white,
                  ),),
                
              )
                       ),
           ),
            Padding(
             padding: const EdgeInsets.only(left: 70,top: 480),
             child: Container(
              height: 70,
              width: 240,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple[200],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)
                  ),),
                  // Within the `FirstRoute` widget
               onPressed: () {
                Navigator.push(
                 context,
                  MaterialPageRoute(builder: (context) => const RegisterationScreen()),
               );
                       },
               child: const Text('Signup',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,

                    color: Colors.white,
                  ),),
                
              )
                       ),
           ),
           
              Padding(
                padding: const EdgeInsets.only(top:750,left:100),
                child: Text('Welcome, Back!',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),),
              ),
           
        ],
      ),
    );
  }
  // ignore: non_constant_identifier_names
  Category(String title, IconData iconData, Color background) => 
  Container(
    decoration: BoxDecoration(
      color: Colors.blueGrey,
      borderRadius: BorderRadius.circular(10),
      boxShadow:  [
        BoxShadow(
          offset: const Offset(0, 5),
          color: Theme.of(context).primaryColor.withOpacity(.2),
          spreadRadius: 2,
          blurRadius: 5
        )
      ],
    ),
    child: Column(  
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: background,
            shape: BoxShape.circle
            ),
            child: Icon(iconData,color: Colors.black),
            ),
            const SizedBox(height: 8),
            Text(title, 
            style: Theme.of(context).textTheme.titleMedium,)
      ],
    ),
  );
}
