import 'package:flutter/material.dart';
import 'package:tugas/form.dart';
import 'package:tugas/dataBudget.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  final String title = "Program Counter";

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

  void _decremntCounter() {
    if (_counter == 0) {
      setState(() {
        _counter == 0;
      });
    } else {
      setState(() {
        _counter--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),

      drawer: Drawer(
        child: Column(
          children: [
            // Menambahkan clickable menu
            ListTile(
              title: const Text('counter_7'),
              onTap: () {
                // Route menu ke halaman utama
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage()),
                );
              },
            ),
            ListTile(
              title: const Text('Tambah Budget'),
              onTap: () {
                // Route menu ke halaman form
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyFormPage()),
                );
              },
            ),
            ListTile(
              title: const Text('Data Budget'),
              onTap: () {
                // Route menu ke halaman form
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyDataBudget()),
                );
              },
            ),
          ],
        ),
      ),

      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _counter % 2 == 0
                ? const Text(
                    'GENAP',
                    style: TextStyle(color: Colors.blue),
                  )
                : const Text(
                    'GANJIL',
                    style: TextStyle(color: Colors.red),
                  ),
            Text('$_counter', style: Theme.of(context).textTheme.headline4),
          ],
        ),
      ),

      floatingActionButton: Stack(children: [
        Align(
          alignment: Alignment.bottomRight,
          child: FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(32.0, 0, 0, 0),
            child: FloatingActionButton(
              onPressed: _decremntCounter,
              tooltip: 'Decrement',
              child: const Icon(Icons.remove),
            ),
          ),
        ),
      ]), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
