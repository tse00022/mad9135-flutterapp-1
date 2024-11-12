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
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Roboto'),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Basic Layout'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          children: [
            SizedBox(
              height: 300,
              child: RemoteGallery(),
            ),
            const SizedBox(
              height: 5,
            ),
            const ListTile(
              tileColor: Colors.yellow,
              leading: Icon(Icons.looks_one, size: 40),
              title: Text('Doto Font', style: TextStyle(fontFamily: 'Doto')),
            ),
            const SizedBox(
              height: 5,
            ),
            const ListTile(
              tileColor: Colors.yellow,
              leading: Icon(Icons.looks_two, size: 40),
              title:
                  Text('Caveat Font', style: TextStyle(fontFamily: "Caveat")),
            ),
            const SizedBox(
              height: 5,
            ),
            const ListTile(
              tileColor: Colors.yellow,
              leading: Icon(Icons.looks_3, size: 40),
              title: Text('Roboto Font',
                  style: TextStyle(
                      fontFamily: 'Roboto', fontStyle: FontStyle.normal)),
            ),
            const SizedBox(
              height: 5,
            ),
            const ListTile(
              tileColor: Colors.yellow,
              leading: Icon(Icons.looks_4, size: 40),
              title: Text('Tiny5 Font', style: TextStyle(fontFamily: 'Tiny5')),
            ),
            const SizedBox(
              height: 5,
            ),
            const ListTile(
                tileColor: Colors.yellow,
                leading: Icon(Icons.looks_5, size: 40),
                title: Text('Default Font (Roboto)')),
            const SizedBox(height: 5), // Space between elements
            SizedBox(
              height: 300,
              child: LocalGallery(),
            ),
          ],
        ),
      ),
    );
  }

  ListView LocalGallery() {
    const imageList = [
      'assets/images/school.jpg',
      'assets/images/winter.jpg',
      'assets/images/pig.jpg',
    ];
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imageList.length,
        itemBuilder: (context, index) {
          return Image.asset(imageList[index], height: 300, fit: BoxFit.cover);
        });
  }

  ListView RemoteGallery() {
    const imageList = [
      "https://wallpaperswide.com/download/cute_fluffy_cat_outdoors-wallpaper-800x600.jpg",
      "https://wallpaperswide.com/download/beautiful_tiger_in_water-wallpaper-800x600.jpg",
      "https://wallpaperswide.com/download/cute_fluffy_cat_looking_out_the_window-wallpaper-800x600.jpg",
      "https://wallpaperswide.com/download/orange_fruits-wallpaper-800x600.jpg",
      "https://wallpaperswide.com/download/strawberry_lemonade_pitcher-wallpaper-800x600.jpg"
    ];
    return ListView.builder(
      itemCount: imageList.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Image.network(imageList[index], height: 300);
      },
    );
  }
}
