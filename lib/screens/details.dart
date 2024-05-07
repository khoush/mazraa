import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mazraamarket/constant/utils.dart';

class ItemScreen extends StatelessWidget {
  final Item e;
  const ItemScreen({Key? key, required this.e}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PrimaryColor,
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 60,
        backgroundColor: PrimaryColor,
        toolbarHeight: 60,
        
      ),
      body: SafeArea(
          child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            Text('FRUITS',
                style: TextStyle(
                    fontSize: 20, color: MainColor, letterSpacing: 10)),
            SizedBox(
              height: 10,
            ),
            Text(e.name,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                )),
            SizedBox(
              height: 10,
            ),
            Text(
              "⭐ (${e.reviewCount} reviews)",
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
            SizedBox(
              height: 150,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 55),
                  child: Column(
                    children: [
                      Transform.translate(
                        offset: Offset(10, -40),
                        child: Transform.scale(
                          scale: 2.6,
                          child: Image(
                            image: AssetImage(e.image),
                            height: 100,
                            width: 100,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '\$ ${e.price}',
                                style: TextStyle(
                                    color: MainColor.withOpacity(0.6),
                                    fontSize: 35),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "PER KG",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 174, 173, 173),
                                    letterSpacing: 5),
                              )
                            ],
                          ),
                         
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: iconsList
                            .map((e) => Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                   
                                   
                                    Text(
                                      e.head,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromARGB(
                                              255, 157, 157, 157)),
                                    )
                                  ],
                                ))
                            .toList(),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FirstGD(),
                          GestureDetector(
                              onTap: () {},
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                height: 40,
                                child: Row(
                                  children: [
                                    Text(
                                      'Go To Cart',
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 6, 2, 67),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    SvgPicture.asset(
                                      'assets/icons/arrowRight.svg',
                                      width: 20,
                                      height: 20,
                                      color: Color.fromARGB(255, 6, 2, 67),
                                    ),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                    color: MainColor,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(13))),
                              ))
                        ],
                      )
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    color: tColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                          MediaQuery.of(context).size.width / 2.7),
                      topRight: Radius.circular(
                          MediaQuery.of(context).size.width / 2.7),
                    )),
              ),
            )
          ],
        ),
      )),
    );
  }

  GestureDetector FirstGD() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icons/minus-solid.svg',
                width: 10,
                height: 10,
                color: Color.fromARGB(255, 157, 157, 157),
              ),
            ),
            Text(
              "0",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            IconButton(
              iconSize: 14,
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icons/plus-solid.svg',
                width: 10,
                height: 10,
                color: Color.fromARGB(255, 157, 157, 157),
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
            color: iconBack,
            borderRadius: BorderRadius.all(Radius.circular(13))),
      ),
    );
  }
}