import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  return runApp(ContactPage());
}

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Contact Us",
          ),
        ),
        backgroundColor: Colors.red.shade500,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'images/contact.jpeg',
            ),
            Container(
              width: 400,
              height: 300,
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  const SizedBox(
                    width: 30,
                    height: 30.0,
                  ),
                  const Center(
                    child: Text(
                      "Contact Us",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const Divider(
                    color: Colors.grey,
                    indent: 20,
                    endIndent: 20,
                  ),
                  SingleChildScrollView(
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 280,
                            height: 150,
                            child: const Text(
                                "Call (Operational 9AM-6PM): 18008906027, 18002701280, 7500013334\nWhatsApp: +917617770113\nFor Alumni related queries/ document requests, please write to alumni@gehu.ac.in\nFor Educational Verification of Alumni (through Third Party Agencies), please write to alumni@gehu.ac.in "),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      persistentFooterButtons: [
        Container(
          color: Colors.red,
          height: 80.0,
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.facebook,
                    size: 30.0,
                    color: Colors.white,
                  ),
                  FaIcon(
                    FontAwesomeIcons.twitter,
                    size: 30.0,
                    color: Colors.white,
                  ),
                  FaIcon(
                    FontAwesomeIcons.youtube,
                    size: 30.0,
                    color: Colors.white,
                  ),
                  FaIcon(
                    FontAwesomeIcons.linkedin,
                    size: 30.0,
                    color: Colors.white,
                  ),
                  FaIcon(
                    FontAwesomeIcons.instagram,
                    size: 30.0,
                    color: Colors.white,
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              const Text(
                'Graphic Era Hill University © 2022',
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ],
    );
  }
}
