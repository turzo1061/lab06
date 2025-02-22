import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lab06 Advanced UI',
      home: Scaffold(
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            children: [
              DrawerHeader(
                child: Row(
                  children: [
                    Icon(Icons.people_alt_rounded),
                    Text('Contacts', style: TextStyle(color: Colors.black)),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.mobile_friendly),
                title: Text("Device"),
                trailing: Text('0'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
                trailing: Text('1'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.info),
                title: Text("Info"),
                trailing: Text('2'),
                onTap: () {},
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: const Text('Lab06 Advance UI'),
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: Text(
            "Working with Navigation",
            style: TextStyle(fontSize: 60),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
            ),
          ],
        ),
      ),
    );
  }
}
