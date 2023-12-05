void main() {

  final Hero wolverine = Hero(name: 'Logan',power: 'Regeneration');

  print( wolverine );

  // print( wolverine.toString() );
}

class Hero {

  String name;
  String power;

  // Constructor Opcional

  //   Hero( String pName, String pPower )
  //     : name = pName,
  //       power = pPower;

  //  Constructor recommended

  // Hero( this.name, this.power );

// Constructor with values positional
  Hero( {
    required this.name,
    this.power = 'sin poder'

  } );

  // Override

  @override
  String toString() {
    return '$name - $power';
  }
}