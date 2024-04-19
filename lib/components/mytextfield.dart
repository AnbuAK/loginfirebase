import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({super.key,
  required this.controller,
  required this.hintText,
  required this.obscureText});

  final controller;
  final String hintText;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 30),
                 child: TextField(
                  obscureText: obscureText,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey.shade400,
                  ),
                  controller: controller,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Colors.white,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.shade200,
                        ),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      hintText: hintText,
                      hintStyle:TextStyle(color:Colors.grey.shade500), 
                  ),
                ),
               );
  }
}