import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hireproffapp/screens/historypage.dart';
import 'package:hireproffapp/screens/home.dart';
import 'package:hireproffapp/screens/profilepage.dart';
import 'package:hireproffapp/screens/servicepage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   int _index = 0;
    late PageController _indexController;
   final screens = [
    Home(),
    ServicesPage(),
    HistoryPage(),
    profileScreen(),
   ];
  
void initState(){
  _indexController=PageController(
    initialPage: _index
  );
  super.initState();
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.white,
     bottomNavigationBar:BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.deepPurple[100],
      currentIndex: _index,
      onTap: (index){
        this._indexController.animateToPage(index, duration: Duration(milliseconds: 500), curve: Curves.easeIn);
      },

     selectedItemColor: Colors.blue,
     unselectedItemColor: Colors.black,
      items: <BottomNavigationBarItem> [
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.home,color: Colors.black),
          label:"Home"),
          BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.add_circled,color: Colors.black),
          label:"Services"),
           BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.book,color: Colors.black,),
          label:"About"),
           BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.person,color: Colors.black),
          label:"Profile"),
     ]),
     body: PageView(
      controller: _indexController,
      onPageChanged: (newPage) {
        setState(() {
          this._index = newPage;
        });
      },
      children: [
        Home(),
    ServicesPage(),
    HistoryPage(),
    profileScreen(),
      ],
     ),
    );
  }
  }