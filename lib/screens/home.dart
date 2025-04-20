import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hireproffapp/model/user_model.dart';
import 'package:hireproffapp/screens/Teachers.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
     
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
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      home:Scaffold(
      appBar: AppBar(
        title: Text("Explore Categories"),
        centerTitle: true,
      backgroundColor: Colors.deepPurple[100],
    ),
     backgroundColor: Colors.black,
     body: 
     Stack( 
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
             height: 115,
            decoration: BoxDecoration(
              color: Colors.deepPurple[100],
               gradient : LinearGradient(
                colors: [Colors.lightBlue,Colors.white]
              ),
              borderRadius: const BorderRadius.all(
               Radius.circular(10),
              )
            ),
          
           
            child: Column(
              children:  [
              const SizedBox(height: 0),
              Column(
                children: [
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 15),
                   
                    title: Text(
                      "Hi, ${loggedInuser.firstName} ${loggedInuser.lastName}\nHire According to your need...",
                       style:TextStyle(
                        fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    )
                    ),
                   
                    trailing: const CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('images/2150709814.jpg')
                    ),
                  ),
          
                ],
              ),
             
            ],
            ),
            ),
        ),

       Padding(
         padding: const EdgeInsets.only(top:160),
         child:SingleChildScrollView(
         child: Column(
          children: [
             Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
               GestureDetector(
                onTap: (){
                  Navigator.of(context)
                 .push(MaterialPageRoute(builder: (context) => FirebaseImage(storagePath: 'driver_images',)));                 },
                 child: Container(
                  height:150,
                  width:150,
                  
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.deepPurple[100],
                       gradient : LinearGradient(
                      colors: [Colors.lightBlue,Colors.white]
                               ),
                  ),
                 
                  child:Column(
                    children:[
                      SizedBox(height:20),
                  Center(
                  child: ClipRRect(
                    child:Image.asset(
                      'images/pexels-max-fischer-5212317.jpg',
                      height: 80,
                      width: 80,
                      fit:BoxFit.contain,
                  ),),
                  ),
                 SizedBox(height: 10),
                  Text('Teachers',style:TextStyle(color:Colors.black,fontSize: 15,fontWeight: FontWeight.bold)),
                               ],),),
               ),

              Container(
                height:150,
                width:150,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                     gradient : LinearGradient(
                    colors: [Colors.lightBlue,Colors.white]
              ),
                    color: Colors.deepPurple[100],
                ),
               
                child:Column(
                  children:[
                   SizedBox(height:20),

                Center(
                child: ClipRRect(
                  child:Image.asset(
                    'images/pexels-christina-morillo-1181244.jpg',
                    height: 80,
                    width: 80,
                 fit:BoxFit.contain,

                ),),
                ),
               SizedBox(height: 10),
                Text('Developers',style:TextStyle(color:Colors.black,fontSize: 15,fontWeight: FontWeight.bold)),
              ],),),
            ],),
            SizedBox(height: 20,),
             
              Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               Container(
                height:150,
                width:150,
                
                decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                     gradient : LinearGradient(
                colors: [Colors.lightBlue,Colors.white]
              ),
                ),
               
                child:Column(
                  children:[
                    SizedBox(height: 20,),
                Center(
                child: ClipRRect(
             
                  child:Image.asset(
                    'images/th.jpeg',
                    height: 80,
                    width: 80,
                     fit:BoxFit.contain,

                ),),
                ),
               SizedBox(height: 10),
                Text('Delivery Boy',style:TextStyle(color:Colors.black,fontSize: 15,fontWeight: FontWeight.bold)),
              ],),),
             
              Container( 
                height:150,
                width:150,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                 gradient : LinearGradient(
                colors: [Colors.lightBlue,Colors.white]
              ),                ),
               
                child:Column(
                  children:[
                    SizedBox(height: 20,),
                Center(
                child: ClipRRect(
                  child:Image.asset(
                    'images/pexels-rfstudio-3825586.jpg',
                    height: 80,
                    width: 80,
                      fit:BoxFit.contain,

                ),),
                ),
               SizedBox(height: 10),
                Text('Doctors',style:TextStyle(color:Colors.black,fontSize: 15,fontWeight: FontWeight.bold)),
              ],),),
            ],),
                       
                       
            SizedBox(height: 20,),
            Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
              Container(
                height:150,
                width:150,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),

                 gradient : LinearGradient(
                colors: [Colors.lightBlue,Colors.white]
              ),                ),
                child:Column(
                  children:[
                    SizedBox(height:20),
                Center(
                child: ClipRRect(
                  child:Image.asset(
                    'images/pexels-andrea-piacquadio-3807517.jpg',
                    height: 80,
                    width: 80,
                   fit:BoxFit.contain,

                ),),
                ),
               SizedBox(height: 10),
                Text('Car Mechanic',style:TextStyle(color:Colors.black,fontSize: 15,fontWeight: FontWeight.bold)),
              ],),),

               Container(
                height:150,
                width:150,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                gradient : LinearGradient(
                colors: [Colors.lightBlue,Colors.white]
              ),                ),
               
                child:Column(
                  children:[
                    SizedBox(height: 20,),
                Center(
                child: ClipRRect(
                  child:Image.asset(
                    'images/OIP (1).jpeg',
                    height: 80,
                    width: 80,
                       fit:BoxFit.contain,

                ),),
                ),
               SizedBox(height: 10),
                Text('Interior Decorator',style:TextStyle(color:Colors.black,fontSize: 15,fontWeight: FontWeight.bold)),
              ],),),
            ],),

            SizedBox(height:20),
             
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
              Container(
                height:150,
                width:150,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),

               gradient : LinearGradient(
                colors: [Colors.lightBlue,Colors.white]
              ),                ),
                child:Column(
                  children:[
                    SizedBox(height:20),
                Center(
                child: ClipRRect(
                  child:Image.asset(
                    'images/business.jpeg',
                    height: 80,
                    width: 80,
                   fit:BoxFit.contain,

                ),),
                ),
               SizedBox(height: 10),
                Text('Business Experts',style:TextStyle(color:Colors.black,fontSize: 15,fontWeight: FontWeight.bold)),
              ],),),

               Container(
                height:150,
                width:150,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
               gradient : LinearGradient(
                colors: [Colors.lightBlue,Colors.white]
              ),                ),
               
                child:Column(
                  children:[
                    SizedBox(height: 20,),
                Center(
                child: ClipRRect(
                  child:Image.asset(
                    'images/pexels-max-fischer-5212317.jpg',
                    height: 80,
                    width: 80,
                       fit:BoxFit.contain,

                ),),
                ),
               SizedBox(height: 10),
                Text('Professors',style:TextStyle(color:Colors.black,fontSize: 15,fontWeight: FontWeight.bold)),
              ],),),
            ],),
            const SizedBox(
              height:20
            ),

              Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
              Container(
                height:150,
                width:150,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),

                 gradient : LinearGradient(
                colors: [Colors.lightBlue,Colors.white]
              ),                ),
                child:Column(
                  children:[
                    SizedBox(height:20),
                Center(
                child: ClipRRect(
                  child:Image.asset(
                    'images/makeup.jpeg',
                    height: 80,
                    width: 80,
                   fit:BoxFit.contain,

                ),),
                ),
               SizedBox(height: 10),
                Text('Makeup Artists',style:TextStyle(color:Colors.black,fontSize: 15,fontWeight: FontWeight.bold)),
              ],),),

               Container(
                height:150,
                width:150,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                gradient : LinearGradient(
                colors: [Colors.lightBlue,Colors.white]
              ),                ),
               
                child:Column(
                  children:[
                    SizedBox(height: 20,),
                Center(
                child: ClipRRect(
                  child:Image.asset(
                    'images/barber.jpeg',
                    height: 80,
                    width: 80,
                       fit:BoxFit.contain,

                ),),
                ),
               SizedBox(height: 10),
                Text('Barber',style:TextStyle(color:Colors.black,fontSize: 15,fontWeight: FontWeight.bold)),
              ],),),
            ],),
            const SizedBox(
              height:20
            ),
              Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
              Container(
                height:150,
                width:150,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),

                 gradient : LinearGradient(
                colors: [Colors.lightBlue,Colors.white]
              ),                ),
                child:Column(
                  children:[
                    SizedBox(height:20),
                Center(
                child: ClipRRect(
                  child:Image.asset(
                    'images/paint.jpeg',
                    height: 80,
                    width: 80,
                   fit:BoxFit.contain,

                ),),
                ),
               SizedBox(height: 10),
                Text('Painting Artists',style:TextStyle(color:Colors.black,fontSize: 15,fontWeight: FontWeight.bold)),
              ],),),

               Container(
                height:150,
                width:150,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                 gradient : LinearGradient(
                colors: [Colors.lightBlue,Colors.white]
              ),                ),
               
                child:Column(
                  children:[
                    SizedBox(height: 20,),
                Center(
                child: ClipRRect(
                  child:Image.asset(
                    'images/electric.jpeg',
                    height: 80,
                    width: 80,
                       fit:BoxFit.contain,

                ),),
                ),
               SizedBox(height: 10),
                Text('Electrician',style:TextStyle(color:Colors.black,fontSize: 15,fontWeight: FontWeight.bold)),
              ],),),
            ],),
            const SizedBox(
              height:20),
                Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
              Container(
                height:150,
                width:150,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),

                gradient : LinearGradient(
                colors: [Colors.lightBlue,Colors.white]
              ),                ),
                child:Column(
                  children:[
                    SizedBox(height:20),
                Center(
                child: ClipRRect(
                  child:Image.asset(
                    'images/ledrep.jpeg',
                    height: 80,
                    width: 80,
                   fit:BoxFit.contain,

                ),),
                ),
               SizedBox(height: 10),
                Text('LED Repairer',style:TextStyle(color:Colors.black,fontSize: 15,fontWeight: FontWeight.bold)),
              ],),),

               Container(
                height:150,
                width:150,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                gradient : LinearGradient(
                colors: [Colors.lightBlue,Colors.white]
              ),                ),
               
                child:Column(
                  children:[
                    SizedBox(height: 20,),
                Center(
                child: ClipRRect(
                  child:Image.asset(
                    'images/transport.jpeg',
                    height: 80,
                    width: 80,
                       fit:BoxFit.contain,

                ),),
                ),
               SizedBox(height: 10),
                Text('Transport Services',style:TextStyle(color:Colors.black,fontSize: 15,fontWeight: FontWeight.bold)),
              ],),),
            ],),
            const SizedBox(height:20),
              Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
              Container(
                height:150,
                width:150,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),

                  gradient : LinearGradient(
                colors: [Colors.lightBlue,Colors.white]
              ),                ),
                child:Column(
                  children:[
                    SizedBox(height:20),
                Center(
                child: ClipRRect(
                  child:Image.asset(
                    'images/wifimage.jpeg',
                    height: 80,
                    width: 80,
                   fit:BoxFit.contain,

                ),),
                ),
               SizedBox(height: 10),
                Text('Wifi Facility Provider',style:TextStyle(color:Colors.black,fontSize: 15,fontWeight: FontWeight.bold)),
              ],),),

               Container(
                height:150,
                width:150,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                gradient : LinearGradient(
                colors: [Colors.lightBlue,Colors.white]
              ),                ),
               
                child:Column(
                  children:[
                    SizedBox(height: 20,),
                Center(
                child: ClipRRect(
                  child:Image.asset(
                    'images/gardener.jpeg',
                    height: 80,
                    width: 80,
                       fit:BoxFit.contain,

                ),),
                ),
               SizedBox(height: 10),
                Text('Gardener',style:TextStyle(color:Colors.black,fontSize: 15,fontWeight: FontWeight.bold)),
              ],),),
            ],),
             SizedBox(height: 20),

           Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
              Container(
                height:150,
                width:150,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),

                 gradient : LinearGradient(
                colors: [Colors.lightBlue,Colors.white]
              ),                ),
                child:Column(
                  children:[
                    SizedBox(height:20),
                Center(
                child: ClipRRect(
                  child:Image.asset(
                    'images/weddplan.jpeg',
                    height: 80,
                    width: 80,
                   fit:BoxFit.contain,

                ),),
                ),
               SizedBox(height: 10),
                Text('Wedding Planner',style:TextStyle(color:Colors.black,fontSize: 15,fontWeight: FontWeight.bold)),
              ],),),

               Container(
                height:150,
                width:150,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
               gradient : LinearGradient(
                colors: [Colors.lightBlue,Colors.white]
              ),                ),
               
                child:Column(
                  children:[
                    SizedBox(height: 20,),
                Center(
                child: ClipRRect(
                  child:Image.asset(
                    'images/image.png',
                    height: 80,
                    width: 80,
                       fit:BoxFit.contain,

                ),),
                ),
               SizedBox(height: 10),
                Text('Architect',style:TextStyle(color:Colors.black,fontSize: 15,fontWeight: FontWeight.bold)),
              ],),),
            ],),
           SizedBox(height: 20),
          ],
         ),),
       ),
      ],
     ),
    ),);
  }
  }