import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';

class TheModel {

  int counter = 0;
  void initFirestore() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }

  Future<void> fetchData() async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    DocumentSnapshot snapshot = await firestore.collection('research').doc("manuscript").get();
    var fieldValue = snapshot.get("abstract"); 
    debugPrint(fieldValue);
  }

  void incrementCounter() {
    counter++;
    debugPrint("Hi hi hi");
    fetchData();
  }
}