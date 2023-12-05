void main() {

  final windPlant = WindPlant( initialEnergy: 100 );
  final nuclearPlant = NuclearPlant( energyLeft: 1000 );

  print(windPlant);
  print(nuclearPlant);

  print( 'wind: ${ chargePhone( windPlant ) }');
  print( 'nuclear: ${ chargePhone( nuclearPlant ) }');

}

double chargePhone( EnergyPlant plant) {
  if( plant.energyLeft < 10 ){
    throw Exception('Not enough energy');
  }

  return plant.energyLeft - 10;
}

// ENUM
enum PlantType {
  nuclear,
  wind,
  water
}

// ABSTRACT
abstract class EnergyPlant {

  double energyLeft;

  final PlantType type;

  EnergyPlant({
    required this.energyLeft,
    required this.type
  });

  void consumeEnergy( double amount );
}

// EXTENDS
class WindPlant extends EnergyPlant {

  WindPlant({ required double initialEnergy })
    : super( energyLeft: initialEnergy, type: PlantType.wind );

  @override
  void consumeEnergy( double amount ){
    energyLeft -= amount;
  }
}

// IMPLEMENTS (obliga a usar override)
class NuclearPlant implements EnergyPlant {

  @override
  double energyLeft;

  @override
  final PlantType type = PlantType.nuclear;

  NuclearPlant({ required this.energyLeft });

  @override
  void consumeEnergy( double amount ){
    energyLeft -= (amount * 0.5);
  }
}