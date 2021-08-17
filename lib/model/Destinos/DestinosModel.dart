import 'dart:convert';

DestinoModel proyectoFromJson(String str) {
  final jsonData = json.decode(str);
  return DestinoModel.fromMap(jsonData);
}

String proyectoToJson(DestinoModel data) {
  final dyn = data.toMap();

  return json.encode(dyn);
}

class DestinoModel {
  int idDestino;
  String nombre;
  String urlImage;
  
  

  DestinoModel({
    this.idDestino,
    this.nombre,
    this.urlImage
      
  });

  factory DestinoModel.fromMap(Map<String, dynamic> json) => DestinoModel(
      idDestino: json['idDestino'],
      nombre: json['nombre'],
      urlImage: json['urlImage'],
     
  );
      

  Map<String, dynamic> toMap() {
    return {
      'idDestino': idDestino,
      'nombre': nombre,
      'urlImage': urlImage,

      
    };
  }
}