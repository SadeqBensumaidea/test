// ignore_for_file: file_names

import 'package:flutter/material.dart';

class BMIResultsScreen extends StatelessWidget {

  final int result;
  final bool IsMale;
  final int age;
  BMIResultsScreen({
    required this.result,
    required this.IsMale,
    required this.age,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Results',
        ),
      ),
      body: Center(
        child: Column(
mainAxisAlignment: MainAxisAlignment.center,  
        children: [
            Text(
              'Gender :${IsMale ? 'male' : 'female'}',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
              ),
              Text(
              'Result : $age',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
              ),
              Text(
              'Age : $age',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
              ),
          ],
        ),
      ),
    );
  }
}