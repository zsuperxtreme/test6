import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'view.dart';
import 'viewModel.dart';

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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MVVM Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

