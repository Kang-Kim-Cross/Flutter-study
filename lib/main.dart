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
            padding: EdgeInsets.all(20.0)
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
        children: [
          Column(
            children: [
              Icon(Icons.call),
              Text("CALL")
            ],
          ),
          Column(
            children: [
              Icon(Icons.near_me),
              Text("ROUTE")
            ],
          ),
          Column(
            children: [
              Icon(Icons.share),
              Text("SHARE")
            ],
          )
        ],
      ),
    );
    
    var textSection = SizedBox(
      width: 600,
      child: Text('asdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdf'),
    );
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.network(
              "https://user-images.githubusercontent.com/16532326/146313934-08dbbb3e-b688-40eb-8b5f-d32fd93ab0f7.png", 
              height: 240,
              width: 600,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection
          ],
        ),
      ),
    );
  }
}