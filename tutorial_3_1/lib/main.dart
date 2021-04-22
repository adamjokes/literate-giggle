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

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  var items = ["New Screen", "Set icon color", "Change size", "Settings"];
  double current_slider_roundness_value = 200.0;
  double current_slider_size_value = 200.0;
  var initial_color = Colors.blue.shade600;

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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.blue[100],
                    border: Border.all(width: 5.0, color: Colors.blue[900]),
                    borderRadius: BorderRadius.all(Radius.circular(50.0))),
                child: Icon(
                  Icons.alarm,
                  size: 200,
                  color: initial_color,
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton.extended(
                    onPressed: () {
                      setState(() {
                        initial_color = Colors.red.shade600;
                      });
                    },
                    icon: Icon(Icons.colorize),
                    label: Text("Red"),
                    backgroundColor: Colors.red,
                  ),
                  FloatingActionButton.extended(
                    onPressed: () {
                      setState(() {
                        initial_color = Colors.green.shade600;
                      });
                    },
                    icon: Icon(Icons.colorize),
                    label: Text("Green"),
                    backgroundColor: Colors.green,
                  ),
                  FloatingActionButton.extended(
                    onPressed: () {
                      setState(() {
                        initial_color = Colors.blue.shade600;
                      });
                    },
                    icon: Icon(Icons.colorize),
                    label: Text("Blue"),
                    backgroundColor: Colors.blue,
                  )
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Size: $current_slider_size_value"),
                  SizedBox(width: 50),
                  Text("Roundness: $current_slider_roundness_value"),
                ],
              ),
              Slider(
                  value: current_slider_size_value,
                  min: 0.0,
                  max: 300,
                  onChanged: (double value) {
                    setState(() {
                      current_slider_size_value = value.roundToDouble();
                    });
                  }),
              Slider(
                  value: current_slider_roundness_value,
                  min: 0.0,
                  max: 300,
                  onChanged: (double value) {
                    setState(() {
                      current_slider_roundness_value = value.roundToDouble();
                    });
                  })
            ],
          ),
        ));
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
