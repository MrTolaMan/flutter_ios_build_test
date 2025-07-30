import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:psalm_91/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const Psalm91App());
}

class Psalm91App extends StatelessWidget {
  const Psalm91App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Evans Detailing',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: const Scaffold(body: Center(child: Text("Welcome to Psalm_91"))),
    );
  }
}
