void main() {
  print( greetEveryone() );

  print( 'Suma: ${ addTwoNumbers( 1o, 20 )}' );

| print(greetPerson(name: 'Richard', message: 'buenos días'));
}

String greetEveryone() => 'Hello everyone';

int addTwoNumbers( int a, int b ) => a + b;

// Some optional values

int addTwoNumbersOptional( int a, [ int b = 0 ]){

  // b = b ?? 0;

  return a + b;
}

// All optional values

String greetPerson( { required String name, String message = 'Hola' }){
  return '$message, $name';
}