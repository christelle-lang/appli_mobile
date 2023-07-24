// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Login',
//       color: Color.fromARGB(255, 253, 184, 25),
//       theme: ThemeData(
//         fontFamily: 'Roboto',
//       ),
//       home: LoginPage(),
//     );
//   }
// }

// class LoginPage extends StatefulWidget {
//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   final TextEditingController _phoneController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();

//   bool _isPhoneFocused = false;
//   bool _isPasswordFocused = false;
  
//   void _login() {
//     // TODO: Perform login logic here
//     String phoneNumber = _phoneController.text;
//     String password = _passwordController.text;
//     // Perform authentication or any other necessary operations
//     print('Logging in with phone: $phoneNumber, password: $password');
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(5.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             FractionallySizedBox(
//               widthFactor: 0.6,
//               child: Image.asset(
//                 'assets/login.png',
//               ),
//             ),
//             SizedBox(height: 8),
//           Text(
//       'Connexion',
//     style: TextStyle(
//     fontSize: 24,
//     fontWeight: FontWeight.bold,
//   ),
//   textAlign: TextAlign.left,
// ),
//  SizedBox(height: 5),
//             TextFormField(
//   controller: _phoneController,
//   keyboardType: TextInputType.phone,
//   decoration: InputDecoration(
//     labelText: 'Phone Number',
//     prefixIcon: Icon(
//       Icons.phone,
//       color: _isPhoneFocused ? Color.fromARGB(255, 253, 184, 25): Colors.grey,
//     ),
//     focusedBorder: UnderlineInputBorder(
//       borderSide: BorderSide(color: Colors.grey),
//     ),
//     enabledBorder: UnderlineInputBorder(
//       borderSide: BorderSide(color: Colors.grey),
//     ),
//     labelStyle: TextStyle(
//       color: _isPhoneFocused ? Color.fromARGB(255, 253, 184, 25) : Colors.grey,
//     ),
//   ),
//   onTap: () {
//     setState(() {
//       _isPhoneFocused = true;
//       _isPasswordFocused = false;
//     });
//   },
// ),


//             SizedBox(height: 8),
//            TextFormField(
//   controller: _passwordController,
//   obscureText: true,
//   decoration: InputDecoration(
//     labelText: 'Password',
//     prefixIcon: Icon(
//       Icons.lock,
//       color: _isPasswordFocused ? Color.fromARGB(255, 253, 184, 25): Colors.grey,
//     ),
//     focusedBorder: UnderlineInputBorder(
//       borderSide: BorderSide(color: Colors.grey),
//     ),
//     enabledBorder: UnderlineInputBorder(
//       borderSide: BorderSide(color: Colors.grey),
//     ),
//     labelStyle: TextStyle(
//       color: _isPasswordFocused ? Color.fromARGB(255, 253, 184, 25) : Colors.grey
//     ),
//   ),
    
//   onTap: () {
//     setState(() {
//       _isPhoneFocused = false;
//       _isPasswordFocused = true;
//     });
//   },
// ),

           
//             SizedBox(height: 32),
//             ElevatedButton(
//               onPressed: _login,
//               child: Container(
//                 width: double.infinity,
//                 height: 50,
//                 alignment: Alignment.center,
//                 child: Text(
//                   'Login',
//                   style: TextStyle(fontSize: 18),
//                 ),
//               ),
//               style: ElevatedButton.styleFrom(
//                 primary: Color.fromARGB(255, 253, 184, 25),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//               ),
//             ),
//             TextButton(
//               onPressed: () {
//                 // TODO: Implement forgot password functionality
//               },
//               child: Row(
//   mainAxisAlignment: MainAxisAlignment.center,
//   children: [
//     Text(
//       'Forgot Password?',
//       style: TextStyle(color: Colors.black),
//     ),
//     SizedBox(width: 10),
//     Text(
//       "S'inscrire",
//       style: TextStyle(color: Color.fromARGB(255, 253, 184, 25)),
//     ),
//   ],
// ),

//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Inscription',
//       color:Color.fromARGB(255, 253, 184, 25), 
//       theme: ThemeData(
//         primaryColor: Color.fromARGB(255, 253, 184, 25),
//         colorScheme: ThemeData().colorScheme.copyWith(
//               secondary: Colors.orangeAccent,
//             ),
//       ),
//       home: RegistrationForm(),
//     );
//   }
// }

// class RegistrationForm extends StatefulWidget {
//   @override
//   _RegistrationFormState createState() => _RegistrationFormState();
// }

// enum RegistrationStep {
//   Step1,
//   Step2,
//   Step3,
// }

// class _RegistrationFormState extends State<RegistrationForm> {
//   final _formKey = GlobalKey<FormState>();
//   final _nameController = TextEditingController();
//   final _nameConducteurController = TextEditingController();
//   final _numPermisController = TextEditingController();
//   final _emailController = TextEditingController();
//   final _passwordController = TextEditingController();
//   final _villeController = TextEditingController();
//   final _phone1Controller = TextEditingController();
//   final _phone2Controller = TextEditingController();
//   final _detailCamionController = TextEditingController();
//   final _numImmController = TextEditingController();

//   String? _selectedTypeCamion;

//   List<String> _typeCamionOptions = [
//     'Camion 1',
//     'Camion 2',
//     'Camion 3',
//   ];

//   RegistrationStep _currentStep = RegistrationStep.Step1;

//   @override
//   void dispose() {
//     _nameController.dispose();
//     _nameConducteurController.dispose();
//     _emailController.dispose();
//     _passwordController.dispose();
//     _numPermisController.dispose();

//     _villeController.dispose();
//     _phone1Controller.dispose();
//     _phone2Controller.dispose();
//     _detailCamionController.dispose();
//     _numImmController.dispose();
//     super.dispose();
//   }

//   void _submitForm() {
//     if (_formKey.currentState!.validate()) {
//       switch (_currentStep) {
//         case RegistrationStep.Step1:
//           setState(() {
//             _currentStep = RegistrationStep.Step2;
//           });
//           break;
//         case RegistrationStep.Step2:
//           setState(() {
//             _currentStep = RegistrationStep.Step3;
//           });
//           break;
//         case RegistrationStep.Step3:
//           // Les données du formulaire sont valides et les étapes sont terminées.
//           // Vous pouvez envoyer les données à votre backend ou les traiter comme vous le souhaitez.

//           // Réinitialiser le formulaire
//           _formKey.currentState!.reset();

//           // Revenir à l'étape 1 pour une nouvelle inscription
//           setState(() {
//             _currentStep = RegistrationStep.Step1;
//           });
//           break;
//       }
//     }
//   }

//   void _goToPreviousStep() {
//     switch (_currentStep) {
//       case RegistrationStep.Step1:
//         // Ne rien faire, c'est la première étape
//         break;
//       case RegistrationStep.Step2:
//         setState(() {
//           _currentStep = RegistrationStep.Step1;
//         });
//         break;
//       case RegistrationStep.Step3:
//         setState(() {
//           _currentStep = RegistrationStep.Step2;
//         });
//         break;
//     }
//   }

//   String _getStepTitle() {
//     switch (_currentStep) {
//       case RegistrationStep.Step1:
//         return 'Étape 1';
//       case RegistrationStep.Step2:
//         return 'Étape 2';
//       case RegistrationStep.Step3:
//         return 'Étape 3';
//     }
//   }

//   Widget _buildStepForm() {
//     switch (_currentStep) {
//       case RegistrationStep.Step1:
//         return Column(
//           children: [
//             Text(
//               'Informations propriétaire',
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             TextFormField(
//               controller: _nameController,
//               decoration: InputDecoration(labelText: 'Nom'),
//               validator: (value) {
//                 if (value!.isEmpty) {
//                   return 'Veuillez entrer votre nom';
//                 }
//                 return null;
//               },
//             ),
//             TextFormField(
//               controller: _emailController,
//               decoration: InputDecoration(labelText: 'Email'),
//               validator: (value) {
//                 if (value!.isEmpty) {
//                   return 'Veuillez entrer votre email';
//                 }
//                 return null;
//               },
//             ),
//             TextFormField(
//               controller: _villeController,
//               decoration: InputDecoration(labelText: 'Ville'),
//               validator: (value) {
//                 if (value!.isEmpty) {
//                   return 'Veuillez entrer votre ville';
//                 }
//                 return null;
//               },
//             ),
//             TextFormField(
//               controller: _phone1Controller,
//               decoration: InputDecoration(labelText: 'Téléphone 1'),
//               validator: (value) {
//                 if (value!.isEmpty) {
//                   return 'Veuillez entrer votre téléphone 1';
//                 }
//                 return null;
//               },
//             ),
//             TextFormField(
//               controller: _phone2Controller,
//               decoration: InputDecoration(labelText: 'Téléphone 2'),
//               validator: (value) {
//                 // Vous pouvez supprimer la vérification si la valeur est vide
//                 return null;
//               },
//             ),
//             TextFormField(
//               controller: _passwordController,
//               decoration: InputDecoration(labelText: 'Mot de passe'),
//               obscureText: true,
//               validator: (value) {
//                 if (value!.isEmpty) {
//                   return 'Veuillez entrer votre mot de passe';
//                 }
//                 return null;
//               },
//             ),
//           ],
//         );
//       case RegistrationStep.Step2:
//         return Column(
//           children: [
//             Text(
//               'Informations camion',
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             DropdownButtonFormField<String>(
//               value: _selectedTypeCamion,
//               onChanged: (newValue) {
//                 setState(() {
//                   _selectedTypeCamion = newValue;
//                 });
//               },
//               items: _typeCamionOptions.map((type) {
//                 return DropdownMenuItem<String>(
//                   value: type,
//                   child: Text(type),
//                 );
//               }).toList(),
//               decoration: InputDecoration(labelText: 'Type de camion'),
//               validator: (value) {
//                 if (value == null) {
//                   return 'Veuillez sélectionner un type de camion';
//                 }
//                 return null;
//               },
//             ),
//             TextFormField(
//               controller: _detailCamionController,
//               decoration: InputDecoration(labelText: 'Détail du camion'),
//               validator: (value) {
//                 return null;
//               },
//             ),
//             TextFormField(
//               controller: _numImmController,
//               decoration: InputDecoration(labelText: 'Numéro d\'immatriculation'),
//               validator: (value) {
//                 if (value!.isEmpty) {
//                   return 'Veuillez entrer un numéro d\'immatriculation';
//                 }
//                 return null;
//               },
//             ),
//           ],
//         );

//       case RegistrationStep.Step3:
//         return Column(
//           children: [
//             Text(
//               'Informations conducteur',
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             TextFormField(
//               controller: _nameConducteurController,
//               decoration: InputDecoration(labelText: 'Nom'),
//               validator: (value) {
//                 if (value!.isEmpty) {
//                   return 'Veuillez entrer votre nom';
//                 }
//                 return null;
//               },
//             ),
//             TextFormField(
//               controller: _numPermisController,
//               decoration: InputDecoration(labelText: 'Numéro de permis'),
//               validator: (value) {
//                 if (value!.isEmpty) {
//                   return 'Veuillez entrer un numéro de permis ';
//                 }
//                 return null;
//               },
//             ),
//           ],
//         );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Inscription'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: SingleChildScrollView( // Wrap the content with SingleChildScrollView
//           child: Column(
//             children: [
//               Text(
//                 _getStepTitle(),
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//               ),
//               SizedBox(height: 16),
//               Form(
//                 key: _formKey,
//                 child: _buildStepForm(),
//               ),
//               SizedBox(height: 16),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   if (_currentStep != RegistrationStep.Step1)
//                     ElevatedButton(
//                       onPressed: _goToPreviousStep,
//                       child: Text('Précédent'),
//                     ),
//                   ElevatedButton(
//                     onPressed: _submitForm,
//                     child: Text(
//                       _currentStep == RegistrationStep.Step3 ? 'Terminer' : 'Suivant',
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:projet_mobile/accueil.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign Up',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignUpScreen(),
         initialRoute: '/',
      routes: {
        '/DashboardApp': (context) => DashboardApp(),
       
      },
    );
  }
}
   

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isWelcomeVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              color: Colors.transparent,
              padding: EdgeInsets.only(bottom: 180),
              child: AnimatedOpacity(
                opacity: isWelcomeVisible ? 1.0 : 0.0,
                duration: Duration(milliseconds: 200),
                child: IgnorePointer(
                  ignoring: !isWelcomeVisible,
                  child: Text(
                    'Bienvenue sur OCL Routier',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 100,
            right: -50,
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.black,
              ),
            ),
          ),
          Positioned(
            top: 100,
            left: -50,
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.black,
              ),
            ),
          ),
          Positioned(
            top: -50,
            left: -50,
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Color.fromARGB(255, 253, 184, 25),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(100),
                  topRight: Radius.circular(100),
                ),
                color: Color.fromARGB(255, 253, 184, 25),
              ),
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Inscription',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Numéro de téléphone',
                        prefixIcon: Icon(Icons.phone, color: Colors.black),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                      ),
                      onTap: () {
                        setState(() {
                          isWelcomeVisible = true;
                        });
                      },
                    ),
                    SizedBox(height: 10),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        prefixIcon: Icon(Icons.lock, color: Colors.black),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                      ),
                      onTap: () {
                        setState(() {
                          isWelcomeVisible = true;
                        });
                      },
                    ),
                   
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/DashboardApp');
                
                      },
                      child: Text("S'inscrire"),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        backgroundColor: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


