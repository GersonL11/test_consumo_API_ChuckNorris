class Respuesta {
  String? value;

  Respuesta({
    required this.value,
  });

  factory Respuesta.fromJson(Map<String, dynamic> json) {
    return Respuesta(
      value: json["value"] ?? "", // Use an empty string as a default value
    );
  }
}


