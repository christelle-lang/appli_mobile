import 'package:flutter/material.dart';

void main() {
  runApp(demande_accepte());
}

class demande_accepte extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Historique des demandes acceptées',
    
      home: AcceptedRequestsPage(),
    );
  }
}

class Request {
  final String title;
  final String description;
  final String trajet;
  final String prix;
  final String typeCamion;
  final String dateDemande;

  Request({
    required this.title,
    required this.description,
    required this.trajet,
    required this.prix,
    required this.typeCamion,
    required this.dateDemande,
  });
}

class AcceptedRequestsPage extends StatefulWidget {
  @override
  _AcceptedRequestsPageState createState() => _AcceptedRequestsPageState();
}

class _AcceptedRequestsPageState extends State<AcceptedRequestsPage> {
  List<Request> acceptedRequests = [
    Request(
      title: 'Korhogo-Adjamé',
      description: 'Description de la demande 1',
      trajet: 'Korhogo - Adjamé',
      prix: '50000 FCFA',
      typeCamion: 'Camion benne',
      dateDemande: '15 Juillet 2023',
    ),
    Request(
      title: 'Yamoussoukro-Abobo',
      description: 'Description de la demande 2',
      trajet: 'Yamoussoukro - Abobo',
      prix: '35000 FCFA',
      typeCamion: 'Camion frigorifique',
      dateDemande: '17 Juillet 2023',
    ),
    Request(
      title: 'San Pedro-Plateau',
      description: 'Description de la demande 3',
      trajet: 'San Pedro - Plateau',
      prix: '45000 FCFA',
      typeCamion: 'Camion citerne',
      dateDemande: '18 Juillet 2023',
    ),
  ];

  void removeRequest(Request request) {
    setState(() {
      acceptedRequests.remove(request);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Historique des demandes acceptées'),
         backgroundColor: Color.fromARGB(255, 253, 184, 25),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: acceptedRequests.isEmpty
          ? Center(child: Text('Aucune demande acceptée'))
          : ListView.builder(
              itemCount: acceptedRequests.length,
              itemBuilder: (context, index) {
                final request = acceptedRequests[index];
                return Card(
                  elevation: 4, // Ajoute une ombre à la Card
                  margin: EdgeInsets.all(16), // Espace autour de la Card
                  child: ListTile(
                    title: Text(request.title),
                    subtitle: Text(request.description),
                    trailing: IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () => removeRequest(request),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RequestDetailsPage(request: request),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
    );
  }
}

class RequestDetailsPage extends StatelessWidget {
  final Request request;

  RequestDetailsPage({required this.request});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Détails de la demande'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              request.title,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(request.description),
            SizedBox(height: 16),
            RequestInfoBox(title: 'Trajet', value: request.trajet),
            RequestInfoBox(title: 'Prix', value: request.prix),
            RequestInfoBox(title: 'Type de camion demandé', value: request.typeCamion),
            RequestInfoBox(title: 'Date de la demande', value: request.dateDemande),
            // Autres informations de la demande peuvent être affichées ici
            // ...
          ],
        ),
      ),
    );
  }
}

class RequestInfoBox extends StatelessWidget {
  final String title;
  final String value;

  RequestInfoBox({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 4),
          Text(
            value,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
