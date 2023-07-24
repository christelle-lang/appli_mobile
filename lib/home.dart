import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/accueil');
              },
              child: Text('Go to Accueil'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/addTruck');
              },
              child: Text('Go to Add Truck'),
            ),
          ],
        ),
      ),
    );
  }
}
