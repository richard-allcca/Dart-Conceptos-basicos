void main() {

  final ironman = Hero(
    isAlive: false,
    power: 'Money',
    name: 'Tony Stark'
  );

  // Create simulation JSON
  final Map<String, dynamic> rawJson = {
    'name': 'Spiderman',
    'power': 'Trepar paredes',
    'isAlive': true
  };

  // Hero name from Json
  final ironman = Hero.fromJson( rawJson);

}

class Hero {

  String name;
  String power;
  bool isAlive;

  Hero({
    required this.name,
    required this.power,
    required this.isAlive
  });

  Hero.fromJson( Map<String, dynamic> json)
    : name = json['name'] ?? 'No name found',
      power = json['power'] ?? 'No power found',
      isAlive = json['isAlive'] ?? 'No isAlive found';

  @override
  String toString() {
    return '$name, $power isAlive: ${ isAlive ? 'YES' : 'NO' }';
  }
}