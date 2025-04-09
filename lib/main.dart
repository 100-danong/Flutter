import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

/*class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
*/ /*      home: Center(
        child: Text('hello\nFlutter', textAlign: TextAlign.center),
    ));*/ /*
      home: Container(
        color: Colors.white,
        child: Center(
          child: Text(
              'hello\nFlutter',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blue, fontSize: 20),
          ),
      )));
  }
}*/

/*class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    var switchValue = false;
      return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        darkTheme: ThemeData.light(),
        home: Scaffold(
          body: Center(
            child: Switch(
              value: switchValue,
              onChanged: (value){
                switchValue = value;
              }),
        ),
      ));
  }
}*/

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyApp();
  }
}

class _MyApp extends State<MyApp> {
  var switchValue = false;
  String test = 'hello';
  Color _color = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        darkTheme: ThemeData.light(),
        home: Scaffold(
          body: Center(
            child: ElevatedButton(
              child: Text('$test'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(_color)),
              onPressed: () {
                if(_color == Colors.blue){
                  setState((){
                    test = 'flutter';
                    _color = Colors.amber;
                  });
                } else {
                  setState((){
                    test = 'flutter';
                    _color = Colors.blue;
                  });
                }
              })),
        ));
  }
}

  class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
  }

  class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
  setState(() {

  _counter++;
  });
  }

  @override
  Widget build(BuildContext context) {

  return Scaffold(
  appBar: AppBar(

  backgroundColor: Theme.of(context).colorScheme.inversePrimary,

  title: Text(widget.title),
  ),
  body: Center(

  child: Column(

  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
  const Text(
  'You have pushed the button this many times:',
  ),
  Text(
  '$_counter',
  style: Theme.of(context).textTheme.headlineMedium,
  ),
  ],
  ),
  ),
  floatingActionButton: FloatingActionButton(
  onPressed: _incrementCounter,
  tooltip: 'Increment',
  child: const Icon(Icons.add),
  ), // This trailing comma makes auto-formatting nicer for build methods.
  );
  }
  }
