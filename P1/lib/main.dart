import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int cnt = 0;

  void increment() {
    setState(() {
      cnt++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.blue[100],
              padding: EdgeInsets.all(20),
              child: Text(
                'MyHomePage',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CounterA(counter: cnt, increment: increment),
            SizedBox(
              height: 16,
            ),
            Middle(counter: cnt),
          ],
        ),
      ),
    );
  }
}

class CounterA extends StatelessWidget {
  const CounterA({required this.counter, required this.increment, super.key});

  final int counter;
  final void Function() increment;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red[100],
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Text(
            '$counter',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          ElevatedButton(
            onPressed: increment,
            child: Text(
              'increment',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}

class Middle extends StatelessWidget {
  const Middle({this.counter, super.key});

  final counter;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          CounterB(counter:counter),
          SizedBox(
            width: 15,
          ),
          Sibling(),
        ],
      ),
    );
  }
}

class CounterB extends StatelessWidget {
  const CounterB({required this.counter, super.key});

  final int counter;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      padding: EdgeInsets.all(20),
      child: Text(
        '$counter',
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}

class Sibling extends StatelessWidget {
  const Sibling({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange[100],
      padding: EdgeInsets.all(20),
      child: Text(
        'Sibling',
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}
