import 'package:flutter/material.dart';
import 'package:prayer_times/Model/prayer_times_model.dart';
import 'package:prayer_times/Providers/prayer_time_provider.dart';
import 'package:prayer_times/Widgets/prayer_time_card.dart';
import 'package:provider/provider.dart';
class PrayerTimesScreen extends StatelessWidget {
  const PrayerTimesScreen({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Prayer Times", style: TextStyle(fontSize: 25,color:Colors.black,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.yellow.shade600,
      ),
      body: Consumer<PrayerTimeProvider>(
          builder: (context, provider, child){
            final ProviderTimeV = provider.prayerTimesModel;
            if(ProviderTimeV == null){
              provider.fetchPrayerTime();
              return Center(child: CircularProgressIndicator(),);
            }else{
              return ListView.separated(
                  itemBuilder: (context, index) {
                    final name = ProviderTimeV.data.keys;
                    final time = ProviderTimeV.data.values;
                    final month = ProviderTimeV.months;
                    return PrayerTimeCard(PrayerName: name.elementAt(index)
                      ,PrayerTime: time.elementAt(index),
                      month: provider.prayerTimesModel!.months
                    );
                  },
                  separatorBuilder: (context, index) => const SizedBox(height: 5,),
                  itemCount: ProviderTimeV.data.length);
            }
          },
      ),
    );
  }

}
