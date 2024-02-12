import 'package:http/http.dart' as http;
import 'package:dart_application_1/classes/pais.dart';
import 'package:dart_application_1/classes/reqres_respuesta.dart';

void getReqResp_service() {
  final url = Uri.parse('https://reqres.in/api/users?page=2');
  http.get(url).then((res) {
    final resReqRes = reqResRespuestaFromJsonFromJson(res.body);

    // final body = jsonDecode(res.body);
    // print(body);
    // print('page: ${body['page']}');
    // print('per_page: ${body['per_page']}');
    // print('id del tercer elemento: ${body['data'][2]['id']}');
    print('page: ${resReqRes.page}');
    print('per_page: ${resReqRes.perPage}');
    print('id del tercer elemento: ${resReqRes.data[2].id}');
  });
}

// Tarea

void getResponseFromApi() {
  final url = Uri.parse('https://restcountries.com/v2/alpha/pe');
  http.get(url).then((res) {
    final response = paisFromJson(res.body);
    print('País: ${response.name}');
    print('Población: ${response.population}');
    // print('Fronteras: ${response.borders}');
    print('fronteras:');
    response.borders.forEach((f) => print('    $f'));
    print('Lengua: ${response.languages[0].name}');
    print('Latitud: ${response.latlng[0]}');
    print('Longitud: ${response.latlng[1]}');
    print('Moneda: ${response.currencies[0].name}');
    print('Bandera: ${response.flag}');
    // final body = jsonDecode(res.body);
    // print(body);
  });
}
