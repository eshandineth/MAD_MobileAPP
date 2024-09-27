import 'package:flutter/material.dart';
import 'login.dart';

class Register extends StatelessWidget {
  static const String id = 'Register';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background2.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color: Colors.black54,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Create Account',
                      style: TextStyle(
                        fontSize: 36,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Register to get started',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 30.0),
                    _buildTextField('Username'),
                    const SizedBox(height: 10.0),
                    _buildTextField('Email'),
                    const SizedBox(height: 10.0),
                    _buildTextField('Password', obscureText: true),
                    const SizedBox(height: 20.0),
                    _buildRegisterButton(context),
                    const SizedBox(height: 10.0),
                    _buildLoginButton(context),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextField(String hintText, {bool obscureText = false}) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        hintStyle: TextStyle(color: Colors.grey[600]),
      ),
    );
  }

  Widget _buildRegisterButton(BuildContext context) {
    return MaterialButton(
      color: Colors.greenAccent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      padding: EdgeInsets.symmetric(vertical: 15),
      minWidth: double.infinity,
      child: const Text(
        'Register',
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
      onPressed: () {
        Navigator.pushNamed(context, Login.id);
      },
    );
  }

  Widget _buildLoginButton(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.pushNamed(context, Login.id);
      },
      child: const Text(
        'Already have an account? Login',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
