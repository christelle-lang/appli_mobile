import 'package:flutter/material.dart';

void main() {
  runApp(new_demande());
}

class new_demande extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nouvelles demandes',
      

      theme: ThemeData(
        
      ),
      home: RequestsPage(),
      
      
    );
  } 
}

class Request {
  final String title;
  final String description;

  Request({required this.title, required this.description});
}

class RequestsPage extends StatefulWidget {
  @override
  _RequestsPageState createState() => _RequestsPageState();
}

class _RequestsPageState extends State<RequestsPage> {
  List<Request> requests = [
    Request(
      title: 'Korhogo-Adjamé',
      description: 'Description de la demande 1',
    ),
    Request(
      title: 'Korhogo-Adjamé',
      description: 'Description de la demande 2',
    ),
    Request(
      title: 'Korhogo-Adjamé',
      description: 'Description de la demande 3',
    ),
  ];

  void acceptRequest(Request request) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Demande acceptée'),
          content: Text('La demande "${request.title}" a été acceptée.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                setState(() {
                  requests.remove(request);
                });
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void rejectRequest(Request request) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Demande refusée'),
          content: Text('La demande "${request.title}" a été refusée.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                setState(() {
                  requests.remove(request);
                });
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
        title: Text('Nouvelles demandes'),
        backgroundColor: Color.fromARGB(255, 253, 184, 25),

        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: requests.isEmpty
          ? Center(child: Text('Aucune nouvelle demande'))
          : ListView.builder(
              itemCount: requests.length,
              itemBuilder: (context, index) {
                final request = requests[index];
                return Card(
                  margin: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        title: Text(request.title),
                        subtitle: Text(request.description),
                      ),
                      ButtonBar(
                        children: [
                          ElevatedButton(
                            onPressed: () => acceptRequest(request),
                            child: Text('Accepter'),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.green,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () => rejectRequest(request),
                            child: Text('Refuser'),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
    );
  }
}
