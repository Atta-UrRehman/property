import 'package:flutter/material.dart';
import 'package:property/view/signup.dart';

import '../widget/function_widjet.dart';

class Property extends StatelessWidget {
  const Property({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Icon(
          Icons.arrow_back_outlined,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
      ),
      // body: SingleChildScrollView(
      //   scrollDirection: Axis.horizontal,
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
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
              "Let's you in",
              style: TextStyle(
                fontSize: 80,
              ),
            ),
            SizedBox(height: 100),

            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(250, 50),backgroundColor:Colors.white,foregroundColor: Colors.black
                ),
                onPressed: () {},
                child: Container(
                  child: Text("Continue with Google"),
                )),
            SizedBox(height: 20),
            ElevatedButton(
                style:
                    ElevatedButton.styleFrom(minimumSize: const Size(250, 50),backgroundColor:Colors.white,foregroundColor: Colors.black ),

                onPressed: () {},
                child: Container(child: Text("Continue with Facebook"))),
            SizedBox(height: 20),

            ElevatedButton(
                style:
                    ElevatedButton.styleFrom(minimumSize: const Size(250, 50),backgroundColor:Colors.white,foregroundColor: Colors.black),
                onPressed: () {},
                child: Container(child: Text("Continue with Apple"))),

            SizedBox(height: 35),

            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Sign(),
                    ),
                  );
                },
                child: Text("Sign up")),

            SizedBox(height: 20),

            Column(
              children: [
                    Text("I don't have account?"),
                 TextButton(
                  onPressed: () {Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Sign(),
                    ),
                  );
                  },
                  child: Text("Sign In")),
                  ],
                ),
                
                // TextButton(
                //   onPressed: () {},
                //   child: Text("Sign In"),
                
              ],
            ),

            // This trailing comma makes auto-formatting nicer for build methods.
          
        ),
      );
    
  }
}
