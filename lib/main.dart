import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(title: 'Flutter demo homepage'),
    );
  }
}

class MyHomePage extends StatefulWidget {

  const MyHomePage({ Key? key, required this.title }) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    var titleSection = SizedBox(
      width: 600,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hololive 3rd gen", 
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26
                ),),
              Text("Illustrated by stories282",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 26
                ),)
            ],
          ),
          Padding(
            padding: EdgeInsets.all(10.0)
          ),
          Icon(Icons.star,
            size: 35,
            color: Colors.orange[400],
          ),
          Text("35",
            style: TextStyle(
              fontSize: 30
            ),
          )
      ],)
    ,);
    
    var buttonSection = SizedBox(
      width: 600,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Icon(Icons.call,
                size: 45,
                color: Colors.blue[400],
              ),
              Text("CALL",
                style: TextStyle(
                  color: Colors.blue[400]
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.all(40.0)
          ),
          Column(
            children: [
              Icon(Icons.near_me,
                size: 45,
                color: Colors.blue[400],
              ),
              Text("ROUTE",
                style: TextStyle(
                  color: Colors.blue[400]
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.all(40.0)
          ),
          Column(
            children: [
              Icon(Icons.share,
                size: 45,
                color: Colors.blue[400],
              ),
              Text("SHARE",
                style: TextStyle(
                  color: Colors.blue[400]
                ),
              )
            ],
          )
        ],
      ),
    );
    
    var textSection = SizedBox(
      width: 600,
      child: Container(
        child: Text('''Each character takes drawing time 17 hours.
I'm using procreate.
My equipment are Ipad 12.9 (2nd gen) and macro keypad. Especially macro keypad so useful to press shortcuts.
        ''',
          style: TextStyle(
            fontSize: 20
          ),
        ),
        padding: EdgeInsets.all(40),
      ),
    );
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.network(
                "https://user-images.githubusercontent.com/16532326/146313934-08dbbb3e-b688-40eb-8b5f-d32fd93ab0f7.png", 
                height: 240,
                width: 600,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: EdgeInsets.all(15.0)
              ),
              titleSection,
              Padding(
                padding: EdgeInsets.all(15.0)
              ),
              buttonSection,
              Padding(
                padding: EdgeInsets.all(0.0)
              ),
              textSection
            ],
          ),
        ),
      )
    );
  }
}