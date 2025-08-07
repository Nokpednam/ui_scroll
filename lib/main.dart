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
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 84, 242, 139)),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> items = List<String>.generate(50, (i) => 'Item ${i + 1}');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Chapter 6'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 6, 149, 44),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int indx) {
          return ListTile(
            title: Text(items[indx]),
            subtitle: Text('รายละเอียดของ ${items[indx]}'),
            onTap: () {
              print(items[indx]);
            },
          );
        },
      ),
    );
  }
}
