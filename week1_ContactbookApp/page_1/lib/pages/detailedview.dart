import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'callscreen.dart';

// ignore: non_constant_identifier_names
final List<Map<String, dynamic>> main_contacts = [
  {
    "call_date": "May 15,2021",
    "call_status": "Incoming",
    "status_icon": (MdiIcons.callReceived),
    "call_time": "8:40 PM",
    "call_duration": " 6 minutes",
    "email": "cris@gmail.com",
    "location": "MaryLand, Carlifonia",
    "name": "Cristofer",
    "phone": "+41 65-827-8982",
    "username": "@cris_ross",
    "social_handle": (MdiIcons.instagram),
    "picture":
        "https://media.istockphoto.com/photos/mature-doctor-holding-medical-records-at-hospital-picture-id1346124955?b=1&k=20&m=1346124955&s=170667a&w=0&h=BlMmV87xEQMzCTFnhfNlpwl58cDVHXCGiatPd-3AotE="
  },
  {
    "call_date": "May 15,2021",
    "call_status": "Incoming",
    "status_icon": (MdiIcons.callReceived),
    "call_time": "8:40 PM",
    "call_duration": " 6 minutes",
    "location": "chorkor, NewHamsphire",
    "email": "mj@gmail.com",
    "name": "Mary Jane",
    "phone": "+41 65-007-1382",
    "username": "@mary_mj",
    "social_handle": (MdiIcons.twitter),
    "picture":
        "https://images.unsplash.com/photo-1550928431-ee0ec6db30d3?crop=entropy&cs=srgb&fm=jpg&ixid=Mnw3MjAxN3wwfDF8c2VhcmNofDIxOXx8bW9kZWxzfGVufDB8fHx8MTY0MDI5MjE4NA&ixlib=rb-1.2.1&q=85&q=85&fmt=jpg&crop=entropy&cs=tinysrgb&w=450"
  },
  {
    "call_date": "May 15,2021",
    "call_status": "Incoming",
    "status_icon": (MdiIcons.callReceived),
    "call_time": "8:40 PM",
    "call_duration": " 6 minutes",
    "location": "OxfordStreet, NewCasttle",
    "name": "Queen",
    "email": "queen_bae@yahoo.com",
    "phone": "+233 00-007-1580",
    "username": "@Bae_Heart",
    "social_handle": (MdiIcons.instagram),
    "picture":
        "https://images.unsplash.com/photo-1616091093714-c64882e9ab55?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fG1vZGVsc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"
  },
  {
    "call_date": "May 15,2021",
    "call_status": "Incoming",
    "status_icon": (MdiIcons.callReceived),
    "call_time": "8:40 PM",
    "call_duration": " 6 minutes",
    "location": "OrangeCity, Kasoa Abokobi",
    "name": "Manny",
    "email": "manny@hotmail.com",
    "phone": "+233 85-041-4443",
    "username": "@manny_King",
    "social_handle": (MdiIcons.twitter),
    "picture":
        "https://images.unsplash.com/photo-1531891570158-e71b35a485bc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fG1vZGVsc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"
  },
  {
    "call_date": "May 15,2021",
    "call_status": "Incoming",
    "status_icon": (MdiIcons.callReceived),
    "call_time": "8:40 PM",
    "call_duration": " 6 minutes",
    "location": "Langly, Virginia",
    "name": "Kathrine",
    "email": "cathy@gmail.com",
    "phone": "+233 11-662-1970",
    "username": "@cathy_Fiv",
    "social_handle": (MdiIcons.instagram),
    "picture":
        "https://media.istockphoto.com/photos/portrait-beautiful-young-woman-with-clean-fresh-skin-picture-id1329622588?b=1&k=20&m=1329622588&s=170667a&w=0&h=MrsM7nyIOW4Gt5PM5Vs6xYIMJ1nr1FLT9bvt0Sve-S4="
  },
];

