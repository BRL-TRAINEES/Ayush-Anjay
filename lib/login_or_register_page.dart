import 'package:authenticiation_app/login_page.dart';
import 'package:flutter/material.dart';
import 'register_page.dart';


class LoginOrRegisterPage extends StatefulWidget {
               const LoginOrRegisterPage ({super.key});

  @override
  State<LoginOrRegisterPage> createState() => _LoginOrRegisterPageState();
}

class _LoginOrRegisterPageState extends State<LoginOrRegisterPage> {

  //intially show the login page
  bool showLoginPage = true;

  //toggle between the login and register page
  void togglePages(){
    setState(() {
          showLoginPage = !showLoginPage;
    });
  }
                 @override
                 Widget build(BuildContext context) {
                         if(showLoginPage){
                          return LoginPage(
                            onTap: togglePages,
                          );
                         }
                         else
                         {
                          return RegisterPage(
                            onTap: togglePages,
                          );
                          
                         }
                 }
}
  

   