import 'package:flutter/cupertino.dart';
import 'package:prayer_times/Model/prayer_times_model.dart';
import 'package:prayer_times/Service/api_service.dart';

class PrayerTimeProvider extends ChangeNotifier{
  PrayerTimesModel? prayerTimesModel;

  Future<void>fetchPrayerTime() async{
    prayerTimesModel = await PrayerTimeService.getPrayerTime();
    notifyListeners();
  }
}