import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

   HomePage ({super.key});

              
             final user = FirebaseAuth.instance.currentUser!;


       //Sign Out
       void signOut() {
                            FirebaseAuth.instance.signOut();
       }



  @override
  Widget build(BuildContext context) {
            
            return Scaffold(
              appBar: AppBar(
                actions: [
                 IconButton(
                   onPressed: signOut, 
                   icon: Icon(Icons.logout_rounded)
                  ),
                  ],
                  ),
              body: Center(child: Text(
                "LOGGED IN AS: "+ user.email!,
                  style: TextStyle(fontSize: 20),
                ),
              ),
            );
  }
}