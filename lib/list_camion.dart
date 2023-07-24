import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Liste des camions',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TruckListPage(),
    );
  }
}

class Truck {
  final String name;
  final String driver;
  final String photoUrl;

  Truck({required this.name, required this.driver, required this.photoUrl});
}

class TruckListPage extends StatelessWidget {
  final List<Truck> trucks = [
    Truck(
      name: 'Camion 1',
      driver: 'Conducteur 1',
      photoUrl: 'https://example.com/camion1.jpg',
    ),
    Truck(
      name: 'Camion 2',
      driver: 'Conducteur 2',
      photoUrl: 'https://example.com/camion2.jpg',
    ),
    Truck(
      name: 'Camion 3',
      driver: 'Conducteur 3',
      photoUrl: 'https://example.com/camion3.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Liste des camions'),
      ),
      body: ListView.builder(
        itemCount: trucks.length,
        itemBuilder: (context, index) {
          final truck = trucks[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(truck.photoUrl),
            ),
            title: Text(truck.name),
            subtitle: Text(truck.driver),
          );
        },
      ),
    );
  }
}
