import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'dart:math' as math;
import 'calendascreen.dart';

final List<Map<String, dynamic>> my_tasks = [
  {
    "title": "To Do",
    "subtitle": "5 tasks now",
    "notice": (Icons.circle),
    "task_icon": (MdiIcons.timerOutline),
    "task_status": "1 started",
    "color": 0xffF05454,
  },
  {
    "title": "In Progress",
    "subtitle": "1 task now",
    "notice": (Icons.circle),
    "task_icon": (Icons.ac_unit),
    "task_status": "1 started",
    "color": 0xffF0BB62,
  },
  {
    "title": "Done",
    "subtitle": "18 tasks now",
    "notice": (Icons.circle),
    "task_icon": (MdiIcons.forward),
    "task_status": "18 completed",
    "color": 0xff577BC1,
  },
];

// ignore: use_key_in_widget_constructors
class HomeScreen extends StatelessWidget {
  // const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFBFFE2),
      body: Column(
        // top container representing App bar....
        children: [
          Container(
            height: 200,
            decoration: const BoxDecoration(
              color: Color(0xffF0BB62),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 30),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(
                        MdiIcons.menu,
                        color: Color(0xff041C32),
                      ),
                      Icon(Icons.search_sharp, color: Color(0xff041C32))
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        // ignore: sized_box_for_whitespace
                        Container(
                          height: 100,
                          width: 100,
                          child: Transform(
                            // gives the ability to flip any flutter widget....
                            alignment: Alignment.center,
                            transform: Matrix4.rotationY(math
                                .pi), // this is where the actual flipping of the container happens..
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                ShaderMask(
                                  shaderCallback: (rect) {
                                    return const SweepGradient(
                                        startAngle: 3.0,
                                        endAngle: 3.14 * 2,
                                        stops: [
                                          0.5,
                                          0.5
                                        ],
                                        colors: [
                                          Color(0xffF05454),
                                          Colors.transparent
                                        ]).createShader(rect);
                                  },
                                  child: Container(
                                    height: 200,
                                    width: 200,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 90,
                                  width: 90,
                                  decoration: const BoxDecoration(
                                    color: Color(0xffF0BB62),
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          "https://images.unsplash.com/photo-1542345812-d98b5cd6cf98?crop=entropy&cs=srgb&fm=jpg&ixid=Mnw3MjAxN3wwfDF8c2VhcmNofDEwMnx8bWFsZSUyMG1vZGVsfGVufDB8fHx8MTY0MTEyODk3NQ&ixlib=rb-1.2.1&q=85&q=85&fmt=jpg&crop=entropy&cs=tinysrgb&w=450"),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Column(
                          //mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Text(
                                'Philip Mccoy',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 30,
                                  fontFamily: 'CrimsonPro-Regular',
                                  color: Color(0xff244749),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Project Manager',
                              style: TextStyle(
                                //fontWeight: FontWeight,
                                fontSize: 20,
                                fontFamily: 'CrimsonPro-Regular',
                                color: Color(0xff244749).withAlpha(80),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            //width: 200,
          ), //***********the top profile section ends here */

          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'My tasks',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 26,
                          fontFamily: 'WorkSans-Regular',
                          color: Color(0xff244749),
                        ),
                      ),
                      InkWell(
                        child: const CircleAvatar(
                          radius: 25,
                          child: Icon(Icons.calendar_today_outlined),
                          backgroundColor: Color(0xff3E8E7E),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return CalenderScreen();
                              },
                            ),
                          );
                        },
                      )
                    ],
                  ),
                ),
                ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Color(my_tasks[index]["color"]),
                        radius: 25,
                        child: Icon(
                          my_tasks[index]["task_icon"],
                          color: Colors.white,
                        ),
                      ),
                      title: Text(
                        my_tasks[index]["title"],
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          fontFamily: 'WorkSans-Regular',
                          color: Color(0xff244749),
                        ),
                      ),
                      subtitle: Row(
                        children: [
                          Text(
                            my_tasks[index]["subtitle"],
                            style: TextStyle(
                              //fontWeight: FontWeight,
                              fontSize: 16,
                              fontFamily: 'WorkSans-Regular',
                              color: Color(0xff041C32).withAlpha(70),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Icon(
                            my_tasks[index]["notice"],
                            size: 7,
                            color: const Color(0xff3E8E7E),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            my_tasks[index]["task_status"],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              fontFamily: 'WorkSans-Regular',
                              color: Color(0xff041C32).withAlpha(70),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const Divider(
                      indent: 0,
                      color: Colors.white,
                    );
                  },
                  itemCount: my_tasks.length,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Text(
                    'Active Projects',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 26,
                      fontFamily: 'WorkSans-Regular',
                      color: Color(0xff244749),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  child: Row(
                    children: [
                      Container(
                        // medical App container***********
                        height: 180,
                        width: 150,
                        //color: Colors.red,

                        decoration: const BoxDecoration(
                          color: Color(0xff3E8E7E),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 10),
                              child: Container(
                                width: 65,
                                height: 65,
                                //color: Colors.blue,
                                child: Stack(
                                  children: [
                                    ShaderMask(
                                      shaderCallback: (rect) {
                                        return SweepGradient(
                                            startAngle: 0.0,
                                            endAngle: 3.14 * 2,
                                            // ignore: prefer_const_literals_to_create_immutables
                                            stops: [0.3, 0.1],
                                            center: Alignment.center,
                                            colors: [
                                              Color(0xffFBFFE2),
                                              Color(0xffFBFFE2).withAlpha(60)
                                            ]).createShader(rect);
                                      },
                                      child: Container(
                                        width: 65,
                                        height: 65,
                                        decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.white),
                                      ),
                                    ),
                                    Center(
                                      child: Container(
                                        width: 48,
                                        height: 48,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xff3E8E7E),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            '36%',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              fontFamily: 'WorkSans-Regular',
                                              color: Color(0xffFBFFE2),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                'Medical App',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  fontFamily: 'WorkSans-Regular',
                                  color: Color(0xffFBFFE2),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              child: Text(
                                '9 hours progress',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'WorkSans-Regular',
                                  color: Color(0xffC0B2B3),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Container(
                        // Sports App container***********
                        height: 180,
                        width: 150,
                        //color: Colors.red,

                        decoration: const BoxDecoration(
                          color: Color(0xffF05454),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 10),
                              child: Container(
                                width: 65,
                                height: 65,
                                //color: Colors.blue,
                                child: Stack(
                                  children: [
                                    ShaderMask(
                                      shaderCallback: (rect) {
                                        return SweepGradient(
                                            startAngle: 0.0,
                                            endAngle: 3.14 * 4,
                                            // ignore: prefer_const_literals_to_create_immutables
                                            stops: [0.3, 0.1],
                                            center: Alignment.center,
                                            colors: [
                                              Color(0xffFBFFE2),
                                              Color(0xffFBFFE2).withAlpha(60)
                                            ]).createShader(rect);
                                      },
                                      child: Container(
                                        width: 65,
                                        height: 65,
                                        decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.white),
                                      ),
                                    ),
                                    Center(
                                      child: Container(
                                        width: 48,
                                        height: 48,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xffF05454),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            '73%',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              fontFamily: 'WorkSans-Regular',
                                              color: Color(0xffFBFFE2),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                'Sport App',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  fontFamily: 'WorkSans-Regular',
                                  color: Color(0xffFBFFE2),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              child: Text(
                                '40 hours progress',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'WorkSans-Regular',
                                  color: Color(0xffC0B2B3),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  child: Row(
                    children: [
                      Container(
                        // Rent App container***********
                        height: 180,
                        width: 150,
                        //color: Colors.red,

                        decoration: const BoxDecoration(
                          color: Color(0xffF0BB62),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 10),
                              child: Container(
                                width: 65,
                                height: 65,
                                //color: Colors.blue,
                                child: Stack(
                                  children: [
                                    ShaderMask(
                                      shaderCallback: (rect) {
                                        return SweepGradient(
                                            startAngle: 0.0,
                                            endAngle: 3.14 * 7,
                                            // ignore: prefer_const_literals_to_create_immutables
                                            stops: [0.3, 0.1],
                                            center: Alignment.center,
                                            colors: [
                                              Color(0xffFBFFE2),
                                              Color(0xffFBFFE2).withAlpha(60)
                                            ]).createShader(rect);
                                      },
                                      child: Container(
                                        width: 65,
                                        height: 65,
                                        decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.white),
                                      ),
                                    ),
                                    Center(
                                      child: Container(
                                        width: 48,
                                        height: 48,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xffF0BB62),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            '0%',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              fontFamily: 'WorkSans-Regular',
                                              color: Color(0xffFBFFE2),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                'Rent App',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  fontFamily: 'WorkSans-Regular',
                                  color: Color(0xffFBFFE2),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              child: Text(
                                '0 hours progress',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'WorkSans-Regular',
                                  color: Color(0xffC0B2B3),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Container(
                        // Banking App container***********
                        height: 180,
                        width: 150,
                        //color: Colors.red,

                        decoration: const BoxDecoration(
                          color: Color(0xff577BC1),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 10),
                              child: Container(
                                width: 65,
                                height: 65,
                                //color: Colors.blue,
                                child: Stack(
                                  children: [
                                    ShaderMask(
                                      shaderCallback: (rect) {
                                        return SweepGradient(
                                            startAngle: 0.0,
                                            endAngle: 3.14 * 1,
                                            // ignore: prefer_const_literals_to_create_immutables
                                            stops: [0.3, 0.1],
                                            center: Alignment.center,
                                            colors: [
                                              Color(0xffFBFFE2),
                                              Color(0xffFBFFE2).withAlpha(60)
                                            ]).createShader(rect);
                                      },
                                      child: Container(
                                        width: 65,
                                        height: 65,
                                        decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.white),
                                      ),
                                    ),
                                    Center(
                                      child: Container(
                                        width: 48,
                                        height: 48,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xff577BC1),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            '10%',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              fontFamily: 'WorkSans-Regular',
                                              color: Color(0xffFBFFE2),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                'Baking App',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  fontFamily: 'WorkSans-Regular',
                                  color: Color(0xffFBFFE2),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              child: Text(
                                '1 hour progress',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'WorkSans-Regular',
                                  color: Color(0xffC0B2B3),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
