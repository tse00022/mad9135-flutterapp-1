import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout Demo',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Roboto'),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Basic Layout'),
        ),
        body: ListView(
          children: [
            SizedBox(
              height: 400,
              child: HorizontalScroller(),
            ),
            const SizedBox(
              height: 20,
            ),
            const ListTile(
              tileColor: Colors.lightGreenAccent,
              leading: Icon(Icons.looks_one, size: 40),
              title: Text('Doto Font', style: TextStyle(fontFamily: 'Doto')),
            ),
            const SizedBox(
              height: 5,
            ),
            const ListTile(
              tileColor: Colors.lightGreenAccent,
              leading: Icon(Icons.looks_two, size: 40),
              title:
                  Text('Caveat Font', style: TextStyle(fontFamily: "Caveat")),
            ),
            const SizedBox(
              height: 5,
            ),
            const ListTile(
              tileColor: Colors.lightGreenAccent,
              leading: Icon(Icons.looks_3, size: 40),
              title: Text('Roboto Font',
                  style: TextStyle(
                      fontFamily: 'Roboto', fontStyle: FontStyle.normal)),
            ),
            const SizedBox(
              height: 5,
            ),
            const ListTile(
              tileColor: Colors.lightGreenAccent,
              leading: Icon(Icons.looks_4, size: 40),
              title: Text('Tiny5 Font', style: TextStyle(fontFamily: 'Tiny5')),
            ),
            const SizedBox(
              height: 5,
            ),
            const ListTile(
                tileColor: Colors.lightGreenAccent,
                leading: Icon(Icons.looks_5, size: 40),
                title: Text('Default Font (Roboto)')),
            const SizedBox(height: 20), // Space between elements
          ],
        ),
      ),
    );
  }

  ListView HorizontalScroller() {
    return ListView.builder(
      itemCount: 3,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Image.network('https://placehold.co/600x400@2x.png',
              width: 200, height: 200),
        );
      },
    );
  }
}
