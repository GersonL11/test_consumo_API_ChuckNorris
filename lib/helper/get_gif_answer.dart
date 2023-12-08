import 'package:dio/dio.dart';
import 'package:test_consumoapi/domain/entities/respuesta.dart';

class GetGifAnswer {
  final String url = "https://api.chucknorris.io/jokes/random";
  final _dio = Dio();

  Future<Respuesta> getGif() async {
    final response = await _dio.get(url);
    final respuestaGif = Respuesta.fromJson(response.data);
    return respuestaGif;
  }
}
