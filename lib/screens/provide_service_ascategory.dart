import 'package:flutter/material.dart';
import 'package:hireproffapp/screens/login_screen.dart';

class Createascategory extends StatefulWidget {
  const Createascategory({Key? key}) : super(key: key);

  @override
  _CreateascategoryState createState() => _CreateascategoryState();
   
}

class _CreateascategoryState extends State<Createascategory> {
    
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.black,
  
       body: Stack(
        children: [
          
          Container(
           height: 160,
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
              title: Text('Provide Your Details!\nTo Join Us As A', style:Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.white
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
             padding: const EdgeInsets.only(left: 10,top: 200,right:20),
             child: Container(
              height: 50,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
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
               child: const Text('Teacher',
                   style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  ),
                
              )
                       ),
           ),
           Padding(
             padding: const EdgeInsets.only(left: 10,top: 270,right:20),
             child: Container(
              height: 50,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
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
               child: const Text('Tutors',
                  style: TextStyle(
                    fontSize: 20,
                    
                    color: Colors.white,
                  ),),
                
              )
                       ),
           ),
           Padding(
             padding: const EdgeInsets.only(left: 10,top: 340,right:20),
             child: Container(
              height: 50,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
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
               child: const Text('Delivery Men',
                  style: TextStyle(
                    fontSize: 20,
                    
                    color: Colors.white,
                  ),),
                
              )
                       ),
           ),
           Padding(
             padding: const EdgeInsets.only(left: 10,top: 410,right:20),
             child: Container(
              height: 50,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
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
               child: const Text('Mechanic',
                  style: TextStyle(
                    fontSize: 20,
                    
                    color: Colors.white,
                  ),),
                
              )
                       ),
           ),
           Padding(
             padding: const EdgeInsets.only(left: 10,top: 480,right:20),
             child: Container(
              height: 50,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
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
               child: const Text('Mobile Mechanic',
                  style: TextStyle(
                    fontSize: 20,
                    
                    color: Colors.white,
                  ),),
                
              )
                       ),
           ),
           Padding(
             padding: const EdgeInsets.only(left: 10,top: 550,right:20),
             child: Container(
              height: 50,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
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
               child: const Text('Wedding Planner',
                  style: TextStyle(
                    fontSize: 20,
                    
                    color: Colors.white,
                  ),),
                
              )
                       ),
           ),
           Padding(
             padding: const EdgeInsets.only(left: 10,top: 620,right:20),
             child: Container(
              height: 50,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
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
               child: const Text('Interior Decorator',
                  style: TextStyle(
                    fontSize: 20,
                    
                    color: Colors.white,
                  ),),
                
              )
                       ),
           ),
            
          Padding(
             padding: const EdgeInsets.only(left: 10,top: 690,right:20),
             child: Container(
              height: 50,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
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
               child: const Text('Painter',
                  style: TextStyle(
                    fontSize: 20,
                    
                    color: Colors.white,
                  ),),
                
              )
                       ),
           ),
          
          Padding(
             padding: const EdgeInsets.only(left: 10,top: 760,right:20),
             child: Container(
              height: 40,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
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
               child: const Text('Others',
                  style: TextStyle(
                    fontSize: 20,
                    
                    color: Colors.white,
                  ),),
                
              )
                       ),
           ),
        ],
      ),
      );
    }
}
