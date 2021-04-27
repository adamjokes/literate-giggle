import 'package:flutter/material.dart';
import 'package:tutorial3_1/screens/home/bottom.dart';
import 'screens/home/body.dart';
import 'screens/home/float.dart';

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

class _MyHomePageState extends State<MyHomePage> {
  var items = ["New Screen", "Set icon color", "Change size", "Settings"];

  var _color = Colors.blue;
  var _size = 200.0;
  var _roundness = 50.0;

  get color => _color;
  set color(value) => setState(() => _color = value);

  get size => _size;
  set size(value) => setState(() => _size = value);

  get roundness => _roundness;
  set roundness(value) => setState(() => _roundness = value);

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
      drawer: Drawer(
        child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Text(items[index]),
                ),
              );
            }),
      ),
      body: Body(
        color: color,
        roundness: roundness,
        size: size,
      ),
      floatingActionButton: Float(state: this),
      bottomNavigationBar: Bottom(state: this),
    );
  }
}

// loosely coupling

// class MyDrawer extends StatelessWidget {
//   @override
//   final item;
//   Widget MyDraw(this.item);

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

// Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   FloatingActionButton.extended(
//                     onPressed: () {
//                       setState(() {
//                         initial_color = Colors.red.shade600;
//                       });
//                     },
//                     icon: Icon(Icons.colorize),
//                     label: Text("Red"),
//                     backgroundColor: Colors.red,
//                   ),
//                   FloatingActionButton.extended(
//                     onPressed: () {
//                       setState(() {
//                         initial_color = Colors.green.shade600;
//                       });
//                     },
//                     icon: Icon(Icons.colorize),
//                     label: Text("Green"),
//                     backgroundColor: Colors.green,
//                   ),
//                   FloatingActionButton.extended(
//                     onPressed: () {
//                       setState(() {
//                         initial_color = Colors.blue.shade600;
//                       });
//                     },
//                     icon: Icon(Icons.colorize),
//                     label: Text("Blue"),
//                     backgroundColor: Colors.blue,
//                   )
//                 ],
//               ),

// Slider(
//                   value: current_slider_size_value,
//                   min: 0.0,
//                   max: 300,
//                   onChanged: (double value) {
//                     setState(() {
//                       current_slider_size_value = value.roundToDouble();
//                     });
//                   }),
//
//     // Slider(
//     value: current_slider_roundness_value,
//     min: 0.0,
//     max: 300,
//     onChanged: (double value) {
//       setState(() {
//         current_slider_roundness_value = value.roundToDouble();
//       });
//     })

// Row(
//             children: [
//               ColorButton(
//                 color: Colors.red,
//                 label: Text("Red"),
//                 state: this,
//               ),
//               ColorButton(
//                 color: Colors.blue,
//                 label: Text("blue"),
//                 state: this,
//               ),
//               ColorButton(
//                 color: Colors.green,
//                 label: Text("green"),
//                 state: this,
//               ),
//             ],
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text("Size: $_currentValue"),
//               SizedBox(width: 50),
//               Text("Roundness: $_currentValue"),
//             ],
//           ),
//           SliderWidget(
//               currentValueSize: _currentValue,
//               min: 0.0,
//               max: 300.0,
//               state: this),
