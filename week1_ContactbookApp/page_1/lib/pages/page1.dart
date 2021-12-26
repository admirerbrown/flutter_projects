import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'detailedview.dart';

List _basicinfo = [
  {
    'name': 'Avry',
    'picture':
        'https://images.unsplash.com/photo-1561134013-859b398e7f5c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8ZmVtYWxlc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'
  },
  {
    'name': 'Elsie',
    'picture':
        'https://media.istockphoto.com/photos/her-beauty-makes-it-hard-not-to-stare-picture-id1297633362?b=1&k=20&m=1297633362&s=170667a&w=0&h=oLk7uJYmrECp5Vo6O6Y3_kCIW0sZTy8IOpJ-n3lY4-g='
  },
  {
    'name': 'Brittiny',
    'picture':
        'https://media.istockphoto.com/photos/thoughtful-black-woman-looking-outside-window-picture-id1319763211?b=1&k=20&m=1319763211&s=170667a&w=0&h=_mrDBbW_JK3HPnyE5piZj2SCyDfpPhlKdLbE7g_gfb0='
  },
  {
    'name': 'Marc',
    'picture':
        'https://images.unsplash.com/photo-1566753323558-f4e0952af115?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bWFsZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'
  },
];

// ignore: non_constant_identifier_names
final List<Map<String, dynamic>> main_contacts = [
  {
    "name": "Cristofer",
    "phone": "+41 65-827-8982",
    "username": "@cris_ross",
    "social_handle": (MdiIcons.instagram),
    "picture":
        "https://media.istockphoto.com/photos/mature-doctor-holding-medical-records-at-hospital-picture-id1346124955?b=1&k=20&m=1346124955&s=170667a&w=0&h=BlMmV87xEQMzCTFnhfNlpwl58cDVHXCGiatPd-3AotE="
  },
  {
    "name": "MaryJane",
    "phone": "+41 65-007-1382",
    "username": "@mary_mj",
    "social_handle": (MdiIcons.twitter),
    "picture":
        "https://images.unsplash.com/photo-1550928431-ee0ec6db30d3?crop=entropy&cs=srgb&fm=jpg&ixid=Mnw3MjAxN3wwfDF8c2VhcmNofDIxOXx8bW9kZWxzfGVufDB8fHx8MTY0MDI5MjE4NA&ixlib=rb-1.2.1&q=85&q=85&fmt=jpg&crop=entropy&cs=tinysrgb&w=450"
  },
  {
    "name": "Queen",
    "phone": "+233 00-007-1580",
    "username": "@Bae_Heart",
    "social_handle": (MdiIcons.instagram),
    "picture":
        "https://images.unsplash.com/photo-1616091093714-c64882e9ab55?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fG1vZGVsc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"
  },
  {
    "name": "Manny",
    "phone": "+233 85-041-4443",
    "username": "@manny_King",
    "social_handle": (MdiIcons.twitter),
    "picture":
        "https://images.unsplash.com/photo-1531891570158-e71b35a485bc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fG1vZGVsc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"
  },
  {
    "name": "Kathrine",
    "phone": "+233 11-662-1970",
    "username": "@cathy_Fiv",
    "social_handle": (MdiIcons.instagram),
    "picture":
        "https://media.istockphoto.com/photos/portrait-beautiful-young-woman-with-clean-fresh-skin-picture-id1329622588?b=1&k=20&m=1329622588&s=170667a&w=0&h=MrsM7nyIOW4Gt5PM5Vs6xYIMJ1nr1FLT9bvt0Sve-S4="
  },
];

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,// prevents keybord from causing overflow error.....
      backgroundColor: const Color(0xff1A374D),
      appBar: AppBar(
        backgroundColor: const Color(0xff1A374D),
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Contacts',
              style: TextStyle(
                fontFamily: 'CrimsonPro-Regular',
                fontSize: 36,
              ),
            ),
            Icon(Icons.add_box_outlined)
          ],
        ),
      ),

      // below is where the main content or body of the app exits.....
      body: Padding(
        padding: const EdgeInsets.all(7.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              // creating a search bar for contact searching....
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                filled: true,
                prefixIcon: const Icon(Icons.search, color: Colors.white),
                hintStyle: const TextStyle(
                    color: Colors
                        .white), // this changes or sets the color for hintText below...
                hintText: 'Search',
                fillColor: const Color(0xff6998AB),
              ),
            ),
            const SizedBox(height: 15),

            //********************** RECENT CONTACTS SECTION  *********************************************/
            const Text(
              'Recents',
              style: TextStyle(
                  fontFamily: 'CrimsonPro-Regular',
                  fontSize: 24,
                  color: Colors.white),
            ),
            const SizedBox(height: 25),

            Expanded(
              child: GridView.builder(
                // horinzontally aligning my recent contacts using dynamic data and the gridView widget...
                itemCount: _basicinfo.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4, mainAxisSpacing: 3, crossAxisSpacing: 3),
                itemBuilder: (ctx, index) {
                  return Column(
                    children: [
                      ClipRRect(
                        // makes it possible to shape the corners of any shape...
                        borderRadius: BorderRadius.circular(20.0), //or 15.0
                        child: Container(
                          height: 70.0,
                          width: 70.0,
                          color: const Color(0xffFF0E58),
                          child: Stack(
                            // helps to overlay an icon unto an image...
                            fit: StackFit
                                .expand, // allows the image below to fit the whole container....
                            children: [
                              Image.network(_basicinfo[index]['picture'],
                                  fit: BoxFit.cover),
                              const Positioned(
                                // customising the icon to be overlayed.
                                bottom: 0.0,
                                left: 30,
                                child: Icon(
                                  Icons.circle,
                                  color: Colors.green,
                                  size: 13.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 6.0),
                      // ignore: prefer_const_constructors
                      Text(
                        _basicinfo[index]['name'],
                        style: const TextStyle(
                            fontFamily: 'CrimsonPro-Regular',
                            fontSize: 17,
                            color: Colors.white),
                      ),
                    ],
                  );
                },
              ),
            ),

            //********************** Main contacts Section *************************/
            ClipRRect(
              // makes it possible to shape the corners of any shape...
              borderRadius: BorderRadius.circular(20.0), //or 15.0
              child: Container(
                height: 350,
                color: const Color(0xff406882),

                // the code below dynamically add contacts to the listTile....
                child: ListView.separated(
                  shrinkWrap: true,
                  itemCount: main_contacts.length,
                  separatorBuilder: (BuildContext context, index) =>
                      const Divider(
                    indent: 1,
                    thickness: 3,
                  ),
                  itemBuilder: (BuildContext context, index) {
                    return ListTile(
                      // upon a tap on a particular contact the app sends you to a new detailed page....
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return DetailedView(
                                // dynamically printing the tapped contact's detail at the next Page....
                                data: index,
                              );
                            },
                          ),
                        );
                      },

                      leading: ClipRRect(
                        // makes it possible to shape the corners of any shape...
                        borderRadius: BorderRadius.circular(20.0), //or 15.0
                        child: Container(
                          height: 70.0,
                          width: 70.0,
                          color: const Color(0xffFF0E58),
                          child: Stack(
                            // helps to overlay an icon unto an image...
                            fit: StackFit
                                .expand, // allows the image below to fit the whole container....
                            children: [
                              Image.network(main_contacts[index]['picture'],
                                  fit: BoxFit.cover),
                            ],
                          ),
                        ),
                      ),
                      title: Text(
                        main_contacts[index]['name'],
                        style: const TextStyle(
                            color: Colors.white,
                            fontFamily: 'WorkSans-Regular',
                            fontSize: 20),
                      ),
                      subtitle: Text(
                        main_contacts[index]['phone'],
                        style: const TextStyle(
                            color: Colors.white,
                            fontFamily: 'WorkSans-Regular',
                            fontSize: 15),
                      ),

                      trailing: Column(
                        children: [
                          Icon(
                            main_contacts[index]['social_handle'],
                            color: const Color(0xff1A374D),
                          ),
                          Text(
                            main_contacts[index]['username'],
                            style: const TextStyle(
                                color: Colors.white,
                                fontFamily: 'WorkSans-Regular',
                                fontSize: 15),
                          ),
                        ],
                      ), // pulling the exact info
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
