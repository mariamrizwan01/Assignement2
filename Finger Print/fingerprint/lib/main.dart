import 'package:fingerprint/pagetwo.dart';
import 'package:fingerprint/utils/authentication.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AuthenticationPage(),
    );
  }
}

class AuthenticationPage extends StatefulWidget {
  const AuthenticationPage({super.key});

  @override
  State<AuthenticationPage> createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF192359),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Log In",
              style: TextStyle(
                color: Colors.white,
                fontSize: 48,
                fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(height: 28),
            Text(
              "use your fingerprint to log into the app!",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(height: 28),
            Divider(
              color: Colors.white60,
            ),
            SizedBox(height: 28),
            ElevatedButton.icon(
              onPressed: () async {
                bool auth = await Authentication.authentication();
                print("can authenticate: $auth");
                if (auth) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SecondPage()));
                }

                //now let's test our app
              },
              icon: Icon(Icons.fingerprint),
              label: Text("Authenticate"),
            )
          ],
        ),
      )),
    );
  }
}