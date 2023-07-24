// import 'package:flutter/material.dart';
// // import 'package:projet_mobile/inscription_camion.dart';
// import 'package:projet_mobile/historique_accepte.dart';
// import 'package:projet_mobile/historique_refuser.dart';
// import 'package:projet_mobile/new_demande.dart';
// import 'package:projet_mobile/bilan_journalier.dart';
// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Accueil',
//       theme: ThemeData(
//         primaryColor: Colors.orange,
//         colorScheme: ThemeData().colorScheme.copyWith(
//           secondary: Colors.orangeAccent,
//         ),
//       ),
//       home: Scaffold(
//         key: _scaffoldKey,
//         appBar: AppBar(
//           title: Text('Accueil'),
//           backgroundColor: Color.fromARGB(255, 253, 184, 25),
//           leading: IconButton(
//             icon: Icon(Icons.menu),
//             onPressed: () {
//               _scaffoldKey.currentState?.openDrawer();
//             },
//           ),
//         ),
//         body: AccueilPage(),
//         drawer: DrawerMenu(),
//       ),
//       initialRoute: '/',
//       routes: {
//         '/new_demande': (context) => new_demande(),
//         '/demande_refuse': (context) => demande_refuse(),
//         '/demande_accepte': (context) => demande_accepte(),
//         '/bilan_journalier': (context) => bilan_journalier(),
//       },
//     );
//   }
// }

