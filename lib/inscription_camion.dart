import 'package:flutter/material.dart';

class AddTruckForm extends StatefulWidget {
  @override
  _AddTruckFormState createState() => _AddTruckFormState();
}

class _AddTruckFormState extends State<AddTruckForm> {
  // Les valeurs des listes déroulantes
  String? _selectedTruckType; // Valeur sélectionnée pour le type de camion
  String? _selectedCargoType; // Valeur sélectionnée pour le type de marchandise

  final _formKey = GlobalKey<FormState>();

  // Les contrôleurs des champs de texte pour réinitialiser les valeurs
  final _nomController = TextEditingController();
  final _telephoneController = TextEditingController();

  // Les options pour les listes déroulantes
  final List<String> _truckTypes = ['Camion 1', 'Camion 2', 'Camion 3'];
  final List<String> _cargoTypes = ['Marchandise 1', 'Marchandise 2', 'Marchandise 3'];

  // Fonction de réinitialisation du formulaire
  void _resetForm() {
    _selectedTruckType = null;
    _selectedCargoType = null;
    _nomController.clear();
    _telephoneController.clear();
  }

  @override
  void dispose() {
    // N'oubliez pas de supprimer les contrôleurs lorsqu'ils ne sont plus nécessaires
    _nomController.dispose();
    _telephoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ajouter un camion'),
        backgroundColor: Color.fromARGB(255, 253, 184, 25),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop(); // Revenir à la page précédente
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Ajouter un camion',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 60),
                Text(
                  'Informations Camions',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 253, 184, 25),
                  ),
                ),
                SizedBox(height: 8),
                // Listes déroulantes pour le type de camion et le type de marchandise
                DropdownButtonFormField<String>(
                  value: _selectedTruckType,
                  onChanged: (newValue) {
                    setState(() {
                      _selectedTruckType = newValue!;
                    });
                  },
                  items: _truckTypes.map((type) {
                    return DropdownMenuItem<String>(
                      value: type,
                      child: Row(
                        children: [
                          Icon(Icons.local_shipping),
                          SizedBox(width: 8),
                          Text(type),
                        ],
                      ),
                    );
                  }).toList(),
                  decoration: InputDecoration(
                    labelText: 'Type de camion',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Veuillez sélectionner un type de camion';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16),
                DropdownButtonFormField<String>(
                  value: _selectedCargoType,
                  onChanged: (newValue) {
                    setState(() {
                      _selectedCargoType = newValue!;
                    });
                  },
                  items: _cargoTypes.map((type) {
                    return DropdownMenuItem<String>(
                      value: type,
                      child: Row(
                        children: [
                          Icon(Icons.business),
                          SizedBox(width: 8),
                          Text(type),
                        ],
                      ),
                    );
                  }).toList(),
                  decoration: InputDecoration(
                    labelText: 'Type de marchandise',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Veuillez sélectionner un type de marchandise';
                    }
                    return null;
                  },
                ),
                // Autres champs de texte pour les informations du camion
                // ...

                SizedBox(height: 24),
                Text(
                  'Informations Conducteur',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 253, 184, 25),
                  ),
                ),
                SizedBox(height: 8),
                TextFormField(
                  controller: _nomController,
                  decoration: InputDecoration(
                    hintText: 'Nom du conducteur',
                    labelText: 'Nom',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Veuillez saisir le nom du conducteur';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16),
                TextFormField(
                  controller: _telephoneController,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    hintText: 'Numéro de téléphone du conducteur',
                    labelText: 'Téléphone',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Veuillez saisir le numéro de téléphone du conducteur';
                    }
                    return null;
                  },
                ),

                SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Le formulaire est valide, faites ce que vous voulez ici
                      // Par exemple, enregistrez les données dans une base de données

                      // Après avoir ajouté le camion, réinitialiser le formulaire
                      _resetForm();
                    }
                  },
                  child: Text('Ajouter le camion'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    primary: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: AddTruckForm(),
  ));
}
