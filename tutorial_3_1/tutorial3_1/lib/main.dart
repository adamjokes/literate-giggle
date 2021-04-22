import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

// Black Ocean

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  var items = ["New Screen", "Set icon color", "Change size", "Settings"];

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My First Flutter UI"),
        actions: <Widget>[
          IconButton(
            onPressed: () {/*no actions here*/},
            icon: Icon(Icons.search),
          ),
          IconButton(

            onPressed: () {/*no actions here*/},
            icon: Icon(Icons.comment),
          ),
        ],
      ),
      drawer: MyDraw(this.items),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

// loosely coupling

// class MyDrawer extends StatelessWidget {
//   @override
//   final item;
//   Widget MyDraw(this.item);
// 
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: ListView.builder(
//         itemCount: items.length,
//         itemBuilder: (context, index) {
//           return Card(
//             child: ListTile(
//               title: Text('${items[index]}'),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
