class PrayerTimesModel  {
  Map<String, dynamic>data;
  String months;
  PrayerTimesModel({ required this.data , required this.months}) {
  }
  factory PrayerTimesModel.formJson(Map<String, dynamic>json){
    return PrayerTimesModel(data: json["data"]["timings"],
        months: json["data"]["date"]["hijri"]["month"]["ar"]
    );
  }
}