import 'package:evy_task/config/themes.dart';
import 'package:evy_task/screens/map.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../model/model.dart';
import '../menu.dart';
import 'detail_card.dart';


class recharge_history_screen extends StatefulWidget {
  const recharge_history_screen({Key? key}) : super(key: key);

  @override
  State<recharge_history_screen> createState() => _recharge_history_screenState();
}

class _recharge_history_screenState extends State<recharge_history_screen> {
  int currentIndex=1;
  final screens =[
      map_page(),
      page_body(),
      menu_page()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Theme.of(context).backgroundColor,
        selectedFontSize: 16,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.map_outlined),
            label: 'Map',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history_edu_outlined),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menu',
          ),
        ],
      ),
    );
  }
}


//body for recharge history page-
class page_body extends StatelessWidget {
   page_body({Key? key}) : super(key: key);
  List<model> content=[
    model('TXC200314','Arihant Food Plaza ','6:00 pm, 2 nov','Charging'),
    model('TXC200314','Arihant Food Plaza','6:00 pm, 2 nov','Completed'),
    model('TXC200314','Arihant Food Plaza','6:00 pm, 2 nov','Pending'),
    model('TXC200314','Arihant Food Plaza','6:00 pm, 2 nov','Error'),
    model('TXC200314','Arihant Food Plaza','6:00 pm, 2 nov','Completed'),
    model('TXC200314','Arihant Food Plaza','6:00 pm, 2 nov','Pending'),
    model('TXC200314','Arihant Food Plaza','6:00 pm, 2 nov','Error'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //heading
          Padding(
            padding: const EdgeInsets.only(top: 44,left: 12,bottom: 12),
            child: Row(
              children:  [
                Text(
                  "Charging History",
                  style: Theme.of(context).textTheme.headline1,
                ),
              ],
            ),
          ),

          //list view for charging status
          Expanded(
            child: ListView.builder(scrollDirection: Axis.vertical,shrinkWrap: true,itemCount: content.length, itemBuilder: ((context, index) {
              return detail_card(id_num:content[index].id, station_name: content[index].name, date_time: content[index].time_date, status: content[index].status);
            })),
          ),
        ],
      ),
    );
  }
}

