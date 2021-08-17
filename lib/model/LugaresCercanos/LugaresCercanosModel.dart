import 'package:flutter/material.dart';

import 'dart:convert';

LugaresCercanosModel proyectoFromJson(String str) {
  final jsonData = json.decode(str);
  return LugaresCercanosModel.fromMap(jsonData);
}

String proyectoToJson(LugaresCercanosModel data) {
  final dyn = data.toMap();

  return json.encode(dyn);
}

class LugaresCercanosModel {
  int idAtractivo;
  String nombre;
  String urlImage;
  
  

  LugaresCercanosModel({
    this.idAtractivo,
    this.nombre,
    this.urlImage
      
  });

  factory LugaresCercanosModel.fromMap(Map<String, dynamic> json) => LugaresCercanosModel(
      idAtractivo: json['idDestino'],
      nombre: json['nombre'],
      urlImage: json['urlImage'],
     
  );
      

  Map<String, dynamic> toMap() {
    return {
      'idAtractivo': idAtractivo,
      'nombre': nombre,
      'urlImage': urlImage,

      
    };
  }
}