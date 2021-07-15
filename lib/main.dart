import 'package:flutter/material.dart';

void main() {
  runApp(FlBtn());
}

class FlBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ButtonPage(),
    );
  }
}

class ButtonPage extends StatefulWidget {
  @override
  _ButtonPageState createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('FAB')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'COUNT',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              count.toString(),
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 200,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      count++;
                    });
                  },
                ),
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  child: Icon(
                    Icons.remove,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      count--;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
