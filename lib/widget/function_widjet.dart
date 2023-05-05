import 'package:flutter/material.dart';

textFild() {
  return Container(
    margin: const EdgeInsets.all(2),
    padding: const EdgeInsets.all(3),
    height: 20,
    width: 200,
    decoration: BoxDecoration(
      color:Colors.white ,
      // borderRadius: BorderRadius.circular(15),
    ),
    child: const Text(
      'Continue with Google',
      style: TextStyle(
        color: Colors.black,
        fontSize:10,
      ),
    ),
  );
}