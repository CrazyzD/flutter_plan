import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_plan/models/event.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isEnabled=false;
  bool req=false ;
  int _expandedIndex1;
  int _expandedIndex2;
  int _expandedIndex3;
  final List<Dat> weekday = [
    Dat(day: "1", weekday: "mon"),
    Dat(day: "2", weekday: "tue"),
    Dat(day: "3", weekday: "wed"),
    Dat(day: "4", weekday: "thu"),
    Dat(day: "5", weekday: "fri"),
    Dat(day: "6", weekday: "sat"),
    Dat(day: "7", weekday: "sun"),
    Dat(day: "8", weekday: "mon"),
    Dat(day: "9", weekday: "tue"),
    Dat(day: "10", weekday: "wed"),
    Dat(day: "11", weekday: "thu"),
    Dat(day: "12", weekday: "fri"),
    Dat(day: "13", weekday: "sat"),
    Dat(day: "14", weekday: "sun"),
    Dat(day: "15", weekday: "mon"),
    Dat(day: "16", weekday: "tue"),
    Dat(day: "17", weekday: "wed"),
    Dat(day: "18", weekday: "thu"),
    Dat(day: "19", weekday: "fri"),
    Dat(day: "20", weekday: "sat"),
    Dat(day: "21", weekday: "sun"),
    Dat(day: "22", weekday: "mon"),
    Dat(day: "23", weekday: "tue"),
    Dat(day: "24", weekday: "wed"),
    Dat(day: "25", weekday: "thu"),
    Dat(day: "26", weekday: "fri"),
    Dat(day: "27", weekday: "sat"),
    Dat(day: "28", weekday: "sun"),
    Dat(day: "29", weekday: "mon"),
    Dat(day: "30", weekday: "tue"),
    Dat(day: "31", weekday: "wed"),

  ];

  final List<String> months = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December",
  ];

  final List<String> hours = [
    "00:00",
    "00:30",
    "01:00",
    "01:30",
    "02:00",
    "02:30",
    "03:00",
    "03:30",
    "04:00",
    "04:30",
    "05:00",
    "05:30",
    "06:00",
    "06:30",
    "07:00",
    "07:30",
    "08:00",
    "08:30",
    "09:00",
    "09:30",
    "10:00",
    "10:30",
    "11:00",
    "11:30",
    "12:00",
    "12:30",
    "13:00",
    "13:30",
    "14:00",
    "14:30",
    "15:00",
    "15:30",
    "16:00",
    "16:30",
    "17:00",
    "17:30",
    "18:00",
    "18:30",
    "19:00",
    "19:30",
    "20:00",
    "20:30",
    "21:00",
    "21:30",
    "22:00",
    "22:30",
    "23:00",
    "23:30",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        SizedBox(
          height: 60,

        ),

        Container(

          margin: EdgeInsets.only(left: 10, top: 0, right: 0, bottom: 0),
          child: Text(
            "Book later",
            style: TextStyle(
                fontSize: 30,
                color: Colors.blue,
                fontWeight: FontWeight.bold),

          ),

        ),
        Container(
          margin: EdgeInsets.only(left: 10, top: 0, right: 0, bottom: 0),
          child: Text(
            "Adjust the cab arrival date and time",
            style: TextStyle(fontSize: 20, color: Colors.blue[100]),
          ),
        ),
        SizedBox(
          height: 60,
        ),
        Container(
            height: 40,

            child: ListView.builder(

              scrollDirection: Axis.horizontal,
              itemCount: months.length,
                itemBuilder: (_, index) => Container(


                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 0,
                  ),
                  child: TextButton(onPressed: (){setState((){
                    _expandedIndex1 = index ;});}, child:
                  Text(
                    "${months[index]}",
                    style: TextStyle(
                      
                      fontSize: 20,
                      color: _expandedIndex1 == index ? Colors.blue : Colors.blue[100],

                    ),
                  ),),

                ),

              )

            ),
        SizedBox(
          height: 40,
        ),
        Container(
          height: 100,
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: weekday.length,
            itemBuilder: (_, index) =>  Container(
              width: 60,
              alignment: Alignment.center,
              padding: EdgeInsets.all(0),
              margin: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 0,
              ),
              decoration: BoxDecoration(
                  color: _expandedIndex2 == index ? Colors.blue : Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.vertical(
                    top: Radius.circular(45), bottom: Radius.circular(45)),
              ),
              child: TextButton(onPressed: (){setState((){
                _expandedIndex2 = index ;});}, child: Wrap(
                  alignment: WrapAlignment.center,
                  direction: Axis.horizontal,

                  children: [
                    Text(
                      "${weekday[index].weekday}",
                      style: TextStyle(
                        fontSize: 20,
                          color: _expandedIndex2 == index ? Colors.white : Colors.blue,

                      ),
                    ),
                    Text(
                      "${weekday[index].day}",
                      style: TextStyle(
                        fontSize: 30,
                        color: _expandedIndex2 == index ? Colors.white : Colors.blue,
                      ),
                    ),
                  ]),),
            ),
          )
          ,
        ),
        SizedBox(
          height: 40,
        ),
        Container(
            height: 55,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: hours.length,
              itemBuilder: (_, index) => Container(
                  padding: EdgeInsets.all(0),
                  margin: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 0,
                  ),
                  decoration: BoxDecoration(
                    color: _expandedIndex3 == index ? Colors.blue : Colors.white,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(45),
                        right: Radius.circular(45)),
                  ),
                  child: TextButton(onPressed: (){setState((){
                    _expandedIndex3 = index ;});}, child: Text(
                    "${hours[index]}",
                    style: TextStyle(
                      fontSize: 25,
                      color: _expandedIndex3 == index ? Colors.white : Colors.blue,
                    ),
                  ),),
                ),
              )

            ),


            Container(
              alignment: Alignment.center,
margin: EdgeInsets.only(left: 200, top: 86,right: 0, bottom: 0),
              height: 100,
              width: 200,
              decoration: BoxDecoration(
              color: Colors.pink,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(45), bottomRight: Radius.circular(0)),
            ),
            child: TextButton(
              onPressed: (){print(_expandedIndex1);print(_expandedIndex2);print(_expandedIndex3);},
              child:  Text("SAVE",
              style: TextStyle(color:Colors.white, fontSize: 30 ) ),
            ),),






      ]),






    );

  }
}