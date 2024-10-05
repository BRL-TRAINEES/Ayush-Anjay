import 'package:flutter/material.dart';

class TextApp extends StatelessWidget {

       final controller;
       final String hintText;
       final bool obscureText;




   const TextApp ({
       super.key,
       this.controller,
       required this.hintText,
       required this.obscureText});

   @override
  Widget build(BuildContext context) {
    return  Padding(
                                   padding: const EdgeInsets.symmetric(horizontal: 25.0),
                                 
                                 child:  TextField(
                                  controller: controller,
                                  obscureText: obscureText,
                                  decoration: InputDecoration(
                                    enabledBorder:const OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.black),
                                    ),
                                    focusedBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white),
                                    ),
                                    fillColor: Colors.white70,
                                    filled: true,
                                    hintText: hintText,
                                  ),
                                 )
                          );
  }
} 