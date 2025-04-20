import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hireproffapp/screens/adminpanel.dart';
import 'package:hireproffapp/screens/home_screen.dart';
import 'package:hireproffapp/screens/sign_up_screen.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  // form key
  final _formKey = GlobalKey<FormState>();

  // editing controller
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  final _auth = FirebaseAuth.instance;
  
  @override
  Widget build(BuildContext context) {

    //email field
    final emailField = TextFormField(
      style:TextStyle(color:Colors.white),
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      validator: (value)
      {
        if(value!.isEmpty)
        {
          return ("Please Enter Your Email");
        }

        if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) {
            return ("Please Enter a valid email");
          }
          return null;
      },

      onSaved: (value)
      {
        emailController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        
        prefixIcon: const Icon(Icons.mail,color: Colors.white,),
        contentPadding: const EdgeInsets.fromLTRB(20,15,20,15),
          hintStyle: const TextStyle(color:Colors.white,),

        hintText: "Email",
        labelText: 'Email',
       labelStyle: TextStyle(color: Colors.white),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      )
    );
    final passwordField = TextFormField(
      style:TextStyle(color:Colors.white),
      autofocus: false,
      controller: passwordController,
      obscureText: true,
        validator: (value) {
          RegExp regex = new RegExp(r'^.{6,}$');
          if (value!.isEmpty) {
            return ("Password is required for login");
          }
          if (!regex.hasMatch(value)) {
            return ("Enter Valid Password(Min. 6 Character)");
          }
          return null;
        },

      onSaved: (value)
        {
          passwordController.text = value!;
        },
      textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.vpn_key,color: Colors.white),
          contentPadding: const EdgeInsets.fromLTRB(20,15,20,15),
          hintText: "Password",
            labelText: 'Password',
       labelStyle: TextStyle(color: Colors.white),
          
          hintStyle: TextStyle(color:Colors.white,),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        )
    );

    final loginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.deepPurple[200],
      child: MaterialButton(
        padding: const EdgeInsets.fromLTRB(20,15,20,15),
        minWidth: MediaQuery.of(context).size.width,
       onPressed: () {

        signIn(emailController.text, passwordController.text);
        },
        child: const Text("Login", textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold
        ),),
      ),
      );

    return Scaffold(
      backgroundColor: Colors.black,
      body:  Center(
        child: SingleChildScrollView(
        child: Container(
          
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                SizedBox(
                height: 200,
               child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                "images/Screenshot 2024-03-03 140642.png",
                 fit : BoxFit.contain,
                ))),
                const SizedBox(height: 45),
                emailField,
                const SizedBox(height: 45),

                passwordField,
                const SizedBox(height: 45),

                loginButton,
                const SizedBox(height: 15),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[
                    Text("Don't have an account? ",style:TextStyle(
                        color: Colors.white,
                         fontWeight:FontWeight.w600,
                          fontSize: 15),),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder : (context) => RegisterationScreen()));
                      },
                      child: Text("Signup",style:TextStyle(
                        color: Colors.deepPurple[200],
                         fontWeight:FontWeight.w600,
                          fontSize: 15),
                      ),
                      )
                   ],)
                ],
            ),
            
          ),
          ),
        ),
        ),
      ),

    );
  }
 void signIn(String email, String password) async {
    if (_formKey.currentState!.validate()) {
      {
        await _auth
            .signInWithEmailAndPassword(email: email, password: password)
            .then((uid) => {
              if(emailController.text == "neetachaturvedi1968@gmail.com" && passwordController.text == "123456")
               {
                  Fluttertoast.showToast(msg: "Administrator Login Successfully"),

                  Navigator.pushAndRemoveUntil(
                  context, MaterialPageRoute(
                  builder: (BuildContext context) {
                  return admin_panel();
                  },), (route) => false),
                  }
                  else{
                  Fluttertoast.showToast(msg: "Login Successful"),
                  Navigator.pushAndRemoveUntil(
                  context, MaterialPageRoute(
                  builder: (BuildContext context) {
                  return HomePage();
                  },), (route) => false),
                  }
                  }
                  ).catchError((e)
                {
                  Fluttertoast.showToast(msg: e!.message);
                });
      }
    }
}
}