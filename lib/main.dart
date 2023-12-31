import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

//Screens 
import 'package:crud_firebase/screens/add_name_screen.dart';
import 'package:crud_firebase/screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Material App',
      initialRoute: '/',
      routes: {
        '/':(context) => const Home(),
        '/add':(context) => const AddNameScreen(),
      },
    );
  }
}

