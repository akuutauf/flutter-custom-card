import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Custom Card Widget",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 0, 204, 255),
      ),
      body: Container(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color.fromARGB(255, 119, 228, 212),
                Color.fromARGB(255, 251, 244, 109)
              ], begin: Alignment.topCenter, end: Alignment.bottomLeft)),
            ),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.7,
                child: Card(
                  elevation: 5,
                  child: Stack(children: [
                    Opacity(
                      opacity: 0.5,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage("assets/images/pattern_2.png"),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5)),
                        image: DecorationImage(
                            image: AssetImage("assets/images/akebi_3.jpg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          20,
                          50 + MediaQuery.of(context).size.height * 0.35,
                          20,
                          20),
                      child: Center(
                        child: Column(
                          children: [
                            Text(
                              "Akebi Komici Anime",
                              maxLines: 2,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.pink,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 15, 0, 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Date On ",
                                    style: TextStyle(
                                        color: Colors.blueAccent,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    "April 07, 2022",
                                    style: TextStyle(
                                        color: Colors.pink,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Spacer(
                                    flex: 10,
                                  ),
                                  //icon
                                  Icon(
                                    Icons.favorite_rounded,
                                    size: 18,
                                    color: Colors.red,
                                  ),
                                  Spacer(
                                    flex: 1,
                                  ),
                                  //text
                                  Text(
                                    "99",
                                    style: TextStyle(color: Colors.red),
                                  ),
                                  Spacer(
                                    flex: 5,
                                  ),
                                  //icon
                                  Icon(
                                    Icons.comment_rounded,
                                    size: 18,
                                    color: Colors.blueAccent,
                                  ),
                                  Spacer(
                                    flex: 1,
                                  ),
                                  //text
                                  Text(
                                    "1K",
                                    style: TextStyle(color: Colors.blueAccent),
                                  ),
                                  Spacer(
                                    flex: 10,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
