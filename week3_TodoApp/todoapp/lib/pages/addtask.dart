import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AddTask extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat('EEE, d MMMM');
    final timeFormat = DateFormat("HH:mm      a");
    return Scaffold(
       resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffF0BB62),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: 450,
            decoration: const BoxDecoration(
              color: Color(0xffF0BB62),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Create new task',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 26,
                      fontFamily: 'CrimsonPro-Regular',
                      color: Color(0xff244749),
                    ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(labelText: "Title"),
                    style: const TextStyle(
                        color: Color(0xff244749),
                        fontFamily: 'WorkSans-Regular',
                        fontWeight: FontWeight.w600),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 250,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: DateTimeField(
                            // creating a date field*********
                            format: dateFormat,
                            decoration: const InputDecoration(
                              labelText: 'Date',
                              suffixIcon: Icon(Icons.arrow_drop_down),
                            ),
                            style: const TextStyle(
                              color: Color(0xff244749),
                              fontFamily: 'WorkSans-Regular',
                              fontWeight: FontWeight.w600,
                            ),
                            onShowPicker: (context, currentValue) async {
                              final date = showDatePicker(
                                context: context,
                                initialDate: currentValue ?? DateTime.now(),
                                firstDate: DateTime(1900),
                                lastDate: DateTime(2100),
                              );
                              return date;
                            },
                          ),
                        ),
                      ),
                      const CircleAvatar(
                        radius: 22,
                        child: Icon(Icons.calendar_today_outlined),
                        backgroundColor: Color(0xff3E8E7E),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 10),
            child: Row(
              // time row **************
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 150,
                  child: DateTimeField(
                    format: timeFormat,
                    decoration: const InputDecoration(
                      labelText: 'Start time',
                      suffixIcon: Icon(Icons.arrow_drop_down),
                    ),
                    style: const TextStyle(
                      color: Color(0xff244749),
                      fontFamily: 'WorkSans-Regular',
                      fontWeight: FontWeight.w600,
                    ),
                    onShowPicker: (context, currentValue) async {
                      final time = await showTimePicker(
                        context: context,
                        initialTime: TimeOfDay.fromDateTime(
                          currentValue ?? DateTime.now(),
                        ),
                      );
                      return DateTimeField.convert(time);
                    },
                  ),
                ),
                SizedBox(
                  width: 150,
                  child: DateTimeField(
                    format: timeFormat,
                    decoration: const InputDecoration(
                      labelText: 'End time',
                      suffixIcon: Icon(Icons.arrow_drop_down),
                    ),
                    style: const TextStyle(
                      color: Color(0xff244749),
                      fontFamily: 'WorkSans-Regular',
                      fontWeight: FontWeight.w600,
                    ),
                    onShowPicker: (context, currentValue) async {
                      final time = await showTimePicker(
                        context: context,
                        initialTime: TimeOfDay.fromDateTime(
                          currentValue ?? DateTime.now(),
                        ),
                      );
                      return DateTimeField.convert(time);
                    },
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 17,
            ),
            child: TextFormField(
              decoration: const InputDecoration(labelText: "Description"),
              style: const TextStyle(
                  color: Color(0xff244749),
                  fontFamily: 'WorkSans-Regular',
                  fontWeight: FontWeight.w600),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 17, vertical: 25),
            child: Text(
              'Category',
              style: TextStyle(
                //fontWeight: FontWeight,
                fontSize: 16,
                fontFamily: 'WorkSans-Regular',
                color: Color(0xff244749),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 40,
                  width: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xffF05454),
                  ),
                  child: const Center(
                    child: Text(
                'SPORT APP',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 12,
                    fontFamily: 'WorkSans-Regular',
                    color: Color(0xffFBFFE2),
                ),
              ),
                  ),
                ), 
                 Container(
                  height: 40,
                  width: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xffC4C4C4).withAlpha(200),
                  ),
                  child: const Center(
                    child: Text(
                'MEDICAL APP',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 12,
                    fontFamily: 'WorkSans-Regular',
                    color: Color(0xff244749),
                ),
              ),
                  ),
                ),

                Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xffC4C4C4).withAlpha(200),
                  ),
                  child: const Center(
                    child: Text(
                'RENT APP',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 12,
                    fontFamily: 'WorkSans-Regular',
                    color: Color(0xff244749),
                ),
              ),
                  ),
                )
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 17),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                
                 Container(
                  height: 40,
                  width: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xffC4C4C4).withAlpha(200),
                  ),
                  child: const Center(
                    child: Text(
                'BANKING APP',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 12,
                    fontFamily: 'WorkSans-Regular',
                    color: Color(0xff244749),
                ),
              ),
                  ),
                ),

                Container(
                  height: 40,
                  width: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xffC4C4C4).withAlpha(200),
                  ),
                  child: const Center(
                    child: Text(
                'GAMING PLATFORM APP',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 10,
                    fontFamily: 'WorkSans-Regular',
                    color: Color(0xff244749),
                ),
              ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 22),
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                        height: 40,
                        width: 370,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color(0xff577BC1),
                        ),
                        child: const Center(
                          child: Text(
                      'Create task',
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 14,
                          fontFamily: 'WorkSans-Regular',
                          color: Color(0xffFBFFE2),
                      ),
                    ),
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
