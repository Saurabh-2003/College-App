import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const About());
}

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  final List<Item> _data = generateItems(1);

  final List<Item1> _data1 = generateItems1(1);

  final List<Item2> _data2 = generateItems2(1);

  Widget _buildListPanel() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _data[index].isExpanded = !isExpanded;
        });
      },
      children: _data.map<ExpansionPanel>((Item item) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(item.headerValue),
            );
          },
          body: ListTile(
            title: Text(item.expandedValue),
            onTap: () {},
          ),
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }

  Widget _buildListPanel0() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _data1[index].isExpanded = !isExpanded;
        });
      },
      children: _data1.map<ExpansionPanel>((Item1 item) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(item.headerValue),
            );
          },
          body: ListTile(
            title: Text(item.expandedValue),
            onTap: () {},
          ),
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }

  Widget _buildListPanel1() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _data2[index].isExpanded = !isExpanded;
        });
      },
      children: _data2.map<ExpansionPanel>((Item2 item) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(item.headerValue),
            );
          },
          body: ListTile(
            title: Text(item.expandedValue),
            onTap: () {},
          ),
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.red.shade500,
        title: const Text('About'),
      ),
      body: ListView(
        children: <Widget>[
          Image.asset(
            'images/bhimtal.jpg',
            fit: BoxFit.fill,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
            decoration: BoxDecoration(color: Colors.white),
            child: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    _buildListPanel(),
                    _buildListPanel0(),
                    _buildListPanel1(),
                    SizedBox(height: 30.0),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image(
                        image: AssetImage('images/cl.jpg'),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 30.0,
                      color: Colors.red,
                      child: const Text(
                        'CAMPUS LIFE',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Text(
                      'The beautifully designed Graphic Era Hill University '
                      'campus has stimulating aesthetics and is perpetually in motion,'
                      ' with plethora of activities taking place, there is never a dull '
                      'moment. We maintain an open and inclusive environment that '
                      'nurtures the growth and development of the student community.',
                      style: TextStyle(
                        fontFamily: 'SourceSansPro',
                      ),
                    ),
                    const SizedBox(height: 80.0),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image(
                        image: AssetImage('images/ss.jpg'),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 30.0,
                      color: Colors.red,
                      child: const Text(
                        'SUCCESS STORIES',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Text(
                      'The beautifully designed Graphic Era has stimulating'
                      ' aesthetics and is perpetually in motion, with plethora of '
                      'activities taking place, there is never a dull moment. We '
                      'maintain an open and inclusive environment that nurtures the '
                      'growth and development of the student community.',
                      style: TextStyle(
                        fontFamily: 'SourceSansPro',
                      ),
                    ),
                    const SizedBox(height: 80.0),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image(
                        image: AssetImage('images/wcf.jpg'),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 30.0,
                      color: Colors.red,
                      child: const Text(
                        'WORLD CLASS FACILITIES',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Text(
                      'Separate hostels are provided for girls and boys '
                      'at GEHU. Students are provided with adequate facilities to '
                      'make them feel at home. Their stay in the hostel enables '
                      'them to imbibe a different lifestyle and involve themselves'
                      ' in activities including yoga, meditation, sports, music etc.,'
                      ' suiting individuals taste and preferences.',
                      style: TextStyle(
                        fontFamily: 'SourceSansPro',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
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

class Item {
  String expandedValue;
  String headerValue;
  bool isExpanded;

  Item(
      {required this.expandedValue,
      required this.headerValue,
      this.isExpanded = false});
}

class Item1 {
  String expandedValue;
  String headerValue;
  bool isExpanded;

  Item1(
      {required this.expandedValue,
      required this.headerValue,
      this.isExpanded = false});
}

class Item2 {
  String expandedValue;
  String headerValue;
  bool isExpanded;

  Item2(
      {required this.expandedValue,
      required this.headerValue,
      this.isExpanded = false});
}

List<Item> generateItems(int n) {
  return List.generate(1, (index) {
    return Item(
      expandedValue: 'Graphic Era Hill University Dehradun campus is '
          'located in the cantonment area, along the Rajaji National Park '
          'against the panoramic view of Shivalik Hills. The University offers'
          ' perfect ambience for all academic pursuits, health growth and'
          ' widening of mental horizons. GEHU – Dehradun campus is fully '
          'equipped with state-of-the-art computer centres and labs, spacious'
          ' and temperature regulated class rooms, lecture theatres and '
          'seminar halls, accommodation and medical facilities and our very'
          ' own radio station. The Dehradun Campus of Graphic Era Hill '
          'University has been acclaimed and honored at various events '
          'of national and international prominence',
      headerValue: 'Dehradun Campus',
    );
  });
}

List<Item1> generateItems1(int n) {
  return List.generate(1, (index) {
    return Item1(
      expandedValue: 'The GEHU - Bhimtal Campus is located at the '
          'Kumaon foothills of the outer Himalayas amidst lush '
          'green tree cover, along the Sattal Road. It has been d'
          'esigned as a self contained community with academic and '
          'research facilities, laboratories, libraries and '
          'administrative offices all in the same campus. Campus '
          'provides various facilities like students'
          'accommodation, Open Air Theatre, cafeteria, play fields, '
          'library and computer centers, fully equipped and well'
          ' designed lecture theatres. Bhimtal is well connected '
          'to all major cities of India, by road and rail, with the '
          'nearest railway station being Kathgodam which is 27 kms from '
          'Bhimtal Campus. By road, Bhimtal is about 300 kms from Delhi,'
          ' 16 kms from Nainital and 310kms from Dehradun.',
      headerValue: 'Bhimtal Campus',
    );
  });
}

List<Item2> generateItems2(int n) {
  return List.generate(1, (index) {
    return Item2(
      expandedValue: 'The Graphic Era Hill University campus at Haldwani, '
          'the mesmerizing gateway to Kumaon, is situated in the vibrant and '
          'largest commercial market of the state and is a wonderful fusion of'
          ' the bliss of Mother Nature and the exciting bustle of an up and coming city.'
          'The campus boasts of a magnificent amphitheater, '
          ' vibrant cafeterias, energetic playing fields and recreational'
          ' grounds, a massive collection of books in a regal library,'
          ' well-resourced, multifaceted laboratories, and computer centers, and dynamic lecture theatres.'
          'With courses in various disciplines, ranging from engineering,'
          ' science, and technology, business and management studies, hospitality, '
          'and humanities, we welcome ambitious and enthusiastic students seeking'
          ' a serene college experience and promise every student an educative and '
          'pedagogic experience of a lifetime.',
      headerValue: 'Haldwani Campus',
    );
  });
}
