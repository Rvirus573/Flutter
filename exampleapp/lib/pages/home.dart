// ignore_for_file: unused_field, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Home extends StatelessWidget {
  Home({super.key});
  final List<String> _catagories = [
    'Food',
    'Electronic',
    'Groceries',
    'Sports',
    'Gadgets',
  ];

  final List<Color> _color = [
    Colors.green,
    Colors.cyan,
    Colors.amber,
    Colors.blue,
    Colors.deepOrangeAccent,
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 30, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Hello Rezaul.",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Lets get something !",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      height: 150,
                      width: 250,
                      decoration: BoxDecoration(
                        color: Colors.cyan,

                        borderRadius: BorderRadius.circular(
                            20), // *! BorderRadius.all( Radius.circular(20)),
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 15, top: 10, right: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "40% off During \nCovid 19",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Image.asset(
                                'assets/v.png',
                                width: 90,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 150,
                      width: 250,
                      decoration: BoxDecoration(
                        color: Color(0xffF46D38),

                        borderRadius: BorderRadius.circular(
                            20), // *! BorderRadius.all( Radius.circular(20)),
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 15, top: 10, right: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "40% off During \nCovid 19",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Image.network(
                                'https://w7.pngwing.com/pngs/909/529/png-transparent-fruit-and-vegetable-basket-organic-food-juice-vegetable-fruit-basket-vegetable-s-natural-foods-food-orange.png',
                                width: 90,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 150,
                      width: 250,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,

                        borderRadius: BorderRadius.circular(
                            20), // *! BorderRadius.all( Radius.circular(20)),
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 15, top: 10, right: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "40% off During \nCovid 19",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Image.asset(
                                'assets/v.png',
                                width: 90,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Top Catagories",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Text(
                      "view all",
                      style: TextStyle(
                          color: Colors.amber,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 30,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _catagories.length,
                    itemBuilder: (ctx, index) {
                      int press = 0;
                      return Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: InkWell(
                          onTap: () {
                            press = index;
                          },
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 4),
                              child: Center(
                                child: Text(
                                  _catagories[index],
                                  style: const TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: _color[index],
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
