import 'package:flutter/material.dart';
import 'Screens/Screen1/historical_places.dart';
import 'Screens/Screen2/see_around_places.dart';
import 'Screens/Screen3/about_rajkot_screen.dart';
import 'Splashscreen.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.blue,
      fontFamily: AutofillHints.language,
    ),
    home: SplashScreen(),
    routes: {
      'historical_places': (context) => HistoricalPlacesScreen(),
       'about_rajkot': (context) => AboutRajkotScreen(),
      // 'how_to_reach': (context) => HowToReachScreen(),
      // 'rajkot_in_map': (context) => RajkotInMapScreen(),
      // 'devotional_places': (context) => DevotionalPlacesScreen(),
      // 'amusement_parks': (context) => AmusementParksScreen(),
      // 'dams_lake': (context) => DamsLakeScreen(),
      // 'other_places': (context) => OtherPlacesScreen(),
       'places_to_see_around': (context) => PlacesToSeeAroundScreen(),
      // 'cinemas': (context) => CinemasScreen(),
      // 'hotels': (context) => HotelsScreen(),
      // 'malls': (context) => MallsScreen(),
      // 'travel_guide': (context) => TravelGuideScreen(),
      // 'distances': (context) => DistancesScreen(),
      // 'developer': (context) => DeveloperScreen(),
    },
    debugShowCheckedModeBanner: false,
  ));
}

