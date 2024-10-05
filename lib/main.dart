import 'package:authenticiation_app/login_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
  apiKey: "AIzaSyCilOEZmeJ6dYvjcldaNqOtf78Q4ZUcaoY",
  appId: "1:47749362977:web:d5574d13425619d62b3a60",
  messagingSenderId: "47749362977",
  projectId: "authapp1-72314",
      
    
      
      
    ),
  );
  runApp(const MyApp()); 
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
           return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: LoginPage(),
           );
        }
     }