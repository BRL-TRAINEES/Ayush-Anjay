


import 'package:authenticiation_app/button.dart';
import 'package:authenticiation_app/text_app.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget  {

   final Function()? onTap;

   const LoginPage({super.key, this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
      // text controllers
      final emailController = TextEditingController();
      final passwordController = TextEditingController();

      

      //buttons
      void SignIn() async{
                                 
                            //show loading screen
                             showDialog(
                              context: context, 
                              builder: (context) {
                                     return Center(
                                      child: CircularProgressIndicator(),
                                     );
                              },
                              );


                              //error message

                                void  showErrorMessage(String message)  {
                              showDialog(context: context, builder: (context) {
                                       return const AlertDialog(
                                        backgroundColor: Colors.blue,
                                        title: Center(
                                          child: Text(
                                            'Incorrect E-Mail or Password',
                                            style: TextStyle(color: Colors.white),
                                          )
                                        )
                                      );
                              },
                              );
                            }
                               
                              try { 
                             await FirebaseAuth.instance.signInWithEmailAndPassword(
                              email: emailController.text,
                              password: passwordController.text,
                              );
                                 // end loading screen
                                 Navigator.pop(context);
                              } on FirebaseAuthException catch (e) {

                                  // end loading screen
                                  Navigator.pop(context);
                                 
                                  
                                  //show error message
                                  showErrorMessage(e.code);
      }
      }
                             


                               


                                 
                            
                                 
                                 



                              



                              
                              





    @override 
    Widget build(BuildContext context){
                      
                      
                      return Scaffold(
                        backgroundColor: Colors.grey,
                        body: SafeArea(
                          child: Center(
                          child: SingleChildScrollView(
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
                                
                                     //E-Mail
                                     TextApp(
                                      controller: emailController,
                                      hintText: 'E-Mail',
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
                                        onTap: SignIn, text: 'Sign In',
                                      ),
                                     
                                      
                                            const SizedBox(height: 20,),
                                                   
                                      //Google Sign In
                                        Center(
                                          child:  SizedBox( 
                                             
                                            height: 50,
                                             width: 50, 
                                            child: Image.asset('lib/google.png'),
                                          )
                                        ),
                                          
                                          
                                          
                                          
                                    
                                
                                       
                                      const SizedBox(height: 20,),
                                
                                      //New Here , Register Now
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text('New?',
                                          style: TextStyle(color: Colors.black),
                                          ),
                                          const SizedBox(width: 4,),
                                          GestureDetector(
                                            onTap: widget.onTap,
                                            child:const Text (
                                              'Register Now!',
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ],
                                                         
                                        
                                      ),
                                
                                ],
                              
                            
                          ),
                          ),
                          ),
                        )
                      );
    }
}

  

