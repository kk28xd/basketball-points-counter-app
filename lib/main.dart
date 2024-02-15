import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

int a = 0;
int b = 0;

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffFF9900),
          title: const Text("Points Counter",
              style: TextStyle(color: Colors.white, fontSize: 25)),
          centerTitle: true,
        ),
        body: Column(
          children: [
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      "Team A",
                      style: TextStyle(fontSize: 35),
                    ),
                    Text(
                      '$a',
                      style: TextStyle(fontSize: 140),
                    ),
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          a++;
                        });
                      },
                      child: Text("Add 1 point"),
                      color: Color(0xffFF9900),
                      minWidth: 113,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    MaterialButton(
                        onPressed: () {
                          setState(() {
                            a += 2;
                          });
                        },
                        child: Text("Add 2 points"),
                        color: Color(0xffFF9900)),
                    SizedBox(
                      height: 10,
                    ),
                    MaterialButton(
                        onPressed: () {
                          setState(() {
                            a += 3;
                          });
                        },
                        child: Text("Add 3 points"),
                        color: Color(0xffFF9900)),
                  ],
                ),
                SizedBox(
                    height: 320,
                    child: VerticalDivider(
                      color: Colors.grey[500],
                    )),
                Column(
                  children: [
                    Text(
                      "Team B",
                      style: TextStyle(fontSize: 35),
                    ),
                    Text(
                      '$b',
                      style: TextStyle(fontSize: 140),
                    ),
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          b++;
                        });
                      },
                      child: Text("Add 1 point"),
                      color: Color(0xffFF9900),
                      minWidth: 113,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    MaterialButton(
                        onPressed: () {
                          setState(() {
                            b += 2;
                          });
                        },
                        child: Text("Add 2 points"),
                        color: Color(0xffFF9900)),
                    SizedBox(
                      height: 10,
                    ),
                    MaterialButton(
                        onPressed: () {
                          setState(() {
                            b += 3;
                          });
                        },
                        child: Text("Add 3 points"),
                        color: Color(0xffFF9900)),
                  ],
                )
              ],
            ),
            SizedBox(height: 60),
            MaterialButton(
                onPressed: () {
                  setState(() {
                    showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text(a > b
                            ? 'Team A Is The Winner'
                            : a < b
                                ? 'Team B Is The Winner'
                                : 'Draw'),
                        actions: [
                          TextButton(
                              onPressed: () {
                                setState(() {
                                  a=0;b=0;
                                  Navigator.pop(context);
                                });
                              },
                              child: Text("New Game")),
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text("Ok")),
                        ],
                      ),
                    );
                  });
                },
                height: 50,
                shape: OutlineInputBorder(borderRadius: BorderRadius.circular(60)),
                minWidth: 150,
                child: Text("Result", style: TextStyle(color: Colors.white)),
                color: Color(0xffA435F0)),
            SizedBox(height: 30),
            MaterialButton(
                onPressed: () {
                  setState(() {
                    a = 0;
                    b = 0;
                  });
                },
                height: 50,
                shape: OutlineInputBorder(borderRadius: BorderRadius.circular(60)),
                minWidth: 150,
                child: Text("Reset", style: TextStyle(color: Colors.white)),
                color: Color(0xffA435F0)),
          ],
        ),
      ),
    );
  }
}
