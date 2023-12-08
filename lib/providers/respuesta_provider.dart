import 'package:flutter/material.dart';
import 'package:test_consumoapi/domain/entities/respuesta.dart';
import 'package:test_consumoapi/helper/get_gif_answer.dart';

class RespuestaGif extends ChangeNotifier {
  final _getResponse = GetGifAnswer();

  Respuesta mensaje = Respuesta(value: '');

  Future<void> loadRespuesta() async {
    mensaje = await _getResponse.getGif();
    notifyListeners();
  }
}
