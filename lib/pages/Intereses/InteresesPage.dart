import 'package:flutter/material.dart';

class InteresesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        child: Column(
          children: [

            SafeArea(child: Container()),

            Padding(
              padding:  EdgeInsets.only(left: 20,right: 20,top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Text('1/2'),

                  GestureDetector(
                    onTap: (){},
                    child: Text('Skip'),
                  )

                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 30,right: 30,top: 20),
              child: Text(
                'Sigue a tus amigos y a viajeros favoritos, con tus mismos gustos',
                textAlign: TextAlign.center,
              ),
            ),

            SizedBox(height: 40,),

            Expanded(
              child: Padding(
                padding:  EdgeInsets.only(left: 20,right:20),
                child: ListView(
                  children: [

                    Row(
                      children: [

                        CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage('https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                        ),

                        Expanded(
                          child: Padding(
                            padding:  EdgeInsets.only(left: 10,right:10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Text(
                                  'Shaun Track',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                                Text(
                                  'Estuvo en 30 lugares',
                                  style: TextStyle(
                                    color: Colors.grey
                                  ),
                                )

                              ],
                            ),
                          ),
                        ),

                        Container(
                          height: 35,
                          width: 100,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color.fromRGBO(30, 90, 255, 1.0),
                            ),
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(
                            child: Text('Seguir'),
                          ),
                        )

                      ],
                    ),

                    SizedBox(height: 20,),

                    Row(
                      children: [

                        CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoJmrvWaNmVk6aIb88bOXyUbarMlIbprpdCw&usqp=CAU'),
                        ),

                        Expanded(
                          child: Padding(
                            padding:  EdgeInsets.only(left: 10,right:10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Text(
                                  'Jessy Aguilar',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                                Text(
                                  'Estuvo en 130 lugares',
                                  style: TextStyle(
                                    color: Colors.grey
                                  ),
                                )

                              ],
                            ),
                          ),
                        ),

                        Container(
                          height: 35,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(30, 90, 255, 1.0),
                            border: Border.all(
                              color: Color.fromRGBO(30, 90, 255, 1.0),
                            ),
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(
                            child: Text(
                              'Siguiendo',
                              style: TextStyle(
                                color: Colors.white
                              ),
                            ),
                          ),
                        ),

                        

                      ],
                    ),

                    SizedBox(height: 20,),

                    Row(
                      children: [

                        CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage('https://peru21.pe/resizer/4Kc-xfzkNfxyOKKukngeoir-LsQ=/980x0/smart/filters:format(jpeg):quality(75)/arc-anglerfish-arc2-prod-elcomercio.s3.amazonaws.com/public/72HYCF3BXNBN7JLDSZVYI2O2D4.jpg'),
                        ),

                        Expanded(
                          child: Padding(
                            padding:  EdgeInsets.only(left: 10,right:10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Text(
                                  'Dan Bilzerian',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                                Text(
                                  'Estuvo en 30 lugares',
                                  style: TextStyle(
                                    color: Colors.grey
                                  ),
                                )

                              ],
                            ),
                          ),
                        ),

                        Container(
                          height: 35,
                          width: 100,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color.fromRGBO(30, 90, 255, 1.0),
                            ),
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(
                            child: Text('Seguir'),
                          ),
                        )

                      ],
                    ),

                    SizedBox(height: 20,),
                   

                    Row(
                      children: [

                        CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage('https://elviajerofeliz.com/wp-content/uploads/2020/11/mejores-playas-del-mundo-10.jpg'),
                        ),

                        Expanded(
                          child: Padding(
                            padding:  EdgeInsets.only(left: 10,right:10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Text(
                                  'Sara Connor',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                                Text(
                                  'Estuvo en 130 lugares',
                                  style: TextStyle(
                                    color: Colors.grey
                                  ),
                                )

                              ],
                            ),
                          ),
                        ),

                        Container(
                          height: 35,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(30, 90, 255, 1.0),
                            border: Border.all(
                              color: Color.fromRGBO(30, 90, 255, 1.0),
                            ),
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(
                            child: Text(
                              'Siguiendo',
                              style: TextStyle(
                                color: Colors.white
                              ),
                            ),
                          ),
                        ),

                        

                      ],
                    ),

                    

                  ],
                ),
              ),
            )

          ],
        ),
      ),
      
    );
  }
}