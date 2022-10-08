import 'package:flutter/material.dart';
import 'package:practice/services/gallary.dart';
import '/services/contact.dart';
import '/services/website.dart';
import '/services/admission.dart';
import '/services/about.dart';
import '/services/course.dart';
import '/services/international.dart';
import 'profile.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Graphic Era Hill University',
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
    Color color = Colors.red.shade900;

    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Graphic Era Hill University',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Clement Town , Dehradun , Uttarakhand',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
    Column _buildButtonColumn(Color color, IconData icon, String label) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
    }

    Container _buildView() {
      return Container(
        child: Column(
          children: [
            Container(
                width: 450,
                height: 250,
                child: Center(
                  child: Image.asset('images/mission.jpeg'),
                )),
            const Text(
              "Our Mission",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              width: 10,
              height: 20,
            ),
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 320,
                    height: 160,
                    child: const Text(
                      "The mission of Graphic Era Hill University is to promote learning in the true spirit."
                      "The University offers the knowledge and skills needed to succeed as professionals ,"
                      "and the values and sensitivity needed to be responsible citizens of the world.",
                      style: TextStyle(fontSize: 15.0),
                    ),
                  )
                ],
              ),
            ),
            Container(
                width: 450,
                height: 250,
                child: Center(
                  child: Image.asset('images/vision.jpeg'),
                )),
            const Text(
              "Our Vision",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              width: 10,
              height: 20,
            ),
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 320,
                    height: 300,
                    child: const Text(
                      "We visualize Graphic Era Hill University as an internationally"
                      "recognised , inquiry-driven , ethically engaged university"
                      "withs a diverse community , whose members work collaboratively"
                      "for the positive transformation of the world by pioneering"
                      "teaching ,research and social awareness.",
                      style: TextStyle(fontSize: 15.0),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.email, 'EMAIL'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );
    Widget textSection = const Padding(
      padding: EdgeInsets.all(40),
      child: Text(
        "Established vide Act No 12 of 2011 of Uttarakhand "
        "State LegislatureUniversity under Section 2(f) of the UGC Act,"
        " 1956 set up under the aegis of Graphic Era Educational Society,"
        " Dehradun. Founded in 2011 Graphic Era Hill University is today "
        "widely known for its innovative and rigorous education which has "
        "nurtured professionals across industries and sectors in India and "
        "beyond. Graphic Era Hill University has adopted a global approach "
        "to education and research with focus on International perspectives "
        "and expertise. University has abiding commitment to excellence and "
        "pursues this relentlessly settling for nothing, but the best. Its "
        "faculty is the bedrock of the University and composed of academic "
        "luminaries across India and abroad. GEHU is on the cutting edge of "
        "using state-of-the art equipment and preparing students for globalized"
        " economy and at the same time promoting holistic learning, unbiased "
        "knowledge ,industry centric skills, ethics, a cosmopolitan outlook "
        "and accountability for actions. ",
        softWrap: true,
        style: TextStyle(
          fontSize: 15.0,
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Graphic Era Hill University'),
      ),
      drawer: SafeArea(
        child: Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(color: Colors.white),
                height: 200.0,
                child: SizedBox(
                  width: double.infinity,
                  child: DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.red.shade900,
                      shape: BoxShape.rectangle,
                      image: const DecorationImage(
                        image: AssetImage(
                          'images/l.png',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Text(''),
                  ),
                ),
              ),
              TextButton(
                child: const ListTile(
                  leading: Icon(
                    FontAwesomeIcons.buildingColumns,
                    size: 35.0,
                    color: Colors.red,
                  ),
                  title: Text(
                    'Admission',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.red,
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Admission()),
                  );
                },
              ),
              TextButton(
                child: const ListTile(
                  leading: Icon(
                    FontAwesomeIcons.circleInfo,
                    size: 35.0,
                    color: Colors.red,
                  ),
                  title: Text(
                    'About',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.red,
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => About()),
                  );
                },
              ),
              TextButton(
                child: const ListTile(
                  leading: Icon(
                    FontAwesomeIcons.graduationCap,
                    size: 35.0,
                    color: Colors.red,
                  ),
                  title: Text(
                    'Academics',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.red,
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Course()),
                  );
                },
              ),
              TextButton(
                child: const ListTile(
                  leading: Icon(
                    Icons.contact_page,
                    size: 35.0,
                    color: Colors.red,
                  ),
                  title: Text(
                    'Contact Us',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.red,
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ContactPage()),
                  );
                },
              ),
              TextButton(
                child: const ListTile(
                  leading: Icon(
                    Icons.open_in_browser,
                    size: 35.0,
                    color: Colors.red,
                  ),
                  title: Text(
                    'Website',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.red,
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WebsitePage()),
                  );
                },
              ),
              TextButton(
                child: const ListTile(
                  leading: Icon(
                    FontAwesomeIcons.networkWired,
                    size: 35.0,
                    color: Colors.red,
                  ),
                  title: Text(
                    'International',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.red,
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => International()),
                  );
                },
              ),
              TextButton(
                child: const ListTile(
                  leading: Icon(
                    Icons.collections,
                    size: 35.0,
                    color: Colors.red,
                  ),
                  title: Text(
                    'Gallery',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.red,
                    ),
                  ),
                ),
                onPressed: () {
                  final Images = [
                    'images/international.jpg',
                    'images/bhimtal.jpg',
                    'images/gehu.png'
                  ];
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => GalleryWidget(Images: Images)),
                  );
                },
              ),
              TextButton(
                child: const ListTile(
                  leading: Icon(
                    FontAwesomeIcons.laptopCode,
                    size: 35.0,
                    color: Colors.red,
                  ),
                  title: Text(
                    'Developer',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.red,
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfilePage()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 5.0,
          ),
          Container(
            color: Colors.white,
            margin: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
            child: Column(
              children: [
                Image.asset(
                  'images/gehu.png',
                  fit: BoxFit.cover,
                ),
                titleSection,
                buttonSection,
                textSection,
                _buildView(),
              ],
            ),
          ),
          SizedBox(height: 30.0),
          Container(
            margin: EdgeInsets.all(20),
            color: Colors.white,
            height: 250.0,
            width: double.infinity,
            child: Row(
              children: [
                Image.asset(
                  'images/sir.jpg',
                  fit: BoxFit.cover,
                  height: 150,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      'Prof. Kamal Ghanshala',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 220,
                      width: 200,
                      child: Text(
                        "The Founder of the Graphic Era"
                        " Group and the President of Graphic Era."
                        " He is an engineer with Bachelor's and Master's "
                        "degree in Computer Science and Engineering."
                        "He also holds a Ph.D. in Computer Science and Engineering."
                        " GEHU is a fructification of his cherished dream. He has "
                        "a rich teaching experience, and is, inarguably, one of "
                        "the leading experts in the teaching",
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            color: Colors.white,
            height: 250.0,
            width: double.infinity,
            child: Row(
              children: [
                Image.asset(
                  'images/pro.png',
                  fit: BoxFit.cover,
                  height: 150,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      'Prof.(Dr.) J. Kumar,',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 220,
                      width: 200,
                      child: Text(
                        "Prof. (Dr.) J. Kumar, was educated at G.B.Pant University"
                        " of Agriculture & Technology (GBPUA&T), Pantnagar, 1975-1983;"
                        " M.Sc.1977, Ph.D. 1983; and was Post-doctoral Fellow, International"
                        " Rice Research Institute, Philippines, 1993-1996. He was Visiting "
                        "Scientist at IRRI, Philippines, in 1997, 1998, 2001, 2002,"
                        " Cornell University, USA, in 1999 and 2000 and INRA, France, 2004",
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 40.0),
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
    );
  }
}
