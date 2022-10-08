import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class International extends StatelessWidget {
  const International({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text('International'),
        backgroundColor: Colors.red.shade500,
      ),
      body: ListView(
        children: [
          Image.asset(
            'images/international.jpg',
            fit: BoxFit.cover,
            height: 250.0,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
            color: Colors.white,
            child: const ListTile(
              title: Text(
                'International',
                style: TextStyle(fontSize: 30.0),
                textAlign: TextAlign.center,
              ),
              subtitle: Text('Graphic Era Hill University has signed'
                  ' MoU with reputed International Universities that'
                  ' helps to prepare young students for life and active'
                  ' participation in a global multicultural society,by '
                  'developing knowledge and understanding the historical,'
                  ' geographic, cultural and relationships among world regions'
                  '. The perspective is imperative to develop the skills, '
                  'knowledge, and attitudes needed for responsible participation'
                  ' in a democratic society and in a global community in the '
                  'twenty-first century.'),
            ),
          ),
          const SizedBox(height: 100.0),
        ],
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
