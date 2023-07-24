import 'package:flutter/material.dart';


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
        '/accueil': (context) => MyApp(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Accueil'),
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
              leading: Icon(Icons.add),
              title: Text(
                'Ajouter un camion',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                Navigator.pop(context); // Fermer le menu
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddTruckPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text(
                'Accueil',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                Navigator.popUntil(context, ModalRoute.withName('/accueil'));
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Contenu de la page d\'accueil'),
      ),
    );
  }
}

class AddTruckPage extends StatefulWidget {
  @override
  _AddTruckPageState createState() => _AddTruckPageState();
}

// Le reste du code reste inchangé...


class _AddTruckPageState extends State<AddTruckPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _truckBrand = '';
  String _truckModel = '';
  String _truckLicensePlate = '';

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      // Ajouter le code pour envoyer les données du camion à votre système backend ou effectuer d'autres actions nécessaires
      // Par exemple, vous pouvez utiliser une fonction de service pour envoyer les données via une API
      _showSuccessDialog();
    }
  }

  void _showSuccessDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Succès'),
          content: Text('Le camion a été ajouté avec succès.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ajouter un camion'),
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
              leading: Icon(Icons.add),
              title: Text(
                'Ajouter un camion',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                Navigator.pop(context); // Fermer le menu
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddTruckPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text(
                'Accueil',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                Navigator.pop(context); // Fermer le menu
                Navigator.pop(context); // Retourner à la page d'accueil
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Marque du camion',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Veuillez entrer la marque du camion';
                  }
                  return null;
                },
                onSaved: (value) {
                  _truckBrand = value!;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Modèle du camion',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Veuillez entrer le modèle du camion';
                  }
                  return null;
                },
                onSaved: (value) {
                  _truckModel = value!;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Immatriculation du camion',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Veuillez entrer l\'immatriculation du camion';
                  }
                  return null;
                },
                onSaved: (value) {
                  _truckLicensePlate = value!;
                },
              ),
              SizedBox(height: 24.0),
              ElevatedButton(
                onPressed: _submitForm,
                child: Text('Ajouter le camion'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
