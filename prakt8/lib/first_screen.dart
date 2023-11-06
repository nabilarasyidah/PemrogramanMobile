import 'package:flutter/material.dart';
import 'package:prakt8/login_page.dart';
import 'package:prakt8/sign_in.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Color.fromARGB(255, 187, 227, 251), Color.fromARGB(255, 67, 166, 247)],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: NetworkImage(
                  imageUrl,
                ),
                radius: 60,
                backgroundColor: Colors.transparent,
              ),
              SizedBox(height: 40),
              const Text(
                'NAME',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
                  ),
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 25,
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  const Text(
                    'EMAIL',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                  ),
                  Text(
                    email,
                    style: const TextStyle(
                      fontSize: 25,
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 40),
                      ElevatedButton(
                        onPressed: () {
                          signOutGoogle();

Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)
{return LoginPage();}), ModalRoute.withName('/'));
              },
              Color:Colors.deepPurple
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Sign Out',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                  ),
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
                )
              ],
            ),
          ),
        ),
      );
  }
}