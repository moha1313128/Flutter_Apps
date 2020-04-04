import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/widgets.dart';

fireStoreCommonService() async {
  final FirebaseApp app = await FirebaseApp.configure(
    name: 'SocailApp',
    options: const FirebaseOptions(
      googleAppID: '1:91606821555:android:c6bfe00924a01808019ec6',
      gcmSenderID: '91606821555',
      apiKey: 'AAIzaSyASQH09OXgyf35fyMIFPzdtKJypv2aNjb4',
      projectID: 'socailapp-9d10a',
    ),
  );
  final Firestore firestore = Firestore(app: app);
  return firestore;
}
