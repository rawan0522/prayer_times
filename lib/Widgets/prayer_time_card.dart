import 'package:flutter/material.dart';
class PrayerTimeCard extends StatelessWidget {
  const PrayerTimeCard(
      {super.key, required this.PrayerTime, required this.PrayerName,required this.month});
  final String PrayerName;
  final String PrayerTime;
  final String month;
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(12),
      shadowColor: Colors.black,
      color: Colors.yellowAccent[100],
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(PrayerName , style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(PrayerTime , style: TextStyle(fontSize:20 , ),),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(month , style: TextStyle(fontSize:20 , ),),
          ),
        ],
      ),
    );
  }

}