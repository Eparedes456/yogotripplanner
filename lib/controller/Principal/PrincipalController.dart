import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:yogotripplaner/model/Destinos/DestinosModel.dart';
import 'package:yogotripplaner/model/LugaresCercanos/LugaresCercanosModel.dart';
import 'package:yogotripplaner/services/ApiServices.dart';

class PrincipalController extends GetxController{

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    //validarUsuario();
    getPermision();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  ApiServices apiconexion = new ApiServices();
  String token = "";
  List<DestinoModel> listDestino = [];
  List<LugaresCercanosModel> listLugaresCercanos = [];
  LocationPermission permission;


  getPermision()async{
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      // Permissions are denied, next time you could try
      // requesting permissions again (this is also where
      // Android's shouldShowRequestPermissionRationale 
      // returned true. According to Android guidelines
      // your App should show an explanatory UI now.
      return Future.error('Location permissions are denied');
    }else if(permission == LocationPermission.whileInUse){

      var data = await Geolocator.getCurrentPosition();

    }
  }else if(permission == LocationPermission.whileInUse || permission == LocationPermission.always ){

    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    await validarUsuario(position.latitude,position.longitude);
    
  }

  }

  validarUsuario(double latitud, double longitud)async{

    var data = await apiconexion.loginUser('username', 'pass');
    print(data);
    token = data['token'];

    await getDestinos(token);
    await getNearbyPlaces(latitud,longitud,token);

  }

  getDestinos(String token)async{

    var data = await apiconexion.getAllDestination(token); 
    for (var i = 0; i < data.length; i++) {

      listDestino.add(
        DestinoModel(
          idDestino: data[i]['idDestino'],
          nombre: data[i]['nombre'],
          urlImage: data[i]['multimedia'][0]['idMultimedia'].toString()
        )
      );
      
    }
      
    update();

  }

  getNearbyPlaces(double latitud,double longitud,String token)async{
    var data = await apiconexion.getNearPlaces(token,latitud,longitud);
    print(data);
    for (var i = 0; i < data.length; i++) {

      listLugaresCercanos.add(
        LugaresCercanosModel(
          idAtractivo: data[i]['idAtractivo'],
          nombre: data[i]['nombre'],
          urlImage: data[i]['multimedia'][0]['idMultimedia'].toString()
        )
      );
      
    }
    update();
  }


}