class DetailedView extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final data;
  const DetailedView({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://images.unsplash.com/photo-1579547621113-e4bb2a19bdd6?crop=entropy&cs=srgb&fm=jpg&ixid=Mnw3MjAxN3wwfDF8c2VhcmNofDMzfHxhcnR8ZW58MHx8fHwxNjQwMzA5MTQ5&ixlib=rb-1.2.1&q=85&q=85&fmt=jpg&crop=entropy&cs=tinysrgb&w=450'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: const Center(
            child: Text(
              'Contact details',
              style: TextStyle(
                fontFamily: 'CrimsonPro-Regular',
                fontSize: 25,
              ),
            ),
          ),
          backgroundColor: Colors.transparent,
          actions: const [Icon(Icons.more_vert)],
        ),
        backgroundColor: Colors.transparent,

        //************** Body Section ************************** */
        body: ListView(
          children: [
            Center(
              //***********  the top section begins here ************************/
              // ignore: avoid_unnecessary_containers
              child: Container(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 55,
                          backgroundImage:
                              NetworkImage(main_contacts[data]['picture']),
                        ),
                        const Positioned(
                          // customising the icon to be overlayed.
                          bottom: 0.0,
                          left: 70,
                          child: CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.white,
                            child: Icon(
                              MdiIcons.cameraPlus,
                              size: 25,
                              color: Color(0xff35589A),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      // contact name
                      main_contacts[data]['name'],
                      style: const TextStyle(
                          color: Colors.white,
                          fontFamily: 'CrimsonPro-Regular',
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      // location detail.......
                      main_contacts[data]['location'],
                      style: const TextStyle(
                        color: Colors.white70,
                        fontFamily: 'workSans',
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: const [
                            CircleAvatar(
                              radius: 22,
                              backgroundColor: Colors.white,
                              child: Icon(
                                MdiIcons.video,
                                size: 30,
                                color: Color(0xff35589A),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Video call',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'CrimsonPro-Regular',
                                  fontSize: 16),
                            ),
                          ],
                        ),
                        const SizedBox(width: 60),
                        Column(
                          children: const [
                            CircleAvatar(
                              radius: 22,
                              backgroundColor: Colors.white,
                              child: Icon(
                                MdiIcons.messageText,
                                size: 30,
                                color: Color(0xff35589A),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Message',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'CrimsonPro-Regular',
                                  fontSize: 16),
                            ),
                          ],
                        ),
                        const SizedBox(width: 60),
                        InkWell(
                          // allows to add an ontap feature to the circle avatar.........
                          child: Column(
                            children: const [
                              CircleAvatar(
                                radius: 22,
                                backgroundColor: Colors.white,
                                child: Icon(
                                  MdiIcons.phoneClassic,
                                  size: 30,
                                  color: Color(0xff35589A),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Call',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'CrimsonPro-Regular',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            ],
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  // calling the contact pressed on the next page.....
                                  return CallScreen(newInfo: data);
                                },
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ), //*********** the top Section ends here ********* */

            const SizedBox(
              height: 15,
            ),

            //******** the botton section of the body starts below *********** */

            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Container(
                color: const Color(0xff406882),
                child: Column(
                  children: [
                    // ignore: avoid_unnecessary_containers
                    Container(
                      child: Column(
                        children: [
                          ListTile(
                            leading: const Icon(
                              MdiIcons.phoneClassic,
                              size: 30,
                              color: Color(0xff1A374D),
                            ),
                            title: Text(
                              main_contacts[data]["phone"],
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'workSans-Regular',
                                  fontSize: 15),
                            ),
                            subtitle: const Text(
                              'Phone | Mobile | Work',
                              style: TextStyle(
                                  color: Colors.white60,
                                  fontFamily: 'workSans-Regular',
                                  fontSize: 15),
                            ),
                            trailing: const CircleAvatar(
                              radius: 22,
                              backgroundColor: Colors.white,
                              child: Icon(
                                MdiIcons.heart,
                                size: 30,
                                color: Color(0xff1A374D),
                              ),
                            ),
                          ),
                          ListTile(
                            leading: const Icon(
                              MdiIcons.email,
                              size: 30,
                              color: Color(0xff1A374D),
                            ),
                            title: Text(
                              main_contacts[data]["email"],
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'workSans-Regular',
                                  fontSize: 15),
                            ),
                            subtitle: const Text(
                              'email personal | Work',
                              style: TextStyle(
                                  color: Colors.white60,
                                  fontFamily: 'workSans-Regular',
                                  fontSize: 15),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  const CircleAvatar(
                                    radius: 22,
                                    backgroundImage: NetworkImage(
                                        'https://images.unsplash.com/photo-1614680376408-81e91ffe3db7?crop=entropy&cs=srgb&fm=jpg&ixid=Mnw3MjAxN3wwfDF8c2VhcmNofDJ8fHdoYXRzQXBwfGVufDB8fHx8MTY0MDM4OTM0MA&ixlib=rb-1.2.1&q=85&q=85&fmt=jpg&crop=entropy&cs=tinysrgb&w=450'),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    main_contacts[data]["username"],
                                    style: const TextStyle(
                                        color: Colors.white70,
                                        fontFamily: 'workSans-Regular',
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: [
                                  const CircleAvatar(
                                    radius: 22,
                                    backgroundImage: NetworkImage(
                                        'https://images.unsplash.com/photo-1627843563095-f6e94676cfe0?crop=entropy&cs=srgb&fm=jpg&ixid=Mnw3MjAxN3wwfDF8c2VhcmNofDEzfHxmYWNlYm9va3xlbnwwfHx8fDE2NDAzNDYxNzc&ixlib=rb-1.2.1&q=85&q=85&fmt=jpg&crop=entropy&cs=tinysrgb&w=450'),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    main_contacts[data]["username"],
                                    style: const TextStyle(
                                        color: Colors.white70,
                                        fontFamily: 'workSans-Regular',
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: [
                                  const CircleAvatar(
                                    radius: 22,
                                    backgroundImage: NetworkImage(
                                        'https://images.unsplash.com/photo-1611262588024-d12430b98920?crop=entropy&cs=srgb&fm=jpg&ixid=Mnw3MjAxN3wwfDF8c2VhcmNofDR8fGluc3RhZ3JhbXxlbnwwfHx8fDE2NDAzMTY3Mjc&ixlib=rb-1.2.1&q=85&q=85&fmt=jpg&crop=entropy&cs=tinysrgb&w=450'),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    main_contacts[data]["username"],
                                    style: const TextStyle(
                                        color: Colors.white70,
                                        fontFamily: 'workSans-Regular',
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    //****** part2 of body ******* */
                    Padding(
                      padding: const EdgeInsets.all(30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Call history',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'workSans-Regular',
                                fontSize: 15),
                          ),
                          Text(
                            'Show more',
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.white,
                                fontFamily: 'workSans-Regular',
                                fontSize: 15),
                          ),
                        ],
                      ),
                    ),

                    ListTile(
                      leading: const Icon(
                        MdiIcons.phoneIncoming,
                        size: 30,
                        color: Color(0xff93FFD8),
                      ),
                      title: Text(
                        main_contacts[data]["call_date"],
                        style: const TextStyle(
                            color: Colors.white,
                            fontFamily: 'workSans-Regular',
                            fontSize: 15),
                      ),
                      subtitle: Text(
                        main_contacts[data]["call_status"],
                        style: const TextStyle(
                            color: Colors.white60,
                            fontFamily: 'workSans-Regular',
                            fontSize: 15),
                      ),
                      trailing: Column(
                        children: [
                          Text(
                            main_contacts[data]["call_time"],
                            style: const TextStyle(
                                color: Colors.white60,
                                fontFamily: 'workSans-Regular',
                                fontSize: 15),
                          ),
                          Text(
                            main_contacts[data]["call_duration"],
                            style: const TextStyle(
                                color: Colors.white60,
                                fontFamily: 'workSans-Regular',
                                fontSize: 15),
                          ),
                        ],
                      ),
                    ),

                    ListTile(
                      leading: const Icon(
                        MdiIcons.phoneOutgoingOutline,
                        size: 30,
                        color: Color(0xffF05454),
                      ),
                      title: const Text(
                        'June 30, 2021',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'workSans-Regular',
                            fontSize: 15),
                      ),
                      subtitle: const Text(
                        'Outgoing',
                        style: TextStyle(
                            color: Colors.white60,
                            fontFamily: 'workSans-Regular',
                            fontSize: 15),
                      ),
                      trailing: Column(
                        children: const [
                          Text(
                            '9:30 PM',
                            style: TextStyle(
                                color: Colors.white60,
                                fontFamily: 'workSans-Regular',
                                fontSize: 15),
                          ),
                          Text(
                            '15 minutes',
                            style: TextStyle(
                                color: Colors.white60,
                                fontFamily: 'workSans-Regular',
                                fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    ListTile(
                      leading: const Icon(
                        MdiIcons.phoneRemove,
                        size: 30,
                        color: Color(0xff4F091D),
                      ),
                      title: const Text(
                        'May 6, 2021',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'workSans-Regular',
                            fontSize: 15),
                      ),
                      subtitle: const Text(
                        'This call is blocked',
                        style: TextStyle(
                            color: Colors.white60,
                            fontFamily: 'workSans-Regular',
                            fontSize: 15),
                      ),
                      trailing: Column(
                        children: const [
                          Text(
                            '9:02 AM',
                            style: TextStyle(
                                color: Colors.white60,
                                fontFamily: 'workSans-Regular',
                                fontSize: 15),
                          ),
                          Text(
                            '2 hours 24 minutes',
                            style: TextStyle(
                                color: Colors.white60,
                                fontFamily: 'workSans-Regular',
                                fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
