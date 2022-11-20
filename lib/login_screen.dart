import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class LoginScreen extends StatefulWidget {
  static const String routes = 'LoginScreen';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController fullname = TextEditingController();
  final TextEditingController password = TextEditingController();
  String yourname = '';
  String yourpass = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 14),
              child: Text("Let's sign you in.",
                  style: GoogleFonts.openSans(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 10),
              child: Text("Welcome back.",
                  style: GoogleFonts.openSans(
                    color: Colors.white70,
                    fontSize: 36,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text("You've been missed!",
                  style: GoogleFonts.openSans(
                    color: Colors.white70,
                    fontSize: 36,
                  )),
            ),
            Form(
              key: formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20,top: 50),
                    child: Container(
                      width: 340,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 18),
                        child: TextFormField(
                          controller: fullname,
                         decoration: InputDecoration(
                           border: InputBorder.none,
                           hintText: 'Username or Email',
                         ),
                          style: GoogleFonts.assistant(),
                         ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,top: 20),
                    child: Container(
                      width: 340,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 18),
                        child: TextFormField(
                          obscureText: true,
                          controller: password,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Password',
                          ),
                          style: GoogleFonts.assistant(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Text('Dont have any Account? Register',
                  style: TextStyle(
                    color: Colors.white,
                  ),),
              ),
            ),
            Center(
              child: Container(
                height: 55,
                width: 180,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      yourname = fullname.text;
                      yourpass = password.text;
                    });
                  },
                  child: Text('Sign In',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      )),),
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.only(top: 50),
                height: MediaQuery.of(context).size.height*0.2,
                width: MediaQuery.of(context).size.width*0.9,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Text('Username : $yourname',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text('Password : $yourpass',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        )),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
