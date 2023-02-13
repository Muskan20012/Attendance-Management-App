// ignore_for_file: prefer_const_constructors

import 'package:attendence/main.dart';
import 'package:flutter/material.dart';
import 'package:attendence/pages/home_screen.dart';
import 'package:attendence/components/button.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  Expanded back(int colour) {
    return Expanded(
      flex: 1,
      child: Container(
        decoration: BoxDecoration(color: Color(colour)),
      ),
    );
  }

  Text heading(String info) {
    return Text(
      info,
      style: GoogleFonts.patuaOne(
        textStyle: TextStyle(letterSpacing: 1, fontSize: 14),
      ),
    );
  }

  TextField data(String infotype, IconData icontype) {
    return TextField(
      decoration: InputDecoration(
        labelText: infotype,
        suffixIcon: Icon(icontype),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }

  SizedBox smallbutton(String name) {
    return SizedBox(
      height: 40,
      width: 45,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xfff6f6f6),
        ),
        child: Image.asset('./assets/$name.png'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                back(0xff6E3CBC),
                back(0xfffffef9),
              ],
            ),
            Center(
              child: Container(
                height: 650,
                width: 360,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black87.withOpacity(0.2),
                      blurRadius: 95.0,
                      offset: Offset(
                        1.0,
                        1.0,
                      ),
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(25.0),
                            child: Column(
                              children: [
                                Text(
                                  'Welcome ',
                                  style: GoogleFonts.notoSans(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20),
                                  ),
                                ),
                                Text(
                                  'Sign in',
                                  style: GoogleFonts.notoSans(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 40),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(.0),
                            child: Column(
                              children: [
                                Text(
                                  'No Account?',
                                  style: GoogleFonts.rubik(
                                    textStyle: TextStyle(color: Colors.grey),
                                  ),
                                ),
                                SecondaryButton(
                                  text: 'Sign Up',
                                  fun: (() => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: ((context) => Register()),
                                        ),
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      heading('Enter your email address'),
                      data('Email', Icons.email_outlined),
                      heading('Enter your Password'),
                      data('Password', Icons.lock),
                      Row(
                        children: [
                          SizedBox(
                            width: 220,
                          ),
                          SecondaryButton(
                              text: 'Forgot Password',
                              fun: (() => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) => Register())))))
                        ],
                      ),
                      SizedBox(
                        height: 40,
                        width: 350,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => (MyHomePage()))));
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff6E3CBC)),
                          child: Text('Sign in'),
                        ),
                      ),
                      Divider(
                        height: 10,
                        thickness: 1,
                        indent: 100,
                        endIndent: 100,
                        color: Colors.black87.withOpacity(0.5),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: 40,
                            width: 200,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white60,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Text(
                                    'Sign in with Google',
                                    style: TextStyle(color: Color(0xff6E3CBC)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);
  Expanded back(int colour) {
    return Expanded(
      flex: 1,
      child: Container(
        decoration: BoxDecoration(color: Color(colour)),
      ),
    );
  }

  Text heading(String info) {
    return Text(
      info,
      style: GoogleFonts.patuaOne(
        textStyle: TextStyle(letterSpacing: 1, fontSize: 14),
      ),
    );
  }

  TextField data(String infotype) {
    return TextField(
      decoration: InputDecoration(
        labelText: infotype,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    InkWell links(String linkname) {
      return InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Register(),
            ),
          );
        },
        child: Text(
          linkname,
          style: GoogleFonts.rubik(
            textStyle: TextStyle(
              color: Colors.orangeAccent,
            ),
          ),
        ),
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                back(0xff6E3CBC),
                back(0xfffffef9),
              ],
            ),
            Center(
              child: Container(
                height: 650,
                width: 539,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black87.withOpacity(0.2),
                      blurRadius: 95.0,
                      offset: Offset(
                        1.0,
                        1.0,
                      ),
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(25.0),
                            child: Column(
                              children: [
                                Text(
                                  'Welcome',
                                  style: GoogleFonts.notoSans(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20),
                                  ),
                                ),
                                Text(
                                  'Sign Up',
                                  style: GoogleFonts.notoSans(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 40),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Column(
                              children: [
                                Text(
                                  'Have an Account?',
                                  style: GoogleFonts.rubik(
                                    textStyle: TextStyle(color: Colors.grey),
                                  ),
                                ),
                                SecondaryButton(
                                  text: 'Sign In',
                                  fun: (() => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: ((context) => Login()),
                                        ),
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      heading('Enter your email address'),
                      data('Email'),
                      heading('Enter Username'),
                      data('Username'),
                      heading('Contact Number'),
                      data('Contact Number'),
                      heading('Enter your Password'),
                      data('Password'),
                      SizedBox(
                        height: 40,
                        width: 450,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => (MyHomePage()))));
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff6E3CBC)),
                          child: Text('Sign Up'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
