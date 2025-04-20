import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hireproffapp/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hireproffapp/screens/home_screen.dart';
import 'package:hireproffapp/screens/welcome_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,

  );  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var auth = FirebaseAuth.instance;
  var isLogin = false;
  checkIfLogin() async {
     auth.authStateChanges().listen((User? user) {
      if(user != null && mounted && user.uid != "J8e3FS09KWPdbeeDYrSaeV6gRKi1")
      {
        setState(() {
        isLogin = true;
        });
      } 
  });
}

  @override
  void initState() {
    checkIfLogin();
    super.initState();
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
     title: 'HireProffessionals',
     theme:ThemeData(
      primarySwatch: Colors.blue,
      textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme,),
     ),
      home: isLogin ? HomePage() : SpalshScreen()
    );
  }
}