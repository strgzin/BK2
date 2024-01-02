import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
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
              padding: EdgeInsets.symmetric(horizontal: 48, vertical: 48),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Sign up",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  _buildUserName(context),
                  SizedBox(height: 21),
                  _buildPassword(context),
                  SizedBox(height: 20),
                  _buildConfirmPassword(context),
                  SizedBox(height: 17),
                  _buildSignupButton(context),
                  SizedBox(height: 18),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Already have an account?",
                            style: TextStyle(color: Color(0xFF282828)),
                          ),
                          TextSpan(
                            text: " Login",
                            style: TextStyle(color: Color(0xFFD9D9D9)),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(height: 5),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildUserName(BuildContext context) {
    return TextFormField(
      controller: userNameController,
      decoration: InputDecoration(
        hintText: "Username",
        border: OutlineInputBorder(),
        filled: true,
        fillColor: Color(0xFFD9D9D9),
        
      ),
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Username is required';
        }
        return null;
      },
    );
  }

  Widget _buildPassword(BuildContext context) {
    return TextFormField(
      controller: passwordController,
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Create password",
        border: OutlineInputBorder(),
        filled: true,
        fillColor: Color(0xFFD9D9D9),
      ),
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Password is required';
        }
        return null;
      },
    );
  }

  Widget _buildConfirmPassword(BuildContext context) {
    return TextFormField(
      controller: confirmPasswordController,
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Confirm password",
        border: OutlineInputBorder(),
        filled: true,
        fillColor: Color(0xFFD9D9D9),
      ),
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Confirmation password is required';
        }
        if (value != passwordController.text) {
          return 'Passwords do not match';
        }
        return null;
      },
    );
  }

  Widget _buildSignupButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          // Nanti ditambahkan
          // Database beloommmm
        }
      },
      child: Text("Signup"),
    );
  }
}
