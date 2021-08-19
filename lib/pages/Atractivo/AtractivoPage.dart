import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:yogotripplaner/controller/Atractivo/AtractivoController.dart';
import 'package:yogotripplaner/pages/Hotel/DetailHotelPage.dart';

class AtractivoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AtractivoController>(
      init: AtractivoController(),
      builder: (_)=> Scaffold(
          body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.network(
                  'https://ik.imagekit.io/tvlk/xpe-asset/AyJ40ZAo1DOyPyKLZ9c3RGQHTP2oT4ZXW+QmPVVkFQiXFSv42UaHGzSmaSzQ8DO5QIbWPZuF+VkYVRk6gh-Vg4ECbfuQRQ4pHjWJ5Rmbtkk=/2000513891053/Jeju%2520Island%25203%2520Options%2520Private%2520Day%2520Tour%2520-%25208-hour%2520Tour%2520by%2520Wondertrip-f29ae91a-8c80-4dce-ac03-7609117452e7.jpeg?_src=imagekit&tr=c-at_max,h-512,q-60,w-720',
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
                        top: MediaQuery.of(context).size.height * 0.27),
                    child: Container(
                      height: 30,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30))),
                    ),
                  ),
                )
              ],
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      children: [
                        Text(
                          'Jeju Island',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.cloud,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Text(
                          '20°',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
    
                  Padding(
                    padding: EdgeInsets.only(left: 20, top: 8),
                    child: Row(
                      children: [
                        Icon(Icons.pin_drop, size: 15, color: Colors.blue),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'South Korea',
                          style: TextStyle(color: Colors.blue),
                        )
                      ],
                    ),
                  ),
    
                  SizedBox(
                    height: 20,
                  ),
    
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Text(
                        'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type .'),
                  ),
    
                  SizedBox(
                    height: 20,
                  ),
    
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Donde quedar',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Text(
                              'Ver todo',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 18,
                              color: Colors.grey,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
    
                  SizedBox(height: 20),
    
                  Container(
                    height: 300,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (BuildContext context, index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      DertailHotelPage()));
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 8, right: 8),
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: 180,
                                        width: 150,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/19/ff/a9/f4/habitaciones-con-vista.jpg?w=600&h=300&s=1'),
                                                fit: BoxFit.cover)),
                                      ),
                                      Positioned(
                                          top: 15,
                                          right: 10,
                                          child: IconButton(
                                              onPressed: () {},
                                              icon: Icon(Icons.favorite),
                                              color: Colors.grey[300]
                                                  .withOpacity(0.9)))
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 15, right: 15),
                                  child: Container(
                                    width: 150,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Hotel',
                                          style: TextStyle(color: Colors.grey),
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
                                                color: Colors.amber, size: 15)
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Container(
                                      width: 150,
                                      child: Text('Las Hamacas Hotel')),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Container(
                                    width: 150,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding: EdgeInsets.only(right: 8),
                                            child: Container(
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    Icons.pin_drop,
                                                    color: Color.fromRGBO(
                                                        30, 90, 255, 1),
                                                    size: 20,
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    'La Libertad',
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      color: Color.fromRGBO(
                                                          30, 90, 255, 1),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(left: 20, right: 20),
                                    child: Text(
                                      'S/.300.00',
                                      style: TextStyle(fontSize: 12),
                                    ))
                              ],
                            ),
                          );
                        }),
                  ),
    
                  //SizedBox(height: 20,),
    
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Actividades',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Text(
                              'Ver todo',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 18,
                              color: Colors.grey,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
    
                  SizedBox(
                    height: 20,
                  ),
    
                  Container(
                    height: 270,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (BuildContext context, index) {
                          return GestureDetector(
                            onTap: () {
                              
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 8, right: 8),
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: 190,
                                        width: 190,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    'https://lernerandrowe.com/wp-content/uploads/2020/01/Chicago-winter-sports-1024x683.jpg'),
                                                fit: BoxFit.cover)),
                                      ),
                                      Positioned(
                                          top: 15,
                                          right: 10,
                                          child: IconButton(
                                              onPressed: () {},
                                              icon: Icon(Icons.favorite),
                                              color: Colors.grey[300]
                                                  .withOpacity(0.9)))
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 15, right: 15),
                                  child: Container(
                                    width: 150,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Deporte',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Container(child: Text('Snowboarding')),
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
    
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Agencias Turisticas',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Text(
                              'Ver todo',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 18,
                              color: Colors.grey,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
    
                  Container(
                    height: 270,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (BuildContext context, index) {
                          return GestureDetector(
                            onTap: () {
                              
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 8, right: 8),
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: 190,
                                        width: 190,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    'https://pbs.twimg.com/profile_images/861257893018054656/0r76c0I8.jpg'),
                                                fit: BoxFit.cover)),
                                      ),
                                      Positioned(
                                          top: 15,
                                          right: 10,
                                          child: IconButton(
                                              onPressed: () {},
                                              icon: Icon(Icons.favorite),
                                              color: Colors.grey[300]
                                                  .withOpacity(0.9)))
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Container(child: Text('Nombre ')),
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
