import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_consumoapi/presentation/home_screen.dart';
import 'package:test_consumoapi/providers/respuesta_provider.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => RespuestaGif())],
      child: const MaterialApp(debugShowCheckedModeBanner: false, home: Home()),
    );
  }
}
