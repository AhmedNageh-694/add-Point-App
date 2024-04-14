// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';

void main() {
  runApp(Ex());
}

class Ex extends StatefulWidget {
  Ex({super.key});

  @override
  State<Ex> createState() => _ExState();
}

class _ExState extends State<Ex> {
  int pointTeamA = 0;

  int pointTeamB = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Ex',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.amber,
        ),
        body: Column(
          children: [
            SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Column(
                    children: [
                      const Text(
                        'Team A',
                        style: TextStyle(fontSize: 32),
                      ),
                      Text(
                        '$pointTeamA',
                        style: TextStyle(fontSize: 150),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              
                                pointTeamA++;
                              
                            });
                            print(pointTeamA);
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.amber,
                              foregroundColor: Colors.black),
                          child: const Text('Add 1 Point')),
                      SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              
                               pointTeamA= pointTeamA +2;
                            
                            });
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.amber,
                              foregroundColor: Colors.black),
                          child: const Text('Add 2 Point')),
                      SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              pointTeamA= pointTeamA +3;                              
                            });
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.amber,
                              foregroundColor: Colors.black),
                          child: const Text('Add 3 Point')),
                    ],
                  ),
                ),
                SizedBox(
                  height: 400,
                  child: VerticalDivider(
                    color: Colors.black,
                    thickness: 1,
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      const Text(
                        'Team B',
                        style: TextStyle(fontSize: 32),
                      ),
                      Text(
                        '$pointTeamB',
                        style: TextStyle(fontSize: 150),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              
                                pointTeamB++;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.amber,
                              foregroundColor: Colors.black),
                          child: const Text('Add 1 Point')),
                      SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                               pointTeamB= pointTeamB + 2;

                            });
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.amber,
                              foregroundColor: Colors.black),
                          child: const Text('Add 2 Point')),
                      SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              pointTeamB= pointTeamB +3;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.amber,
                              foregroundColor: Colors.black),
                          child: const Text('Add 3 Point')),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {

                      pointTeamA = 0;
                      pointTeamB = 0;

                  });
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                    foregroundColor: Colors.black),
                child: const Text('Reset')),
          ],
        ),
      ),
    );
  }
}
