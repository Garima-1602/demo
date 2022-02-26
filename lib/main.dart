import 'package:flutter/material.dart';

//void main List<String>questions
void main() {
  /*
   --->runApp is normal func written by flutter team.it is exposed
   in material.dart file.
   --->to display the widget we need to tell runapp the widget and the
   wideget here is MyApp
    */
  runApp(MyApp()); //rendered to screen
  //function with one expression can be written as void main() =>runApp(MyApp());
}

//material.dart has its own base class that alllow its own widgets
//that class is statelesswidget class
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
//declare the class in pascal case like MyApp
/*---->context is a special type of object which will be passed
   into build 
  method automatically but we will not call that method  flutter will
  call that
  it whenever needs to draw something onto the screen
  ---->BuildContext is a special object type provided by flutter
  in material.dart file
  --->build method needs to return a widget here as our entire
  app is a widget
  ---->home is core widget which flutter will bring onto screen

  */
  @override //to perform operations or its a decorator provided by dart
  Widget build(BuildContext context) {
    //using list we can group related data together
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.black,
        ),
        body: Column(
          children: [
            Text('The question!'),
            RaisedButton(
              child: Text('Ans 1'),
              onPressed: null,
            ),
            RaisedButton(
              child: Text('Ans 2'),
              onPressed: null,
            ),
            RaisedButton(
              child: Text('Ans 3'),
              onPressed: null,
            ),
            //RaisedButton--replacement for raisedbutton
            //ElevatedButton()
          ], //here it tells us that it holds list of widget
        ),
      ),
      //scaffold is another widget and helps in creating base design
    );
  }
}
