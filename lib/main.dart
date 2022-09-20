import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: const MyHomePage(title: 'Halo saya latihan'),
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

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Text('Saya Widget di Tengah'),
              ),
              Container(
                color: Colors.redAccent,
                height: 50.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text('Saya Kanan'),
                  Text('Saya kiri')
                ],
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(10.0),
                color: Colors.yellow,
                child: Container(
                  color: Colors.purple,
                  padding: const EdgeInsets.all(10.0),
                  child: const Center(
                    child: Text('Saya Berwarna',
                    style: TextStyle(color: Colors.white),),
                  ),
                ),
              )
            ],
          ),
          Container(
            width: double.infinity,
            height: 80.0,
            color: Colors.black,
            child: const Center(
              child: Text('Saya Bawah Sendiri',
              style: TextStyle(color: Colors.white),),
            ),
          )
        ],
      ),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        tooltip: 'Increment',
        child: Icon(Icons.abc),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
