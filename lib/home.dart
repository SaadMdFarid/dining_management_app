import 'package:dining_management/sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: Column(
          children: [
            InkWell(
              onTap: () {
                FirebaseAuth.instance.signOut().then((value) {
                  print("signed out successfully");
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignInScreen(),
                    ),
                  );
                }).onError((error, stackTrace) {
                  print("error : ${error.toString()}");
                });
              },
              child: ListTile(
                leading: Icon(Icons.logout),
                title: Text("Sign Out"),
                trailing: Icon(Icons.arrow_forward),
              ),
            )
          ],
        ),
      ),
    );
  }
}
