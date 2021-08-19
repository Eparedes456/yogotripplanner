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
  String descripcion;
  String latitud;
  String longitud;
  
  

  LugaresCercanosModel({
    this.idAtractivo,
    this.nombre,
    this.urlImage,
    this.descripcion,
    this.latitud,
    this.longitud
      
  });

  factory LugaresCercanosModel.fromMap(Map<String, dynamic> json) => LugaresCercanosModel(
      idAtractivo   : json['idDestino'],
      nombre        : json['nombre'],
      urlImage      : json['urlImage'],
      descripcion   : json['descripcion'],
      latitud       : json['latitud'].toString(),
      longitud      : json['longitud'].toString()  
     
  );
      

  Map<String, dynamic> toMap() {
    return {
      'idAtractivo' : idAtractivo,
      'nombre'      : nombre,
      'urlImage'    : urlImage,
      'descripcion' : descripcion,
      'latitud'     : latitud,
      'longitud'    : longitud   
      
    };
  }
}