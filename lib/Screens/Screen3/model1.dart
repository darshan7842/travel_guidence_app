class City {
  final int id;
  final String name;
  final String state;
  final String country;
  final int population;
  final double area;
  final int established;
  final String description;

  City({
    required this.id,
    required this.name,
    required this.state,
    required this.country,
    required this.population,
    required this.area,
    required this.established,
    required this.description,
  });

  factory City.fromJson(Map<String, dynamic> json) {
    return City(
      id: json['id'] is int ? json['id'] : int.parse(json['id']),
      name: json['name'],
      state: json['state'],
      country: json['country'],
      population: json['population'] is int ? json['population'] : int.parse(json['population']),
      area: json['area'] is double ? json['area'] : double.parse(json['area']),
      established: json['established'] is int ? json['established'] : int.parse(json['established']),
      description: json['description'],
    );
  }
}
