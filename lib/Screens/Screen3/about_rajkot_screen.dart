import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'model1.dart';

class AboutRajkotScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('City Details', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
      ),
      body: CityDetailsList(),
    );
  }
}

class CityDetailsList extends StatefulWidget {
  @override
  _CityDetailsListState createState() => _CityDetailsListState();
}

class _CityDetailsListState extends State<CityDetailsList> {
  Future<List<City>> fetchCities() async {
    try {
      final response = await http.get(Uri.parse('https://darshan7842.000webhostapp.com/Travel_guidence_app/citydetails.php'));
      if (response.statusCode == 200) {
        final List<dynamic> data = jsonDecode(response.body);
        return data.map((city) => City.fromJson(city)).toList();
      } else {
        throw Exception('Failed to load cities. HTTP error: ${response.statusCode}');
      }
    } catch (e) {
      print('Error fetching cities: $e');
      throw Exception('Failed to load cities. Please try again later.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<City>>(
      future: fetchCities(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: Text('Loading city details...'));
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return Center(child: Text('No city details found'));
        } else {
          final cities = snapshot.data!;
          return ListView.builder(
            itemCount: cities.length,
            itemBuilder: (context, index) {
              final city = cities[index];
              return Card(
                color: Colors.red[400],
                margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Name: ${city.name}', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.greenAccent)),
                      SizedBox(height: 8),
                      Text('State: ${city.state}', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.greenAccent)),
                      SizedBox(height: 8),
                      Text('Country: ${city.country}', style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold,color: Colors.greenAccent)),
                      SizedBox(height: 8),
                      Text('Population: ${city.population}', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.greenAccent)),
                      SizedBox(height: 8),
                      Text('Area: ${city.area} sq km', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.greenAccent)),
                      SizedBox(height: 8),
                      Text('Established: ${city.established}', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.greenAccent)),
                      SizedBox(height: 10),
                      Text('Description: ${city.description}', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.white)),
                    ],
                  ),
                ),
              );
            },
          );
        }
      },
    );
  }
}
