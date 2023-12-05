void Main() {

  // Tipos de datos

  final String pokemon = 'Ditto';

  final inst hp = 100;

  final bool isAlive = true; // false // null

  final List<String> abilities = ['impostor', 'protagonista'];

  final Map<int, String>{
    1: 'ditto/front.png',
    2: 'ditto/back.png',
  }

  final sprites = <String>['ditto/front.png','ditto/back.png'];

  // Dynamic == null (permite cualquier valor)

  dynamic errorMessage = 'Error';
  errorMessage = true;
  errorMessage = [1,2,3,4,5,6];
  errorMessage = {1,2,3,4,5,6};
  errorMessage = () => true;
  errorMessage = null;


  print("""

    $pokemon
    $hp
    $isAlive
    $abilities
    $sprites

    $errorMessage

  """);
}