// class AccueilPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Column(
//         children: [
//           Container(
//             width: double.infinity,
//             margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
//             decoration: BoxDecoration(
//               color: Color.fromARGB(255, 253, 184, 25),
//               borderRadius: BorderRadius.circular(10),
//             ),
//             padding: EdgeInsets.all(16),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: Text(
//                     'Ajouter des camions pour augmenter vos demandes',
//                     style: TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//                 SizedBox(width: 10),
//                 ElevatedButton(
//                   onPressed: () {
//                     Navigator.pushNamed(context, '/ajout_camion');
//                   },
//                   style: ElevatedButton.styleFrom(
//                     primary: Colors.black,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                   ),
//                   child: Text('Ajouter ici', style: TextStyle(color: Colors.white)),
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(height: 10),
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 16),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: [
//                 Center(
//                   child: Text(
//                     'Statistique utilisateur',
//                     style: TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 10),
//                 Row(
//                   children: [
//                     Expanded(
//                       child: Padding(
//                         padding: EdgeInsets.only(right: 8),
//                         child: RoundedBoxWithText(
//                           text: 'Camion enregistré',
//                           number: '0',
//                           image: 'assets/accueil/truck.png',

//                         ),
//                       ),
//                     ),
//                     Expanded(
//                       child: Padding(
//                         padding: EdgeInsets.only(left: 8),
//                         child: RoundedBoxWithText(
//                           text: 'Camion en livraison',
//                           number: '2',
//                           image: 'assets/accueil/camion_en_operation.png',

//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 // Add other widgets here if needed
//               ],
//             ),
//           ),

//           SizedBox(height: 12),
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 16),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: [
//                 Center(
//                   child: Text(
//                     'Statistique demande',
//                     style: TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 12),
//                 Row(
//                   children: [
//                     Expanded(
//                       child: Padding(
//                         padding: EdgeInsets.only(right: 8),
//                          child: RoundedBoxWithText(
//                           text:'Demandes recues',
//                           number: '3',
//                           image: 'assets/accueil/camion_en_operation.png',

//                         ),
//                       ),
//                     ),
//                     Expanded(
//                       child: Padding(
//                         padding: EdgeInsets.only(left: 8),
//                          child: RoundedBoxWithText(
//                           text:'Demandes non lues',
//                           number: '4',
//                           image: 'assets/accueil/camion_en_operation.png',

//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(height: 12),
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 16),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: [
//                 Center(
//                   child: Text(
//                     'Statistique financier',
//                     style: TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 12),
//                 Row(
//                   children: [
//                     Expanded(
//                       child: Padding(
//                         padding: EdgeInsets.only(right: 12),
//                         child: RoundedBoxWithText(
//                           text:'Argent recu',
//                           number: '5',
//                           image: 'assets/accueil/camion_en_operation.png',

//                         ),
//                       ),
//                     ),

//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class DrawerMenu extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: ListView(
//         padding: EdgeInsets.zero,
//         children: [
//           DrawerHeader(
//             decoration: BoxDecoration(
//               color: Color.fromARGB(255, 253, 184, 25),
//             ),
//             child: Text(
//               'Menu',
//               style: TextStyle(
//                 fontSize: 20,
//                 color: Colors.white,
//               ),
//             ),
//           ),
//           ListTile(
//             leading: Icon(Icons.add),
//             title: Text(
//               'Ajouter un camion',
//               style: TextStyle(fontSize: 18),
//             ),
//             onTap: () {
//               Navigator.pushNamed(context, '/ajout_camion');
//             },
//           ),
//           ListTile(
//             leading: Icon(Icons.pending),
//             title: Text(
//               'Nouvelles demandes',
//               style: TextStyle(fontSize: 18),
//             ),
//             onTap: () {
//               Navigator.pushNamed(context, '/new_demande');
//             },
//           ),
//           ListTile(
//             leading: Icon(Icons.history),
//             title: Text(
//               'Historique demandes acceptées',
//               style: TextStyle(fontSize: 18),
//             ),
//             onTap: () {
//               Navigator.pushNamed(context, '/demande_accepte');
//             },
//           ),
//           ListTile(
//             leading: Icon(Icons.cancel),
//             title: Text(
//               'Historique demandes refusées',
//               style: TextStyle(fontSize: 18),
//             ),
//             onTap: () {
//               Navigator.pushNamed(context, '/demande_refuse');
//             },
//           ),
//           ListTile(
//             leading: Icon(Icons.calendar_today),
//             title: Text(
//               'Bilan journalier',
//               style: TextStyle(fontSize: 18),
//             ),
//             onTap: () {
//               Navigator.pushNamed(context, '/bilan_journalier');
//             },
//           ),
//           ListTile(
//             leading: Icon(Icons.calendar_today),
//             title: Text(
//               'Bilan annuel',
//               style: TextStyle(fontSize: 18),
//             ),
//             onTap: () {
//               Navigator.pushNamed(context, '/annualSummary');
//             },
//           ),
//           ListTile(
//             leading: Icon(Icons.settings),
//             title: Text(
//               'Paramètres',
//               style: TextStyle(fontSize: 18),
//             ),
//             onTap: () {
//               Navigator.pushNamed(context, '/settings');
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }class RoundedBoxWithText extends StatelessWidget {
//   final String text;
//   final String number;
//   final String image;
//   final double boxWidth; // Custom width for the box
//   final double boxHeight; // Custom height for the box

//   RoundedBoxWithText({
//     required this.text,
//     required this.number,
//     required this.image,
//     this.boxWidth = 160, // Default width for the box if not provided
//     this.boxHeight = 200, // Default height for the box if not provided
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: boxWidth,
//       height: boxHeight,
//       padding: EdgeInsets.all(12),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10),
//         color: Colors.white,
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.2),
//             blurRadius: 4,
//             offset: Offset(0, 2),
//           ),
//         ],
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Expanded(
//             child: AspectRatio(
//               aspectRatio: 1, // Make the image take the full width and height of the box
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(10),
//                 child: Image.asset(
//                   image,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//           ), // Image with 100% size
//           SizedBox(height: 12), // Add spacing between image and text
//           Text(
//             text,
//             textAlign: TextAlign.center,
//             style: TextStyle(
//               fontSize: 16,
//               fontWeight: FontWeight.bold,
//             ),
//           ), // Text below the image
//           SizedBox(height: 6), // Add spacing between text and number
//           Text(
//             number,
//             style: TextStyle(
//               fontSize: 20,
//               fontWeight: FontWeight.bold,
//             ),
//           ), // Number below the text
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:projet_mobile/historique_accepte.dart';
import 'package:projet_mobile/historique_refuser.dart';
import 'package:projet_mobile/new_demande.dart';
import 'package:projet_mobile/bilan_journalier.dart';
import 'package:projet_mobile/inscription_camion.dart';


void main() {
  runApp(DashboardApp());
}

class DashboardApp extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        key: _scaffoldKey,
          appBar: AppBar(
      title: Text(
        'Accueil',
        style: TextStyle(
          color: Colors.black, // Couleur du texte en noir
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true, // Centre le texte de l'app bar
      backgroundColor: Color.fromARGB(255, 253, 184, 25),
      leading: IconButton(
        icon: Icon(Icons.menu, color: Colors.black,),
        onPressed: () {
          _scaffoldKey.currentState?.openDrawer();
        },
        
      ),
      
    ),
    
        body: DashboardScreen(),
        drawer: DrawerMenu(),
      ),
      initialRoute: '/',
      routes: {
        '/new_demande': (context) => new_demande(),
        '/demande_refuse': (context) => demande_refuse(),
        '/demande_accepte': (context) => demande_accepte(),
        '/bilan_journalier': (context) => bilan_journalier(),
        '/ajout_camion': (context) => AddTruckForm(),

      },
    );
  }
}

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          // Boîte pour ajouter des camions
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 253, 184, 25),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    'Ajouter des camions pour augmenter vos demandes',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(width: 12.0),
                ElevatedButton(
                  onPressed: () {
                        Navigator.pushNamed(context, '/ajout_camion');
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text('Ajouter ici',
                      style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ),

          // Statistiques Camions
          Column(
          
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 16.0), // Ajouter un espace de 16 pixels

              Text(

                'Statistique Camions',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 12.0),
              GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  StatisticCard(
                    icon: Icons.local_shipping,
                  
                    title: 'Camions enregistrés',
                    value: '30',
                  ),
                  StatisticCard(
                    icon: Icons.local_shipping,
                    
                    title: 'Camions en livraison',
                    value: '20',
                  ),
                ],
              ),
              SizedBox(height: 16.0),
            ],
          ),

          // Statistiques Demandes
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Statistique Demandes',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 12.0),
              GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  StatisticCard(
                    icon: Icons.email,
                    title: 'Demandes non lues',
                    value: '10',
                  ),
                  StatisticCard(
                    icon: Icons.email,
                    title: 'Demandes reçues',
                    value: '50',
                  ),
                ],
              ),
              SizedBox(height: 16.0),
            ],
          ),

          // Statistiques Argent
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Statistique Argent',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 12.0),
              GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  StatisticCard(
                    icon: Icons.attach_money,
                    title: 'Argent reçu',
                    value: '\$1000',
                  ),
                ],
              ),
              SizedBox(height: 16.0),
            ],
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.local_shipping),
              title: Text('Gérer les Camions'),
              onTap: () {
                // Mettez ici la logique de navigation pour gérer les camions
              },
            ),
            ListTile(
              leading: Icon(Icons.assignment),
              title: Text('Commandes'),
              onTap: () {
                // Mettez ici la logique de navigation pour gérer les commandes
              },
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profil'),
              onTap: () {
                // Mettez ici la logique de navigation pour gérer le profil
              },
            ),
          ],
        ),
      ),
    );
  }
}

class StatisticCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;

  StatisticCard({
    required this.icon,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(icon, size: 40.0, color:Color.fromARGB(255, 253, 184, 25) ,),
          SizedBox(height: 8.0),
          Text(
            title,
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 4.0),
          Text(
            value,
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 253, 184, 25),
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
              Navigator.pushNamed(context, '/ajout_camion');
            },
          ),
          ListTile(
            leading: Icon(Icons.pending),
            title: Text(
              'Nouvelles demandes',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/new_demande');
            },
          ),
          ListTile(
            leading: Icon(Icons.history),
            title: Text(
              'Historique demandes acceptées',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/demande_accepte');
            },
          ),
          ListTile(
            leading: Icon(Icons.cancel),
            title: Text(
              'Historique demandes refusées',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/demande_refuse');
            },
          ),
          ListTile(
            leading: Icon(Icons.calendar_today),
            title: Text(
              'Bilan journalier',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/bilan_journalier');
            },
          ),
          ListTile(
            leading: Icon(Icons.calendar_today),
            title: Text(
              'Bilan annuel',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/annualSummary');
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text(
              'Paramètres',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/settings');
            },
          ),
        ],
      ),
    );
  }
}
