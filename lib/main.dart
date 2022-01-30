import 'package:dining_management/sign_in.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyCIUm_WZX-43MtfAcVi89V1LlP_cRWsITQ",
      authDomain: "dining-management-bf207.firebaseapp.com",
      projectId: "dining-management-bf207",
      storageBucket: "dining-management-bf207.appspot.com",
      messagingSenderId: "1049004686678",
      appId: "1:1049004686678:web:013de41c674f649df3eaf7",
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SignInScreen());
  }
}
