import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  
void _incrementconunter() {
  setState(() {
    _counter++;
  });
}
void _decrementconunter() {
  setState(() {
    if(_counter > 0)
    _counter--;
  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My increment counter"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("นับไปแล้ว $_counter ครั้ง"),
            ElevatedButton(
              onPressed: () {
                _incrementconunter();
              },
              child: Text("+ เพิ่ม"),
            ),
            ElevatedButton(
              onPressed: () {
                _decrementconunter();
              },
              child: Text("- ลบ"),
            )
          ],
        )
      ),
    );
  }
}