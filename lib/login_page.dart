


import 'package:authenticiation_app/button.dart';
import 'package:authenticiation_app/text_app.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
   LoginPage({super.key});


      // text controllers
      final usernameController = TextEditingController();
      final passwordController = TextEditingController();

      //buttons
      void SignIn() {}

    @override 
    Widget build(BuildContext context){
                      return Scaffold(
                        backgroundColor: Colors.grey,
                        body: SafeArea(
                          child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                            
                              
                                   const SizedBox(height: 0,),
                                    const Icon(
                                    Icons.account_circle,
                                    size: 100,
                                  ),
                                
                                     const SizedBox(height: 0),
                                
                                     const Text('WELCOME BACK',
                                     style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                       ),
                                     ),
                                     
                                     const SizedBox(height: 10),
                                
                                     //username
                                     TextApp(
                                      controller: usernameController,
                                      hintText: 'Username',
                                      obscureText: false,
                                     ),
                                
                                
                                     const SizedBox(height: 10),
                                
                                     //password
                                     TextApp(
                                      controller: passwordController,
                                      hintText: 'Password',
                                      obscureText: true,
                                     ),
                                
                                      
                                      const SizedBox(height: 10),
                                
                                      // Forgot Password
                                      const Text(
                                        'Don\'t Remember It, We Gottcha!',
                                        style: TextStyle(color: Colors.black87),
                                      ),
                                
                                
                                      const SizedBox(height: 10),
                                    
                                
                                      //Sign-In Button
                                      button(
                                        onTap: SignIn,
                                      ),
                                     
                                      
                                            const SizedBox(height: 20,),
                                                   
                                      //Google Sign In
                                        Center(
                                          child:  Container( 
                                             
                                            height: 50,
                                             width: 50, 
                                            child: Image.asset('lib/google.png'),
                                          )
                                        ),
                                          
                                          
                                          
                                          
                                    
                                
                                       
                                      const SizedBox(height: 20,),
                                
                                      //New Here , Register Now
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children:  [
                                          Text('New?' ),
                                          SizedBox(width: 4,),
                                          Text(
                                            'Register Now!',
                                            style:  TextStyle(color: const Color.fromARGB(227, 12, 136, 236)),),

                                        ],
                                      )
                                
                                ],
                              
                            
                          ),
                          ),
                          ),
                      );
    }
 
  }

