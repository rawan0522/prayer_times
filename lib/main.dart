import 'package:flutter/material.dart';
import 'package:prayer_times/Providers/prayer_time_provider.dart';
import 'package:prayer_times/Screens/prayer_times_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ChangeNotifierProvider(create: (context) => PrayerTimeProvider(),child: PrayerTimesScreen(),),
    );
  }
}

