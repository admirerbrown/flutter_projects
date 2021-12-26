import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:page_1/pages/page1.dart';

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

class CallScreen extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final newInfo;
  const CallScreen({Key? key, required this.newInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffB1D0E0),
      appBar: AppBar(
        backgroundColor: const Color(0xffB1D0E0),
        elevation: 0,
        title: Column(
          children: [
            const Text(
              'Calling...',
              style: TextStyle(
                  fontFamily: 'CrimsonPro-Regular',
                  fontSize: 16,
                  color: Color(0xff082032)),
            ),
            Text(
              main_contacts[newInfo]['name'],
              style: const TextStyle(
                fontFamily: 'CrimsonPro-Regular',
                fontSize: 24,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            ClipRRect(
              // makes it possible to shape the corners of any shape...
              borderRadius: BorderRadius.circular(20.0), //or 15.0
              child: Container(
                height: 450.0,
                //width: 70.0,
                color: const Color(0xffFF0E58),
                child: Stack(
                  // helps to overlay an icon unto an image...
                  fit: StackFit
                      .expand, // allows the image below to fit the whole container....
                  children: [
                    Image.network(main_contacts[newInfo]['picture'],
                        fit: BoxFit.cover),
                    const Positioned(
                      // customising the icon to be overlayed.
                      bottom: 20.0,
                      left: 310,
                      child: CircleAvatar(
                        radius: 22,
                        backgroundColor: Color(0xff8CA1A5),
                        child: Icon(
                          MdiIcons.fullscreen,
                          size: 30,
                          color: Color(0xff082032),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, right: 15, top: 45, bottom: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    MdiIcons.dialpad,
                    size: 30,
                    color: Color(0xff082032),
                  ),
                  ClipRRect(
                    // makes it possible to shape the corners of any shape...
                    borderRadius: BorderRadius.circular(50.0), //or 15.0
                    child: InkWell(
                      child: Container(
                        height: 60.0,
                        width: 250.0,
                        color: const Color(0xff406882),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              MdiIcons.phoneCancel,
                              size: 30,
                              color: Color(0xff420516),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'End Call',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'CrimsonPro-Regular',
                                  fontSize: 30),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              // calling the contact pressed on the next page.....
                              return const Home();
                            },
                          ),
                        );
                      },
                    ),
                  ),
                  const Icon(
                    MdiIcons.microphone,
                    size: 30,
                    color: Color(0xff082032),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
