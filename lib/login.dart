import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xFF4D668B),
        body: Form(
          key: _formKey,
          child: Center(
            child: Container(
              constraints: BoxConstraints(maxWidth: 400),
              padding: EdgeInsets.all(48),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Login",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: userNameController,
                    decoration: InputDecoration(
                      hintText: "Username",
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Color(0xFFD9D9D9),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Password",
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Color(0xFFD9D9D9),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          // Nanti ditambahkan
                        },
                        child: Text(
                          "Forgot password?",
                          style: TextStyle(color: Color(0xFF4D668B)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    child: Text("Login"),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account?"),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/signup');
                        },
                        child: Text(
                          "Signup",
                          style: TextStyle(color: Color(0xFFD9D9D9)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
