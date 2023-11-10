import 'package:flutter/material.dart';
import 'package:login_page/components/my_button.dart';
import 'package:login_page/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
   LoginPage({super.key});

  //text controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  //user sign in
  void signUserIn(){}


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color.fromARGB(255, 61, 61, 61),
      body: SafeArea(
          child: Center(
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
        const SizedBox(height: 50),
        //logo
        Icon(Icons.lock, size: 100),
        //Welcome back

        Text(
          'Welcome back you\'ve been missed!',
          style: TextStyle(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 25),
     //username
          MyTextField(
            controller: usernameController,
            hintText: 'Username',
            obscureText: false,
          ),
          

          const SizedBox(height: 25,),
    //password
          MyTextField(
            controller: passwordController,
            hintText: 'Password',
            obscureText:true,
          ),
          const SizedBox(height: 10,),
          //forgot password
          const Text(
            'Forgot password?',
            style:TextStyle(color:Colors.white,
            fontWeight:FontWeight.w300,fontSize:15), 
            ),

            const SizedBox(height: 25),

            //Sign in button
           MyButton(
            onTap: signUserIn,
           ),

          //Registration
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Padding(padding: EdgeInsets.only(bottom: 50)),
              Text('Not a member?',
              style: TextStyle(color: Color.fromARGB(255, 170, 170, 170)),),
              SizedBox(width:4),
              Text('Register now',
              style: TextStyle(color: Colors.white),),
            ],
          )
      
      ]))),
    );
  }
}
