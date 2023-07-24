import 'package:flutter/material.dart';
// import 'package:projet_mobile/accueil.dart';
import 'package:projet_mobile/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plateforme de Transport',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        // '/accueil': (context) => AccueilPage(),
      },
      home: MenuPage(),
    );
  }
}

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              child: Text('Home'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/accueil');
              },
              child: Text('Accueil'),
            ),
          ],
        ),
      ),
    );
  }
}
