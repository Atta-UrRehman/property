import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';
import 'package:property/view/signup.dart';

class Sign extends StatelessWidget {
  const Sign({super.key});

  @override
  Widget build(BuildContext context) {
      TextEditingController emailController = TextEditingController();
    TextEditingController passController = TextEditingController();
    return Scaffold(
              appBar: AppBar(
          backgroundColor: Colors.white,
        ),
        // body: Padding(
        //   padding: const EdgeInsets.only(left: 20,right: 20,),
          body:Center(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
            Container(

              
                child: Image.asset(
              "assests/img/Propert.jpg",
              height: 120,
              width: 160,
              alignment: Alignment.center,
            )),
            SizedBox(height: 30),
            const Text(
              "Login to Your Account",
              style: TextStyle(
                fontSize: 60,
              ),
            ),
            SizedBox(height: 100),



              customTextField("Email", false, emailController),
              const SizedBox(height: 30),
              customTextField("Password", true, passController),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  print(emailController.text);
                  print(passController.text);
                },
                child: const Text('Login')),

SizedBox(height: 20),

            Column(
              children: [
                    Text("I don't have account?"),
                 TextButton(
                  onPressed: () {},
                  child: Text("Sign In")),
                  ],
                ),
              
            ],
          ),
        )
    );
  }
}



customTextField(type,hide, textFieldController ) {
  return TextField(
    controller: textFieldController,
    // Ternary operator
    obscureText: type == 'Password' ? true : false,
    // obscureText: hide,
    decoration: InputDecoration(
      
      border: const OutlineInputBorder(),
      contentPadding: EdgeInsets.fromLTRB(30, 0, 30, 0),
      labelText: type,
    ),
  );
}
