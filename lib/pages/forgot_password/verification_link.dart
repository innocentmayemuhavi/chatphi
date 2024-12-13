import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VerificationLink extends StatefulWidget {
  const VerificationLink({super.key});

  @override
  State<VerificationLink> createState() => _VerificationLinkState();
}

class _VerificationLinkState extends State<VerificationLink> {
  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;

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
          Image.asset(
            "assets/images/Email.png",
            height: 50,
          ),
          SizedBox(height: 50),
          Text("Verification Link",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              )),
          SizedBox(height: 50),
          Text(
            'Please check your inbox for verifiation link sent to',
            style: TextStyle(),
            textAlign: TextAlign.center,
          ),
          Text(
            args?['email'],
            style: TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("not in inbox or spam folder?"),
              TextButton(
                onPressed: () {},
                child: const Text("Resend",
                    style: TextStyle(color: Color(0xFF004AAD))),
              )
            ],
          ),
          SizedBox(height: 15),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 13),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: () {
              Navigator.pushNamed(context, "/login");
            },
            child:
                Text("Back to Sign In", style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
