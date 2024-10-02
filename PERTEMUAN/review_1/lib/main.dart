import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
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

      // ListView

       body: ListView(
        children: [
          Container(
            width: 100,
            height: 250,
            margin: EdgeInsets.only(bottom: 10),
            color: Colors.red,
          ),
          Container(
            width: 100,
            height: 250,
            margin: EdgeInsets.only(bottom: 10),
            color: Colors.blue,
          ),
          Container(
            width: 100,
            height: 250,
            margin: EdgeInsets.only(bottom: 10),
            color: Colors.green,
          ),
        ],
      ),

      // body: GridView(
      //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //       crossAxisCount: 3,
      //     ),
      //     children: [
      //         Container(
      //             width: 100,
      //             height: 250,
      //             margin: const EdgeInsets.only(bottom: 10),
      //             color: Colors.red,
      //         ),
      //         Container(
      //             width: 100,
      //             height: 250,
      //             margin: const EdgeInsets.only(bottom: 10),
      //             color: Colors.blue,
      //         ),
      //         Container(
      //             width: 100,
      //             height: 250,
      //             margin: const EdgeInsets.only(bottom: 10),
      //             color: Colors.yellow,
      //         ),
      //         Container(
      //             width: 100,
      //             height: 250,
      //             margin: const EdgeInsets.only(bottom: 10),
      //             color: Colors.lime,
      //         ),
      //         Container(
      //             width: 100,
      //             height: 250,
      //             margin: const EdgeInsets.only(bottom: 10),
      //             color: Colors.pink,
      //         ),
      //         Container(
      //             width: 100,
      //             height: 250,
      //             margin: const EdgeInsets.only(bottom: 10),
      //             color: Colors.green,
      //         ),

      // body: Center(
      //   child: Container(
      //         width: 100,
      //         height: 250,
      //         decoration: const BoxDecoration(
      //             image: DecorationImage(
      //             image: AssetImage("assets/iphone.jpg")
      //             )
      //       ),
      //     ),
      //     Positioned(
      //       left: 50,
      //       top: 100,
      //       child: Container(
      //         width: 100,
      //         height: 250,
      //         margin: const EdgeInsets.only(bottom: 10),
      //         color: Colors.blue,
      //       ),
      //     ),
      //     Positioned(
      //       left: 100,
      //       top: 200,
      //       child: Container(
      //         width: 100,
      //         height: 250,
      //         margin: const EdgeInsets.only(bottom: 10),
      //         color: Colors.yellow,
      //       ),
      //     ),
      //   ),
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}