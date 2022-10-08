import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const Admission());
}

class Admission extends StatelessWidget {
  const Admission({Key? key}) : super(key: key);

  TextButton put({required IconData i, required String s}) {
    return TextButton(
      child: ListTile(
        leading: Icon(
          i,
          size: 50.0,
          color: Colors.white,
        ),
        title: Text(
          s,
          style: const TextStyle(
            fontSize: 25.0,
            color: Colors.white,
          ),
        ),
      ),
      onPressed: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    Container _scholarship() {
      return Container(
        color: Colors.grey.shade900,
        child: Row(
          children: [
            Image.asset(
              'images/scho.jpg',
              height: 200.0,
            ),
            Column(
              children: [
                const Text(
                  'Scholarships',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  'Graphic Era awards merit or \nacademic scholarships \n'
                  'to those studentswho do \n'
                  'exceptionally well in academic\nand educational frontiers.',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                  ),
                  onPressed: () {},
                  child: const Text('Read More'),
                )
              ],
            ),
          ],
        ),
      );
    }

    ElevatedButton _button({required String s}) {
      return ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(350, 50),
          maximumSize: const Size(400, 60),
          shadowColor: Colors.red,
          primary: Colors.red.shade500,
        ),
        child: Text(
          s,
          style: const TextStyle(
            fontSize: 25.0,
          ),
        ),
        onPressed: () {},
      );
    }

    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Column(
        children: <Widget>[
          _button(s: 'Dehradun Campus'),
          const SizedBox(
            height: 15.0,
          ),
          _button(s: 'Bhimtal Campus'),
          const SizedBox(
            height: 15.0,
          ),
          _button(s: 'Haldwani Campus'),
        ],
      ),
    );

    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Admissions'),
      ),
      body: ListView(
        children: [
          Image.asset(
            'images/admissions.jpg',
            height: 200,
            width: 200,
            fit: BoxFit.cover,
          ),
          Container(
            decoration: BoxDecoration(color: Colors.white),
            margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
            child: Column(
              children: [
                SizedBox(height: 20.0),
                Text(
                  'Campus for Admissions',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 26.0,
                    color: Colors.teal.shade900,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                titleSection,
              ],
            ),
          ),
          Container(
              height: 180, margin: EdgeInsets.all(20), child: _scholarship()),
        ],
      ),
      persistentFooterButtons: [
        Container(
          color: Colors.red,
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
