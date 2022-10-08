import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const Course());
}

class Course extends StatelessWidget {
  const Course({Key? key}) : super(key: key);

  SizedBox _button({required String s}) {
    return SizedBox(
      width: double.infinity,
      height: 50.0,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.red,
        ),
        onPressed: () {},
        child: Text(s),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.red.shade500,
        title: const Text('Academics'),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Image.asset(
                  'images/acad.jpg',
                  width: 650,
                  height: 220,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 40.0),
                child: Column(
                  children: [
                    const ListTile(
                      title: Text(
                        'Academics',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      subtitle: Text(
                          'Graphic Era Hill University was also established '
                          'under the aegis of GEES on 28 April 2011 by an act '
                          'of the Uttarakhand State. Known as one of the premiere'
                          ' university of India, GEHU has gained recognition for '
                          'its ingenious educational practices and global approach '
                          'that has succeeded in nurturing an army of professionals'
                          'across industries and sectors in the nation and beyond. '
                          'Initially the university was set up in Dehradun and Bhimtal.'
                          ' But the vision to make world class education available and '
                          'accessible to youth across the state propelled the '
                          'establishment of another campus in Haldwani, within a mere decade.\n\n'
                          'The university offers wide range of multi disciplinary'
                          ' programs ranging from engineering, applied & life sciences,'
                          ' management, commerce, law, hospitality to animation, fashion'
                          ' designing, humanities journalism and mass communication in '
                          'tandem with the diverse interests and aspirations of youth. '
                          'The university offers scholarships and foreign internshisps '
                          'to meritorious students, organizes global exchange programs,'
                          ' seminars by eminent scholars and periodically signs research'
                          ' partnerships with other universities, government '
                          'and industries to broaden the mental horizons and provide '
                          'impetus to achievement of personal and professional goals of its students.'),
                    ),
                    const Divider(
                      color: Colors.red,
                      indent: 20,
                      endIndent: 20,
                    ),
                    const Text(
                      'Courses Available',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    _button(s: 'Engineering'),
                    const SizedBox(height: 10.0),
                    _button(s: 'Computer Application'),
                    const SizedBox(height: 10.0),
                    _button(s: 'Management'),
                    const SizedBox(height: 10.0),
                    _button(s: 'Commerce'),
                    const SizedBox(height: 10.0),
                    _button(s: 'Humanities And Social Sciences'),
                    const SizedBox(height: 10.0),
                    _button(s: 'Pharmacy'),
                    const SizedBox(height: 10.0),
                    _button(s: 'Design'),
                    const SizedBox(height: 10.0),
                    _button(s: 'Law'),
                    const SizedBox(height: 10.0),
                    _button(s: 'Media and Mass Communication'),
                    const SizedBox(height: 10.0),
                    _button(s: 'Agriculture'),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
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
          ),
        ],
      ),
    );
  }
}
