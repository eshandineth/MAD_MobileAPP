import 'package:flutter/material.dart';
import 'register.dart';
import 'home.dart';

class Login extends StatelessWidget {
  static const String id = 'Login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.jpg'),
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
                      'Welcome Back',
                      style: TextStyle(
                        fontSize: 36,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Login to continue',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 30.0),
                    _buildTextField('Username'),
                    const SizedBox(height: 10.0),
                    _buildTextField('Password', obscureText: true),
                    const SizedBox(height: 20.0),
                    _buildLoginButton(context),
                    const SizedBox(height: 10.0),
                    _buildRegisterButton(context),
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

  Widget _buildLoginButton(BuildContext context) {
    return MaterialButton(
      color: Colors.blueAccent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      padding: EdgeInsets.symmetric(vertical: 15),
      minWidth: double.infinity,
      child: const Text(
        'Login',
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
      onPressed: () {
        Navigator.pushNamed(context, Home.id);
      },
    );
  }

  Widget _buildRegisterButton(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.pushNamed(context, Register.id);
      },
      child: const Text(
        'Don’t have an account? Register',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
