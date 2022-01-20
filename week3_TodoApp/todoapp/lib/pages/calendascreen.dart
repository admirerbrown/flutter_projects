import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'addtask.dart';

/* final List<Map<String, dynamic>> my_todo = [
  {
    "title": "project Research",
    "subtitle": "",
  }
];
 */
class CalenderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFBFFE2),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(
          0xffFBFFE2,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Today',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 25,
                        fontFamily: 'CrimsonPro-Regular',
                        color: Color(0xff244749),
                      ),
                    ),
                    const SizedBox(
                      height: 1,
                    ),
                    Text(
                      'Productive day, Philip',
                      style: TextStyle(
                        //fontWeight: FontWeight,
                        fontSize: 14,
                        fontFamily: 'CrimsonPro-Regular',
                        color: Color(0xff244749).withAlpha(100),
                      ),
                    ),
                  ],
                ),
                InkWell(
                  child: Container(
                    height: 30,
                    width: 90,
                    decoration: BoxDecoration(
                      color: Color(0xff3E8E7E),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                      child: Text(
                        'Add task',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 16,
                          fontFamily: 'CrimsonPro-Regular',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return AddTask();
                        },
                      ),
                    );
                  },
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                'April,2020',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  fontFamily: 'WorkSans-Regular',
                  color: Color(0xff244749),
                ),
              ),
            ),
            Row(
              //calender section *****
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: const [
                    Text(
                      'Sun',
                      style: TextStyle(
                        //fontWeight: FontWeight,
                        fontSize: 14,
                        fontFamily: 'WorkSans-Regular',
                        color: Color(0xffC84B31),
                      ),
                    ),
                    Text(
                      '5',
                      style: TextStyle(
                        //fontWeight: FontWeight,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        fontFamily: 'WorkSans-Regular',
                        color: Color(0xffC84B31),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: const [
                    Text(
                      'Mon',
                      style: TextStyle(
                        //fontWeight: FontWeight,
                        fontSize: 14,
                        fontFamily: 'WorkSans-Regular',
                        color: Color(0xff244749),
                      ),
                    ),
                    Text(
                      '6',
                      style: TextStyle(
                        //fontWeight: FontWeight,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        fontFamily: 'WorkSans-Regular',
                        color: Color(0xff244749),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: const [
                    Text(
                      'Tue',
                      style: TextStyle(
                        //fontWeight: FontWeight,
                        fontSize: 14,
                        fontFamily: 'WorkSans-Regular',
                        color: Color(0xff244749),
                      ),
                    ),
                    Text(
                      '7',
                      style: TextStyle(
                        //fontWeight: FontWeight,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        fontFamily: 'WorkSans-Regular',
                        color: Color(0xff244749),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: const [
                    Text(
                      'Wed',
                      style: TextStyle(
                        //fontWeight: FontWeight,
                        fontSize: 14,
                        fontFamily: 'WorkSans-Regular',
                        color: Color(0xff244749),
                      ),
                    ),
                    Text(
                      '8',
                      style: TextStyle(
                        //fontWeight: FontWeight,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        fontFamily: 'WorkSans-Regular',
                        color: Color(0xff244749),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: const [
                    Text(
                      'Thu',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'WorkSans-Regular',
                        color: Color(0xff244749),
                      ),
                    ),
                    Text(
                      '9',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        fontFamily: 'WorkSans-Regular',
                        color: Color(0xff244749),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: const [
                    Text(
                      'Fri',
                      style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        fontSize: 14,
                        fontFamily: 'WorkSans-Regular',
                        color: Color(0xff244749),
                      ),
                    ),
                    Text(
                      '10',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        fontFamily: 'WorkSans-Regular',
                        color: Color(0xff244749),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Expanded(
              // task list section ********
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Row(
                  children: [
                    // ignore: sized_box_for_whitespace
                    Container(
                      width: 50,
                      child: Column(
                        //crossAxisAlignment: CrossAxisAlignment.stretch,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            '9 AM',
                            style: TextStyle(
                                //fontWeight: FontWeight,
                                fontSize: 14,
                                fontFamily: 'WorkSans-Regular',
                                color: Color(0xff244749).withAlpha(90)),
                          ),
                          const SizedBox(
                            height: 33,
                          ),
                          Text(
                            '10 AM',
                            style: TextStyle(
                                //fontWeight: FontWeight,
                                fontSize: 14,
                                fontFamily: 'WorkSans-Regular',
                                color: Color(0xff244749).withAlpha(90)),
                          ),
                          const SizedBox(
                            height: 33,
                          ),
                          Text(
                            '11 AM',
                            style: TextStyle(
                                //fontWeight: FontWeight,
                                fontSize: 14,
                                fontFamily: 'WorkSans-Regular',
                                color: Color(0xff244749).withAlpha(90)),
                          ),
                          const SizedBox(
                            height: 33,
                          ),
                          Text(
                            '12 AM',
                            style: TextStyle(
                                //fontWeight: FontWeight,
                                fontSize: 14,
                                fontFamily: 'WorkSans-Regular',
                                color: Color(0xff244749).withAlpha(90)),
                          ),
                          const SizedBox(
                            height: 33,
                          ),
                          Text(
                            '1 PM',
                            style: TextStyle(
                                //fontWeight: FontWeight,
                                fontSize: 14,
                                fontFamily: 'WorkSans-Regular',
                                color: Color(0xff244749).withAlpha(90)),
                          ),
                          const SizedBox(
                            height: 33,
                          ),
                          Text(
                            '2 PM',
                            style: TextStyle(
                                //fontWeight: FontWeight,
                                fontSize: 14,
                                fontFamily: 'WorkSans-Regular',
                                color: Color(0xff244749).withAlpha(90)),
                          ),
                          const SizedBox(
                            height: 33,
                          ),
                          Text(
                            '3 PM',
                            style: TextStyle(
                                //fontWeight: FontWeight,
                                fontSize: 14,
                                fontFamily: 'WorkSans-Regular',
                                color: Color(0xff244749).withAlpha(90)),
                          ),
                          const SizedBox(
                            height: 33,
                          ),
                          Text(
                            '4 PM',
                            style: TextStyle(
                                //fontWeight: FontWeight,
                                fontSize: 14,
                                fontFamily: 'WorkSans-Regular',
                                color: Color(0xff244749).withAlpha(90)),
                          ),
                          const SizedBox(
                            height: 33,
                          ),
                          Text(
                            '5 PM',
                            style: TextStyle(
                                //fontWeight: FontWeight,
                                fontSize: 14,
                                fontFamily: 'WorkSans-Regular',
                                color: Color(0xff244749).withAlpha(90)),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      //height: 200,
                      width: 300,
                      color: Color(0xffFBFFE2),
                      child: ListView(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 29),
                            child: Container(
                              //width: 200,
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Color(0xffD4B499),
                              ),
                              child: const ListTile(
                                title: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 15),
                                  child: Text(
                                    'Project Research',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      fontFamily: 'WorkSans-Regular',
                                      color: Color(0xff244749),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Container(
                            //width: 200,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Color(0xffFFAFAF),
                            ),
                            child: const ListTile(
                              title: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 10),
                                child: Text(
                                  'Call',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    fontFamily: 'WorkSans-Regular',
                                    color: Color(0xff244749),
                                  ),
                                ),
                              ),
                              subtitle: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15),
                                child: Text(
                                  'Discus with the customer of the medical application the references he sent. Read more',
                                  style: TextStyle(
                                    //fontWeight: FontWeight,
                                    fontSize: 12,
                                    fontFamily: 'WorkSans-Regular',
                                    color: Color(0xff244749),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Container(
                            //width: 200,
                            height: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Color(0xff93B5C6)),
                            child: const ListTile(
                              title: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 5),
                                child: Text(
                                  'Make tasks for the medical app',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    fontFamily: 'WorkSans-Regular',
                                    color: Color(0xff244749),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Container(
                            //width: 200,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Color(0xff678983),
                            ),
                            child: const ListTile(
                              title: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 10),
                                child: Text(
                                  'Design meeting',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    fontFamily: 'WorkSans-Regular',
                                    color: Color(0xff244749),
                                  ),
                                ),
                              ),
                              subtitle: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15),
                                child: Text(
                                  'Discus with designers new tasks for the medical app.Tell how the call went. Read more',
                                  style: TextStyle(
                                    //fontWeight: FontWeight,
                                    fontSize: 12,
                                    fontFamily: 'WorkSans-Regular',
                                    color: Color(0xff244749),
                                  ),
                                ),
                              ),
                            ),
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
