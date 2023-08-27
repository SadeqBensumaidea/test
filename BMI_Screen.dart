import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test4/BMI_ResultsScreen.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({ Key? key }) : super(key: key);
  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  bool isMale =true;
  double height =120; 
  int weight =40;
  int age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title:
        Text('BMI Calculator'),
      ),
      body: Column(
     children: [
      Expanded(
       child: Padding(
         padding: const EdgeInsets.all(20.0),
         child: Row(
          children: [
             Expanded(
               child: GestureDetector(
                onTap: (){
                  setState(() {
                    isMale = true;
                  });
                },
                 child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10,),
                    color: isMale ? Colors.blue : Color.fromARGB(255, 177, 170, 170),
                  ),
                   child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: 
                    [
                     Image(
                      image: AssetImage('assets/images/emale.png'),
                      height: 130,
                      width:130,
                      ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'MALE',
                          style: TextStyle(
                             fontSize: 25,
                             fontWeight: FontWeight.bold,
                          ),
                          ),
                    ],
                       ),
                 ),
               ),
             ),
              SizedBox(
                width: 10,
              ),
             Expanded(
               child: GestureDetector(
                onTap: () {
                  setState(() {
                    isMale =false;
                  });
                },
                 child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10,),
                    color: isMale ? Color.fromARGB(255, 163, 159, 159) : Colors.blue,
                  ),
                   child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: 
                    [
                      Image(
                      image: AssetImage('assets/images/famel.jpg'),
                      height: 130,
                      width:139,
                      ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'FEMALE',
                          style: TextStyle(
                             fontSize: 25,
                             fontWeight: FontWeight.bold,
                          ),
                          ),
                    ],
                       ),
                 ),
               ),
             ),
          ],
         ),
       ),
      ),
      Expanded(
        child:Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(255, 196, 190, 190),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'HEIGHT',
                style: TextStyle(
                   fontSize: 25,
                   fontWeight: FontWeight.bold,
                ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  mainAxisAlignment: MainAxisAlignment.center,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                     Text(
                  '${height.round()}',
                style: TextStyle(
                   fontSize: 40,
                   fontWeight: FontWeight.w900,
                ),
                ),
                 Text(
                  'CM',
                style: TextStyle(
                   fontSize: 15,
                   fontWeight: FontWeight.bold,
                ),
                ),
                  ],
                ),
                Slider(
                  value:height ,
                  max: 220,
                  min: 80,
                   onChanged:(value)
                   {
                    setState(() {
                      height = value;
                    });
                    
                   } ,
                   ),
              ],
            ),
          ),
        ),
      ),
      Expanded(
        child:Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'WEIGHT',
                      style: TextStyle(
                         fontSize: 25,
                         fontWeight: FontWeight.bold,
                      ),
                      ),
                        Text(
                        '${weight}',
                      style: TextStyle(
                         fontSize: 40,
                         fontWeight: FontWeight.w900,
                      ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [
                          FloatingActionButton(
                            onPressed: (){
                              setState(() {
                                weight--;
                              });
                            },
                            heroTag: 'weight-',
                            mini: true,
                            child: Icon(
                              Icons.remove,
                            ),
                            ),
                             FloatingActionButton(
                            onPressed: (){
                               setState(() {
                                weight++;
                              });
                            },
                            heroTag: 'weight+',
                            mini: true,
                            child: Icon(
                              Icons.add,
                            ),
                            ),
                        ],
                      ),
                    ],
                  ),
                decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10,),
                      color: Color.fromARGB(255, 201, 193, 193),
                    ),
                ),
              ),
            SizedBox(
              width:20,
            ),
             Expanded(
               child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'AGE',
                      style: TextStyle(
                         fontSize: 25,
                         fontWeight: FontWeight.bold,
                      ),
                      ),
                        Text(
                        '$age',
                      style: TextStyle(
                         fontSize: 40,
                         fontWeight: FontWeight.w900,
                      ),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,

                        children: [
                          FloatingActionButton(
                            onPressed: (){
                              setState(() {
                                age --;
                              });
                            },
                            heroTag:'age-' ,
                            mini: true,
                            child: Icon(
                              Icons.remove,
                            ),
                            ),
                             FloatingActionButton(
                            onPressed: (){
                              setState(() {
                                age ++;
                              });
                            },
                            heroTag: 'age+',
                            mini: true,
                            child: Icon(
                              Icons.add,
                            ),
                            ),
                        ],
                      ),
                    ],
                  ),
                decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10,),
                      color: Color.fromARGB(255, 201, 193, 193),
                    ),
                ),
             ),
            
            ],
          ),
        ),
      ),
    
      Container(
       width: double.infinity,
       height: 50,
        child: MaterialButton(onPressed: ()
        {
          double result = weight / pow(height / 100,2);
          print(result.round());
          Navigator.push(
            context,
             MaterialPageRoute(
              builder: (context) => BMIResultsScreen(
                age: age,
                IsMale: isMale,
                result: result.round(),
              ),
               ),
               );
        },
        color: Colors.blue,
        child: Text(
          'CALCULATE',
          style: TextStyle(
            color: Color.fromARGB(255, 247, 246, 242),
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
        ),
      ),
     ], 
      ),
    );
  }
}