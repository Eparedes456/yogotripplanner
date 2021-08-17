import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiServices{



  var dev_url = 'http://digital.regionsanmartin.gob.pe/turismo-api';
  
  loginUser(String username , String pass)async{

    var url = Uri.parse(dev_url + '/api/auth');
    Map dataSend = {"password": "123456", "username": "alejopelejo@hotmail.com"};
    String body = json.encode(dataSend);
    var response = await http.post(
      url,
      headers: {
          'Content-Type': 'application/json',
          //'Accept': 'application/json',
          
      },
      body:body
    );

    if(response.statusCode == 200 || response.statusCode == 201){

      var decodedData = json.decode(response.body);

      return decodedData;

    }else if(response.statusCode == 500){

      print('error de servidor');
      return 1;

    }else if(response.statusCode == 404){
      print('ruta no encontrada, verifique la ruta de envio');
      return 2;
    }


  }

  getAllDestination(String token)async{

    var url = Uri.parse(dev_url + '/api/v1/destino/all');
    
    var response = await http.get(
      url,
      headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token'
          //'Accept': 'application/json',
          
      },
     
    );

    if(response.statusCode == 200 || response.statusCode == 201){

      var decodedData = json.decode(response.body);

      return decodedData;

    }else if(response.statusCode == 500){

      print('error de servidor');
      return 1;

    }else if(response.statusCode == 404){
      print('ruta no encontrada, verifique la ruta de envio');
      return 2;
    }

  }

  getNearPlaces(String token,double latitud,double longitud)async{

    var url = Uri.parse(dev_url + '/api/v1/atractivo/getAtractivosGeo?categorias=1,2,3,4,5,6&latitud=$latitud&longitud=$longitud&radio=20');
    
    var response = await http.get(
      url,
      headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token'
          //'Accept': 'application/json',
          
      },
     
    );

    if(response.statusCode == 200 || response.statusCode == 201){

      var decodedData = json.decode(response.body);

      return decodedData;

    }else if(response.statusCode == 500){

      print('error de servidor');
      return 1;

    }else if(response.statusCode == 404){
      print('ruta no encontrada, verifique la ruta de envio');
      return 2;
    }

  }




}