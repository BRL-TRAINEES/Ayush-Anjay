import 'package:authenticiation_app/auth_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
  apiKey: "AIzaSyB_EfNfkqvnRHrhEgrqtPtMqaVXH3LiLc8",
  appId: "1:47749362977:android:80dbab4e7470d7672b3a60",
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
            home: AuthPage(),
           );
        }
     }