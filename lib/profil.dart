import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mon profil'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text(
                'Accueil',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                Navigator.pop(context); // Fermer le menu
                // Action pour l'option "Accueil"
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text(
                'Réglages',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                // Action pour l'option "Réglages"
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text(
                'Mon profil',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                Navigator.pop(context); // Fermer le menu
                // Action pour l'option "Mon profil"
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CircleAvatar(
              radius: 64,
              backgroundImage: AssetImage('assets/avatar.png'),
            ),
            SizedBox(height: 16.0),
            Text(
              'Nom d\'utilisateur',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 8.0),
            Text(
              'Adresse email',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 24.0),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Informations personnelles'),
              onTap: () {
                // Action pour afficher les informations personnelles
              },
            ),
            ListTile(
              leading: Icon(Icons.lock),
              title: Text('Modifier le mot de passe'),
              onTap: () {
                // Action pour modifier le mot de passe
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Se déconnecter'),
              onTap: () {
                // Action pour se déconnecter
              },
            ),
          ],
        ),
      ),
    );
  }
}
