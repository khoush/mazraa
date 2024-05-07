
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mazraamarket/constant/utils.dart';
import 'package:mazraamarket/screens/details.dart';



class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PrimaryColor,
      // bottomNavigationBar: ,
      appBar: AppBar(
         title: const Text(
          'Accueil',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
                centerTitle: true,

        elevation: 0,
        toolbarHeight: 50,
        backgroundColor: PrimaryColor,
       
       
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarColor: Colors.transparent),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(30),
                  // height: 200,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "PROMO!!!",
                        style: TextStyle(
                            letterSpacing: 4, color: MainColor, fontSize: 12),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Flat 35% OFFER",
                        style: TextStyle(
                            letterSpacing: 4,
                            color: Colors.white,
                            fontSize: 25,
                            // fontFamily: 'Comfortaa-',
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "in honor of World Helath Day\nwe had likely to give this \namazing offer",
                        style: TextStyle(
                            letterSpacing: 1,
                            color: Color.fromARGB(255, 177, 176, 176),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        child: Container(
                          width: 160,
                          child: Center(child: Text('View Offers')),
                          padding: EdgeInsets.symmetric(
                              vertical: 12, horizontal: 16),
                          decoration: BoxDecoration(
                              color: MainColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(13))),
                        ),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: SecondaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
             
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Produits",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontFamily: 'Comfortaa'),
                ),
                Text(
                  'voir tout',
                  style: TextStyle(color: MainColor),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: itemList.map((e) => ItemC(context, e)).toList()),
                  SizedBox(
              height: 0,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: itemList.map((e) => ItemC(context, e)).toList()),
            SizedBox(
              height: 50,
            ),
            Container(
              width: double.infinity,
              // height: 100,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: tColor,
                  borderRadius: BorderRadius.all(Radius.circular(16))),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                   
                  
                   
                  
                  ]),
            )
          ],
        ),
      ),
    );
  }

  GestureDetector ItemC(BuildContext context, Item e) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ItemScreen(e: e),
        ));
      },
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20),
            height: 120,
            child: Image(
              image: AssetImage(e.image),
            ),
            width: MediaQuery.of(context).size.width / 2.5,
            decoration: BoxDecoration(
              color: e.background,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(300),
                topRight: Radius.circular(300),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'FRUIT',
                    style: TextStyle(
                        color: MainColor, letterSpacing: 5, fontSize: 10),
                  ),
                  Text(
                    e.name,
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "⭐ (${e.reviewCount} reviews)",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                    Text(
                      '\$${e.price} ',
                      style: TextStyle(
                          fontSize: 16, color: MainColor.withOpacity(0.75)),
                    ),
                    Text(
                      'per Kg',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    )
                  ])
                ]),
            height: 120,
            width: MediaQuery.of(context).size.width / 2.5,
            decoration: BoxDecoration(
              color: tColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}