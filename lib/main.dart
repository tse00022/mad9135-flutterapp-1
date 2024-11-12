import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Layout Demo',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Doto'),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Basic Layout'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: ListView(
            children: const [
              HorizontalGallery(),
              SizedBox(
                height: 20,
              ),
              ListTile(
                leading: Icon(Icons.star),
                title: Text('ListTile with Regular Font',
                    style: TextStyle(fontFamily: 'Doto')),
              ),
              ListTile(
                leading: CircleAvatar(child: Icon(Icons.person)),
                title: Text('ListTile with Bold Font',
                    style: TextStyle(
                        fontFamily: 'Doto', fontWeight: FontWeight.bold)),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('ListTile with Italic Font',
                    style: TextStyle(
                        fontFamily: 'Doto', fontStyle: FontStyle.italic)),
              ),
              ListTile(
                trailing: Icon(Icons.arrow_forward),
                title: Text('Default Device Font'),
              ),
              SizedBox(height: 20), // Space between elements
              HorizontalGallery()
            ],
          ),
        ),
      ),
    );
  }
}

class HorizontalGallery extends StatelessWidget {
  const HorizontalGallery({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Image.network('https://placehold.co/600x400@2x.png',
                width: 200, height: 200),
          );
        },
      ),
    );
  }
}
