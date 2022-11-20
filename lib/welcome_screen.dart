import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projek_ui/login_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static const String routes = 'WelcomeScreen';
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child : Center(
          child: Column(
            children: [
              Image.asset('images/icons1.png', scale: 1.5),
              Padding(
                padding: const EdgeInsets.only(top:10),
                child: Text(
                  "Enterprise team",
                  style: GoogleFonts.openSans(
                      color: Colors.white,
                      fontSize: 34,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  "collaboration.",
                  style: GoogleFonts.openSans(
                      color: Colors.white,
                      fontSize: 34,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text(
                  "Bring your skills, your tools,",
                  style: GoogleFonts.assistant(
                    color: Colors.white70,
                    fontSize: 16,
                  ),
                ),
              ),
              Text(
                "projects, and people. Including a new",
                style: GoogleFonts.assistant(
                  color: Colors.white70,
                  fontSize: 16,
                ),
              ),
              Text(
                "Mobile and Dekstop Application",
                style: GoogleFonts.assistant(
                  color: Colors.white70,
                  fontSize: 16,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 100),
                height: 55,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                      return const LoginScreen();
                    }));
                  },
                  child: Text('Get Started',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      )),),
              ),
            ],
          ),
        ),),
    );
  }
}

