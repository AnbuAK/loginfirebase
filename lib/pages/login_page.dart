import 'package:flutter/material.dart';
import 'package:loginfirebase/components/mybutton.dart';
import 'package:loginfirebase/components/mytextfield.dart';
import 'package:loginfirebase/components/squaretile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn(){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50,),
              const Icon(
              Icons.lock,
              size: 100,
              ),
              const SizedBox(height: 50,),
              Text('Welcome Back! Login',
              style: TextStyle(
                color: Colors.grey[700],
                fontSize: 16,
                ),
              ),
              const SizedBox(height: 25,
              ),

              MyTextField(
                obscureText: false,
                hintText: ('Username'),
                controller: usernameController,
              ),

              const SizedBox(height: 15,),

              MyTextField(
                obscureText: true,
                hintText: ('Password'),
                controller: passwordController,
              ),

              const SizedBox(height: 15,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Forget Password',
                    style: TextStyle(
                      color: Colors.grey.shade600,
                    ),),
                  ],
                ),
              ),

              const SizedBox(height: 15,),

              Mybutton(onTap: signUserIn,),

              const SizedBox(height: 40,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey.shade400,),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text('Or',
                      style: TextStyle(
                        color: Colors.grey.shade700,
                      ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey.shade400,),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20,),

              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTile(imagepath: 'lib/asset/apple_logo.png',),
                  SizedBox(width: 10,),
                  SquareTile(imagepath: 'lib/asset/google-logo.png')
                ],
              ),

              const  SizedBox(height: 30,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Not a Member?',
                  style: TextStyle(
                    color: Colors.grey.shade500
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Text('Register Now',
                  style: TextStyle(
                    color: Colors.blue.shade500,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ],
              )
            ],
          ),
        ),
      )
    );
  }
}

