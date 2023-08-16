import 'package:flutter/material.dart';
import'Components/my_textfield.dart';
import 'Components/mybutton.dart';
class Login_page extends StatelessWidget {
   Login_page({super.key});

  //text editing controller
  final usernameController= TextEditingController();
  final passwordController= TextEditingController();
  
//sign user in method
void signUserIn()
{

}
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
                  backgroundColor: Colors.grey[300],

      body:SafeArea(
        child: Center(
          child: Column(children: [
            const SizedBox(height:50),
            const Icon(Icons.lock,
            size:100,
            ),
           const SizedBox(height:50),
           Text("Welcome! You've been Missed!",style: TextStyle(
            color: Colors.grey[700],
            fontSize: 16,

           )),
            const SizedBox(height:25),
             MyTextField(
              controller: usernameController,
              hintText: 'Username',
              obscureText: false,

             ),
            const SizedBox(height:25),

             //password Textfield
             MyTextField(
              controller: passwordController,
              hintText: 'Password',
              obscureText: true,
             ),
            const SizedBox(height:10),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal:25.0),
             
             child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 Text("Forgot Password?",style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 16,
           
                 )),
               ],
             ),

           ),
            const SizedBox(height:25),
            //Sign In button
            MyButton(
              onTap:signUserIn,
            ),
            
            const SizedBox(height:25),

  Padding(
    padding: const EdgeInsets.symmetric(horizontal:25),
    child: Row(
      children: [
        Expanded(
          child: Divider(
          thickness: 0.5,color: Colors.grey[400],
        ),
        ),
      ],
    ),
  ),
  Padding(
    padding: const EdgeInsets.symmetric(horizontal:10),
    child: Text("Or Continue With", style: TextStyle(color:
      Colors.grey[700],
  
    ),),
  ),Padding(
    padding: const EdgeInsets.symmetric(horizontal:25),
    child: Row(
      children: [
        Expanded(
          child: Divider(
          thickness: 0.5,color: Colors.grey[400],
        ),
        ),
      ],
    ),
  ),

          ],),
        ),
      )

    );
  }
}