void main() async {

  print('Inicio del programa');

  try {

  final value = await httpGet('https://fernando-herrera.com/cursos');
  print('Value: $value');

  } on Exception catch(err) {
    print('Tenemos una Exception: $err');

  } catch (err){
    print('Tenemos un error: $err');

  } finally {
    print('Fin del try catch');
  }

  print('Fin del programa');
}

Future<String> httpGet( String url ) async {
  await Future.delayed( const Duration(seconds: 1));

  throw Exception('No hay parámetro en la url');

  // throw 'Error en la petición'; // nunca llega por el Exception

  // return 'Tenemos un valor de la petición'; // nunca llega aquí por el throw o Exception
}