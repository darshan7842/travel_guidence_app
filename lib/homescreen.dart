import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> gridItems = [
    {
      'title': 'About Rajkot',
      'color': Colors.red,
      'route': 'about_rajkot',
      'icon': Icons.location_city
    },
    {
      'title': 'How to Reach',
      'color': Colors.grey,
      'route': 'how_to_reach',
      'icon': Icons.directions_bus_filled_rounded
    },
    {
      'title': 'Rajkot in Map',
      'color': Colors.green,
      'route': 'rajkot_in_map',
      'icon': Icons.location_on
    },
    {
      'title': 'Historical Places',
      'color': Colors.blue,
      'route': 'historical_places',
      'icon': Icons.history_edu_outlined
    },
    {
      'title': 'Devotional Places',
      'color': Colors.teal,
      'route': 'devotional_places',
      'icon': Icons.temple_hindu
    },
    {
      'title': 'Amusement Parks',
      'color': Colors.brown,
      'route': 'amusement_parks',
      'icon': Icons.roller_shades_outlined
    },
    {
      'title': 'Dams / Lake',
      'color': Colors.cyan,
      'route': 'dams_lake',
      'icon': Icons.water_drop_outlined
    },
    {
      'title': 'Other Places',
      'color': Colors.blueGrey,
      'route': 'other_places',
      'icon': Icons.location_city
    },
    {
      'title': 'Places to See Around',
      'color': Colors.pink,
      'route': 'places_to_see_around',
      'icon': Icons.photo_camera_outlined
    },
    {
      'title': 'Cinemas',
      'color': Colors.purple,
      'route': 'cinemas',
      'icon': Icons.movie_filter_outlined
    },
    {
      'title': 'Hotels',
      'color': Colors.orange,
      'route': 'hotels',
      'icon': Icons.hotel
    },
    {
      'title': 'Malls',
      'color': Colors.yellow,
      'route': 'malls',
      'icon': Icons.store_mall_directory_sharp
    },
    {
      'title': 'Travel Guide',
      'color': Colors.deepPurple,
      'route': 'travel_guide',
      'icon': Icons.tour_outlined
    },
    {
      'title': 'Distances',
      'color': Colors.deepOrange,
      'route': 'distances',
      'icon': Icons.location_pin
    },
    {
      'title': 'Developer',
      'color': Colors.blueAccent,
      'route': 'developer',
      'icon': Icons.code
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Travel Guide'),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(8.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: gridItems.length,
        itemBuilder: (context, index) {
          final item = gridItems[index];
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, item['route']);
            },
            child: Container(
              color: item['color'],
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      item['icon'],
                      size: 40,
                      color: Colors.white,
                    ),
                    SizedBox(height: 8),
                    Text(
                      item['title'],
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}