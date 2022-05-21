import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String text = "1929250";
  Color my_color = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Assignment_1'),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            text = "Spandan Chakravarty";
          });
        },
        child: Icon(Icons.text_format),
        backgroundColor: Colors.grey[800],
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(40.0),
            padding: EdgeInsets.all(30.0),
            color: my_color,
            child: Text(
              "$text",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  my_color = Colors.green;
                });
              },
              child: Text("Change Color")),
        ],
      ),
    );
  }
}
