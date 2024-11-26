// Import the firebase_core and cloud_firestore plugin

import 'package:flutter/material.dart';
import 'view.dart';
import 'viewModel.dart';
import 'package:provider/provider.dart';
void main() async {
    runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => TheViewModel()),
      ],
      child: const MyApp(),
    ),
  );
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

