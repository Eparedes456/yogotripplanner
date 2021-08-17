import 'package:flutter/material.dart';

class ListHabitacionesPage extends StatelessWidget {
  const ListHabitacionesPage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Escoge una habitación',style: TextStyle(color: Colors.black),),
        leading: Icon(Icons.arrow_back,color: Colors.black,),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.only(left: 20,right: 20,top: 20),
          child: Column(
            children: [

              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage('https://www.pavillon-monceau.com/files/hotel/pavillon-monceau/chambres/chambre_supe%CC%81rieure_.jpg'),
                          fit: BoxFit.cover
                        ),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15))
                      ),
                    )
                  ],
                ),
              )

            ],
          ),
        ),
      )
      
    );
  }
}