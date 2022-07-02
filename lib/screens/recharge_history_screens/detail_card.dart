import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../config/themes.dart';

class detail_card extends StatelessWidget {
  const detail_card({Key? key, required this.id_num, required this.station_name, required this.date_time, required this.status}) : super(key: key);
  final String id_num;
  final String station_name;
  final String date_time;
  final String status;


  //widget for custom pill according to the status
  Widget getPill(status){
    if(status=="Charging"){
      return Container(
        width: 110,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          color: app_colors.light_green,
        ),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Row(
            children: [
            Icon(
            Icons.flash_on,
            color: app_colors.dark_green,
            size: 20,
          ),

          Text(
            status,
            style: TextStyle(
                color: app_colors.dark_green,
                fontSize: 16
            ),
          ),
            ],
          ),
        ),
      );
    }
    else if(status=="Completed"){
      return Container(
        width: 130,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          color: app_colors.light_green ,
        ),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Row(
            children: [
              Icon(
                Icons.done,
                color: app_colors.dark_green,
                size: 20,
              ),

              SizedBox(width: 5,),

              Text(
                status,
                style: TextStyle(
                    color: app_colors.dark_green,
                    fontSize: 16
                ),
              ),
            ],
          ),
        ),
      );
    }
    else if(status=="Pending"){
      return Container(
        width: 110,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          color: app_colors.light_yellow,
        ),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Row(
            children: [
              Icon(
                Icons.hourglass_bottom,
                color: app_colors.dark_yellow,
                size: 20,
              ),
              SizedBox(width: 5,),

              Text(
                status,
                style: TextStyle(
                    color: app_colors.dark_yellow,
                    fontSize: 16
                ),
              ),
            ],
          ),
        ),
      );
    }
    else{
      return Container(
        width: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          color: app_colors.light_red,
        ),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Row(
            children: [
              Icon(
                Icons.error_outline,
                color: app_colors.dark_red,
                size: 20,
              ),

              SizedBox(width: 5,),

              Text(
                status,
                style: TextStyle(
                    color: app_colors.dark_red,
                    fontSize: 16
                ),
              ),
            ],
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        //height: 200,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          color: Theme.of(context).backgroundColor
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12,top: 12),
              child: Row(
                children: [
                  Text(
                    id_num,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12,top: 12),
              child: Row(
                children: [
                  Text(
                    station_name,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12,top: 12),
              child: Row(
                children: [
                  Text(
                    date_time,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12,top: 12,bottom: 20),
              child: Row(
                children: [
                  getPill(status),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


