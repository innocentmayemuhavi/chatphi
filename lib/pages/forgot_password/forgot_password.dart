import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgotPassWord extends StatefulWidget {
  const ForgotPassWord({super.key});

  @override
  State<ForgotPassWord> createState() => _ForgotPassWordState();
}

class _ForgotPassWordState extends State<ForgotPassWord> {
  String _email = "";
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(Color(0xFF004AAD)),
          ),
          icon: Icon(
            CupertinoIcons.back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        children: [
          SizedBox(height: 50),
          Text("Forgot Password",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              )),
          Text(
              'Please enter your email or phone number to get reset password.'),
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
                      return "Please enter your email or phone number";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    labelText: "Email or Phone Number",
                    filled: true,
                    fillColor: Color(0xFFF8F8F8),
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 13),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: _email.isEmpty
                ? null
                : () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.pushNamed(context, "/verification_link",
                          arguments: {
                            "email": _email,
                          });
                    }
                  },
            child: Text(
              "Send Code",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
