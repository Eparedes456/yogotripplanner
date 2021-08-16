import 'package:flutter/material.dart';

class DertailHotelPage extends StatelessWidget {
  const DertailHotelPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Image.network(
                  'https://cache.marriott.com/marriottassets/marriott/HANHS/hanhs-lakeside-garden-7754-hor-wide.jpg?interpolation=progressive-bilinear&downsize=1440px:*',
                  height: MediaQuery.of(context).size.height * 0.30,
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,
                ),
                Container(
                  padding: EdgeInsets.only(top: 50),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                              size: 30,
                            ),
                            Spacer(),
                            Icon(Icons.share, size: 27, color: Colors.white),
                            SizedBox(
                              width: 8,
                            ),
                            Icon(Icons.favorite_border,
                                size: 27, color: Colors.white)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.24,
                        left: 20,
                        right: 20),
                    child: Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.65,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.7),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15))),
                          child: Padding(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Sheraton Hanoi Hotel',
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            'S/300.00',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          Text('por noche')
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    'Jr.Rioja 132 - Tarapoto',
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                        size: 15,
                                      ),
                                      Icon(Icons.star,
                                          color: Colors.amber, size: 15),
                                      Icon(Icons.star,
                                          color: Colors.amber, size: 15),
                                      Icon(Icons.star,
                                          color: Colors.amber, size: 15),
                                      Icon(Icons.star,
                                          color: Colors.amber, size: 15),
                                      SizedBox(
                                        width: 30,
                                      ),
                                      Text(
                                        '5.0',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'Comodidades',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Container(
                                    height: 40,
                                    child: ListView(
                                      scrollDirection: Axis.horizontal,
                                      children: [
                                        Text('Gym'),
                                        SizedBox(
                                          width: 12,
                                        ),
                                        Text('Spa'),
                                        SizedBox(
                                          width: 12,
                                        ),
                                        Text('Restaurante')
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Ver todas las comodidas'),
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                        child: Center(
                                          child: Icon(
                                            Icons.arrow_forward_ios,
                                            size: 20,
                                            color: Colors.white,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Text('Ubicación'),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.pin_drop,
                                        size: 18,
                                      ),
                                      Text('Jr. Rioja 435 - Tarapoto')
                                    ],
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.2,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  'https://i0.wp.com/cssscript.com/wp-content/uploads/2018/03/Simple-Location-Picker.png?fit=561%2C421&ssl=1'),
                                              fit: BoxFit.cover))),
                                  SizedBox(height: 12),
                                  ListTile(
                                    title: Text('Servicios'),
                                    trailing: Icon(Icons.arrow_forward_ios),
                                  ),
                                  ListTile(
                                    title: Text('Reglas del hotel'),
                                    trailing: Icon(Icons.arrow_forward_ios),
                                  ),
                                  ListTile(
                                    title: Text('Reglas del hotel'),
                                    trailing: Icon(Icons.arrow_forward_ios),
                                  ),
                                  ListTile(
                                    title: Text('Reglas del hotel'),
                                    trailing: Icon(Icons.arrow_forward_ios),
                                  ),
                                  ListTile(
                                    title: Text('Reglas del hotel'),
                                    trailing: Icon(Icons.arrow_forward_ios),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
          height: 100,
          decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
          child: Center(
            child: ElevatedButton(
                onPressed: () {}, child: Text('Escoger habitación')),
          )),
    );
  }
}
