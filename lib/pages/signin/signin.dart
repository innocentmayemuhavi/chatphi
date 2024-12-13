import 'package:flutter/material.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  bool _showPassword = false;
  String _email = "";
  String _password = "";
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
      children: [
        SizedBox(height: 50),
        Image.asset(
          "assets/images/image (1).png",
          height: 50,
        ),
        SizedBox(height: 50),
        Text("Sign In",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26,
            )),
        SizedBox(height: 50),
        Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                onChanged: (value) {
                  setState(() {
                    _email = value;
                  });
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter your email";
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  labelText: "Email",
                  hintText: "Enter your email",
                  filled: true,
                  fillColor: Color(0xFFF8F8F8),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                onChanged: (value) {
                  setState(() {
                    _password = value;
                  });
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter your password";
                  }
                  return null;
                },
                obscureText: !_showPassword,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                  labelText: "Password",
                  hintText: "Enter your password",
                  filled: true,
                  fillColor: Color(0xFFF8F8F8),
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _showPassword = !_showPassword;
                      });
                    },
                    icon: Icon(_showPassword
                        ? Icons.visibility
                        : Icons.visibility_off),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, "/forgot_password");
              },
              child: Text(
                "Forgot Password?",
                style: TextStyle(color: Color(0xFF004AAD)),
              ),
            )
          ],
        ),
        SizedBox(height: 10),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 13),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: _email.isEmpty || _password.isEmpty
              ? null
              : () {
                  if (_formKey.currentState!.validate()) {}
                },
          child: const Text(
            "Sign in",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("New User?"),
            TextButton(
              onPressed: () {},
              child: const Text("Create an account",
                  style: TextStyle(color: Color(0xFF004AAD))),
            )
          ],
        )
      ],
    ));
  }
}
