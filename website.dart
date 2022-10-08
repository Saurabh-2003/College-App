import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(WebsitePage());
}

class WebsitePage extends StatelessWidget {
  @override
  String _buttonText = "Click Here";
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text(
          "Website",
        ),
        backgroundColor: Colors.red.shade500,
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Image.asset("images/website.jpeg"),
              Center(
                child: Container(
                  width: 350,
                  height: 600,
                  color: Colors.white,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          width: 10,
                          height: 20,
                        ),
                        Container(
                          width: 280,
                          height: 500,
                          child: Column(
                            children: [
                              Container(
                                height: 150,
                                child: Center(
                                  child: Image.asset('images/ad.jpeg'),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Center(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 280,
                                      height: 200,
                                      child: Text(
                                          "The Graphic Era Educational Society, established in 1993, is a non-profit organization that aims to mobilize world class education and generate resources for providing and supporting quality education for all. The society recognizes the right of every individual to lead a life of dignity and self-respect in a just and equitable manner"),
                                    )
                                  ],
                                ),
                              ),
                              const Text(
                                "Please visit the official site of Graphic Era hill University. ",
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              TextButton(
                                child: Text(
                                  _buttonText,
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                onPressed: () async {
                                  const url = 'https://www.gehu.ac.in/';
                                  final Uri _url = Uri.parse(url);

                                  await launchUrl(_url,
                                      mode: LaunchMode.externalApplication);
                                },
                                style: TextButton.styleFrom(
                                  primary: Colors.white,
                                  backgroundColor: Colors.red,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      persistentFooterButtons: [
        Container(
          color: Colors.red,
          width: MediaQuery.of(context).size.width,
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
              const SizedBox(height: 10.0),
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
