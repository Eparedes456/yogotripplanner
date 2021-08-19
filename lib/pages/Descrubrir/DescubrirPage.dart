import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:yogotripplaner/controller/Principal/PrincipalController.dart';
import 'package:yogotripplaner/pages/Atractivo/AtractivoPage.dart';
import 'package:yogotripplaner/pages/TouristPlace/TouristPlacePage.dart';
import 'package:get/get.dart';

class DescubrirPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PrincipalController>(
      init: PrincipalController(),
      builder:(_)=> Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.30,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/foto1.jpg'
                              ),
                              fit: BoxFit.cover)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 20, top: 80),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.pin_drop,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    'Estas en Perú',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                ],
                              ),
                              Text(
                                'Descubrir',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                    letterSpacing: 1.5),
                              )
                            ],
                          ),
                          CircleAvatar(
                            radius: 35,
                            backgroundImage: NetworkImage(
                                'https://www.dzoom.org.es/wp-content/uploads/2020/02/portada-foto-perfil-redes-sociales-consejos.jpg'),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 20,
                          right: 20,
                          top: MediaQuery.of(context).size.height * 0.27),
                      child: Container(
                        height: 45,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(30, 90, 255, 1)
                                      .withOpacity(0.5),
                                  blurRadius: 10,
                                  offset: Offset(1, 4))
                            ]),
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 2,
                            right: 2,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Icon(Icons.search),
                                hintText: 'Hola Sara, a donde quieres ir?'),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Para ti',
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      GestureDetector(
                        onTap: () {
                          print('tapped');
                        },
                        child: Row(
                          children: [
                            Text(
                              'Ver todos',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Icon(Icons.arrow_forward_ios,
                                size: 14, color: Colors.grey)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 200,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _.listDestino.length,
                      itemBuilder: (BuildContext context, index) {
                        return GestureDetector(
                          onTap: () {

                            /*Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    TouristPlacePage()));*/
                            Get.to(
                              TouristPlacePage(),
                              arguments: _.listDestino[index]
                            );

                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 8, right: 8),
                                child: Container(
                                    height: 150,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        //color: Colors.black,
                                        borderRadius: BorderRadius.circular(20),
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                'http://digital.regionsanmartin.gob.pe/turismo-api/api/v1/multimedia/${_.listDestino[index].urlImage}/thumbnail'),
                                            fit: BoxFit.cover))),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              /*Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Text(_.listDestino[index].nombre),
                              ),*/
                              Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.pin_drop,
                                      color: Color.fromRGBO(30, 90, 255, 1),
                                      size: 20,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      _.listDestino[index].nombre,
                                      style: TextStyle(
                                        color: Color.fromRGBO(30, 90, 255, 1),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      }),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Text(
                    'Stories',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 80,
                  //color: Colors.blue,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Container(
                          height: 68,
                          width: 68,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.black),
                          child: Center(
                            child: Icon(
                              FontAwesomeIcons.plus,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Expanded(
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 12,
                              itemBuilder: (BuildContext context, index) {
                                return Padding(
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  child: Container(
                                    width: 68,
                                    height: 68,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        gradient: LinearGradient(
                                            colors: [
                                              Color(0xFF9B2282),
                                              Color(0xFFEEA863)
                                            ],
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Container(
                                        height: 65,
                                        width: 65,
                                        decoration: BoxDecoration(
                                            border: Border.all(),
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    'https://youqueen.com/wp-content/uploads/2017/04/shutterstock_326882615.jpg'),
                                                fit: BoxFit.cover)),
                                      ),
                                    ),
                                  ),
                                );
                              }),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Lugares cercanos',
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      GestureDetector(
                        onTap: () {
                          print('tapped');
                        },
                        child: Row(
                          children: [
                            Text(
                              'Ver todos',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Icon(Icons.arrow_forward_ios,
                                size: 14, color: Colors.grey)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 200,
                  width: double.infinity,
                  //color: Colors.blue,
                  child: ListView.builder(
                    itemCount: _.listLugaresCercanos.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index){

                      return Padding(
                        padding: EdgeInsets.only(left: 20, right: 10),
                        child: GestureDetector(
                          onTap:(){

                            Get.to(
                              AtractivoPage(),
                              arguments: _.listLugaresCercanos[index]
                            );
                          },
                          child: Container(
                            //height: 10,
                            width: 150,
                            
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'http://digital.regionsanmartin.gob.pe/turismo-api/api/v1/multimedia/${_.listLugaresCercanos[index].urlImage}/thumbnail'),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    _.listLugaresCercanos[index].nombre,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  /*Text(
                                    '12344445 viajeros aqui',
                                    style: TextStyle(color: Colors.white),
                                  ),*/
                                  SizedBox(
                                    height: 20,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                    },
                    
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          'Experiencias destacadas',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          print('tapped');
                        },
                        child: Row(
                          children: [
                            Text(
                              'Ver todos',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Icon(Icons.arrow_forward_ios,
                                size: 14, color: Colors.grey)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 360,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 8, right: 8),
                            child: Container(
                                height: 270,
                                width: 220,
                                decoration: BoxDecoration(
                                    //color: Colors.black,
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            'https://estaticos.muyinteresante.es/media/cache/400x300_thumb/uploads/images/gallery/5e738ecb5bafe82eb0d155ca/personas-cocinando-redes.jpg'),
                                        fit: BoxFit.cover))),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text(
                              'Clase de Cocina',
                              style: TextStyle(color: Colors.grey[600]),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text(
                              'Cocina Tradicional Selvatica',
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.pin_drop,
                                  color: Color.fromRGBO(30, 90, 255, 1),
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'La Patarashca, Tarapoto',
                                  style: TextStyle(
                                    color: Color.fromRGBO(30, 90, 255, 1),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 8, right: 8),
                            child: Container(
                                height: 270,
                                width: 220,
                                decoration: BoxDecoration(
                                    //color: Colors.black,
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            'https://turismoi.pe/uploads/photo/photo_file/20113/optimized_Rio_Mayo.jpg'),
                                        fit: BoxFit.cover))),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text(
                              'Canotaje',
                              style: TextStyle(color: Colors.grey[600]),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text(
                              'Canotaje extremo Rio Mayo',
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.pin_drop,
                                  color: Color.fromRGBO(30, 90, 255, 1),
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Xperience Xtreme, Maceda',
                                  style: TextStyle(
                                    color: Color.fromRGBO(30, 90, 255, 1),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
