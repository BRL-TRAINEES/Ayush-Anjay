import 'package:authenticiation_app/button.dart';
import 'package:authenticiation_app/text_app.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget  {

   final Function()? onTap;

   const RegisterPage({super.key, this.onTap});

  @override
  State<RegisterPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<RegisterPage> {
      // text controllers
      final emailController = TextEditingController();
      final passwordController = TextEditingController();
      final confirmpasswordController = TextEditingController();

      

      //buttons
      void SignUp() async{
                                 
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
                             

                                 //check if password and confirm password are same
                                   if(passwordController.text == confirmpasswordController.text) {
                              await FirebaseAuth.instance.createUserWithEmailAndPassword(
                              email: emailController.text,
                              password: passwordController.text,
                              );
                                   }
                                   else
                                   {
                                    showErrorMessage('Password Doesn\'t Match!');
                                   }
                                  

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
                                
                                     const Text('TOH KAISE AAP LOG',
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

                                     // confirm password
                                     TextApp(
                                      controller: confirmpasswordController,
                                      hintText: 'Confirm Password',
                                      obscureText: true,
                                     ),
                                
                                      
                                      
                                
                                      
                                     
                                
                                      const SizedBox(height: 10),
                                    
                                
                                      //Sign-Up Button
                                      button(
                                        onTap: SignUp, text: 'Sign Up',
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
                                          Text('Already A Member?',
                                          style: TextStyle(color: Colors.black),
                                          ),
                                          const SizedBox(width: 4,),
                                          GestureDetector(
                                            onTap: widget.onTap,
                                            child:const Text (
                                              'Login Here!',
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

  




