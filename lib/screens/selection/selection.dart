import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Selection extends StatefulWidget {
  @override
  _SelectionState createState() => _SelectionState();
}

class _SelectionState extends State<Selection> {

  double happyness = 0;
  DateTime now = new DateTime.now();
  
  Color getColor(happyness) {
    if (happyness > 0) {
      return Colors.lightGreenAccent;
    } else if (happyness < 0) {
      return Colors.lightBlueAccent;
    } else {
      return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {


    String formattedDate = DateFormat('MMMM EEEE').format(now);

    Color sliderColor = getColor(happyness);
    

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // Padding(
              //   padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
              //   child: Text(
              //     'Today\'s date',
              //     textAlign: TextAlign.center,
              //     // style: Theme.of(context).textTheme.body1.copyWith(
              //     //   fontSize: 40.0
              //     // )
              //     style: TextStyle(
              //       fontSize: 40.0
              //     ),
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text("$formattedDate",
                  style: TextStyle(
                    fontSize: 40.0,
                  ),
                ),
              ),
              SizedBox(height: 40.0,),
              // Text('Today i\'m feeling ', style: TextStyle(
              //   fontSize: 30.0
              // ),),
              // SliderTheme(
              //   data: SliderThemeData(
              //     activeTrackColor: sliderColor,
              //   ),
              //   child: Slider.adaptive(
              //     value: happyness, 
              //     max: 1, 
              //     min: -1,
              //     divisions: 2,
              //     activeColor: sliderColor,
              //     inactiveColor: Colors.white,
              //     onChanged: (value) { 
              //       setState(() {
              //         happyness = value;
              //       });
              //     },
              //   ),
              // ),
              
            ],
          ),
        ),
      ),
    );
  }
}