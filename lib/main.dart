import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _size = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateful'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.remove),
            _size -=50;
          ),
          IconButton(
            onPressed: () {},
            icon: const Text('S'),
          ),
          IconButton(
            onPressed: () {},
            icon: const Text('M'),
          ),
          IconButton(
            onPressed: () {},
            icon: const Text('L'),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                _size +=50;
              });
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body:  Column(
        children: [
          Center(
            child: Icon(Icons.alarm, size: _size.toDouble(),),
          ),
          Slider(
            value: 0, 
            onChanged: null,
          ),
        ],
      ),
    );
  }
}
