import 'package:flutter/material.dart';

void main() {
  runApp(bilan_journalier());
}

class bilan_journalier extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bilan journalier',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DailySummaryPage(),
    );
  }
}

class DailySummaryPage extends StatelessWidget {
  final int receivedRequests = 10;
  final int inProgressRequests = 5;
  final double receivedAmount = 250.0;
  final double withdrawAmount = 100.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bilan journalier'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              RoundedBox(
                color: Colors.white,
                number: receivedRequests.toString(),
                image: 'assets/truck.png',
              ),
              SizedBox(height: 20),
              RoundedBox(
                color: Colors.white,
                number: inProgressRequests.toString(),
                image: 'assets/truck.png',
              ),
              SizedBox(height: 20),
              RoundedBox(
                color: Colors.white,
                number: receivedAmount.toStringAsFixed(2) + ' \$',
                image: 'assets/truck.png',
              ),
              SizedBox(height: 20),
              RoundedBox(
                color: Colors.white,
                number: withdrawAmount.toStringAsFixed(2) + ' \$',
                image: 'assets/truck.png',
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Accueil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Réglages',
          ),
        ],
      ),
    );
  }
}

class RoundedBox extends StatelessWidget {
  final Color color;
  final String number;
  final String image;

  const RoundedBox({
    required this.color,
    required this.number,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            width: 64,
            height: 64,
          ),
          SizedBox(height: 8),
          Text(
            number,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
