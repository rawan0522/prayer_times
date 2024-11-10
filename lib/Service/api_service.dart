import 'package:dio/dio.dart';
import 'package:prayer_times/Model/prayer_times_model.dart';

class PrayerTimeService{
static Dio dio = Dio();
static Future<PrayerTimesModel> getPrayerTime() async{

 try{
   String Url = "http://api.aladhan.com/v1/timingsByCity?country=EG&city=cairo";
   var response = await dio.get(Url);
   if(response.statusCode == 200){
    print(response.data["data"]["date"]["hijri"]["month"]);
     return PrayerTimesModel.formJson(response.data);
   }else{
     throw Exception("fail to load");
   }
 }catch(e){
   throw Exception(e.toString());
 }

}
}