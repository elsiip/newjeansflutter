import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  
  @override
  Widget build(BuildContextcontext){
    Color color1 = Color(0xFFED7A7A);
    Color color2 = Color(0xFF6BD159);
    Color color3 = Color(0xFFA0CAE2);
    Color color4 = Color(0xFFF9BEF5);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar( 
          backgroundColor: color1,
          title: const Text('The Powerpuff Girl'),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              color: color3,
              child: Column(
                children: [
                  //Container pertama
                  Container(
                    height: 40.0,
                    child: GridView.count(
                      childAspectRatio: (8/2),
                      crossAxisCount: 2,
                      children: <Widget>[
                        Container(
                          color: Colors.white,
                          alignment: Alignment.center,
                          child: Text("EPISODE",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700
                            ),
                          ),
                        ),
                        Container(
                          color: Colors.white,
                          alignment: Alignment.center,
                          child: Text("FIGURE",
                            style: TextStyle(
                              fontSize: 15, 
                              fontWeight: FontWeight.w600
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //Container kedua (Stack)
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 3.0,
                )
              ),
              margin: EdgeInsets.all(8.0),
              child: Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(
                      left: 18.0,
                      bottom: 14.0
                      ),
                      alignment: Alignment.bottomLeft,
                      color: color2,
                      child: Text(
                        "See More",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      height: 350.0,
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 15.0),
                    alignment: Alignment.bottomCenter,
                    color: Colors.black,
                    child: Text(
                      "PowerPuff x NewJeans",
                      style: TextStyle(
                        fontSize: 18, 
                        color: Colors.white,
                        fontWeight: FontWeight.w500
                        ),
                      ),
                      height: 300.0,
                      width: 400.0,
                  ),
                  Container(
                    child: Image.asset('image/5.gif', fit: BoxFit.cover),
                    height: 250.0,
                    width: 400.0,
                  )
                ],
              ),
            ),

            // Container ketiga
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: color4,
                  width: 4.0,
                ),
              ),
              margin: EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: color3,
                        width: 4.0,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: Image.asset( 'image/4.jpg', fit: BoxFit.cover),
                          height: 125.25,
                          width: 180.25,
                        ),
                        Expanded(
                          child: Container(
                            color: color3,
                            padding: EdgeInsets.all(14.0),
                            alignment: Alignment.center,
                            child: Text(
                              "PowerPuff Girls Introduces a New, Fourth Sister Bliss",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            height: 125.0,
                            width: 180.25,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 15.0, top: 8.0),
                          color: color4,
                          child: Text(
                            "Bubbles",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          height: 40.0,
                          width: 368.5,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            
            // Container keempat
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: color4,
                  width: 4,
                ),
              ),
              margin: EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: color4,
                        width: 4,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: Image.asset( 'image/3.jpg', fit: BoxFit.cover),
                          height: 125.25,
                          width: 180.25,
                        ),
                        Expanded(
                          child: Container(
                            color: color4,
                            padding: EdgeInsets.all(14.0),
                            alignment: Alignment.center,
                            child: Text(
                              "NewJeans’ collaboration with “Powerpuff Girls” is a hit? Explosive response ",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.white
                              ),
                            ),
                            height: 125.0,
                            width: 180.25,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 15.0, top: 8.0),
                          color: color3,
                          child: Text(
                            "Watch this",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white
                            ),
                          ),
                          height: 40.0,
                          width: 368.5,
                        ),
                      )
                    ],
                  )
                ]
              ),
            )
          ],
        ),
      ),
    );
  }
}