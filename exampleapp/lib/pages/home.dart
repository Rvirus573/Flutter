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
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, top: 30),
          child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
              SliverList(
                delegate: SliverChildListDelegate(
                  [
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
                              padding: const EdgeInsets.only(
                                  left: 15, top: 10, right: 10),
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
                              color: const Color(0xffF46D38),

                              borderRadius: BorderRadius.circular(
                                  20), // *! BorderRadius.all( Radius.circular(20)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, top: 10, right: 10),
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
                                      'assets/vegetable.png',
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
                              padding: const EdgeInsets.only(
                                  left: 15, top: 10, right: 10),
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
                            // *! int press = 0;
                            return Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: InkWell(
                                onTap: () {
                                  // *!  press = index;
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: _color[index],
                                      borderRadius: BorderRadius.circular(10)),
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
                                ),
                              ),
                            );
                          }),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ],
            body: Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  right: 15,
                ),
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisSpacing: 30,
                            mainAxisSpacing: 40,
                            crossAxisCount: 2,
                            childAspectRatio: .70),
                    itemCount: _catagories.length,
                    itemBuilder: (ctx, index) {
                      return Card(
                        margin: const EdgeInsets.only(top: 30),
                        elevation: 6,
                        shadowColor: Colors.cyan,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),

                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                heightFactor: .3,
                                child: Positioned(
                                  top: -30,
                                  child: Center(
                                    child: Image.asset(
                                      'assets/watch.png',
                                      // height: 100,
                                      width: 100,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 60,
                              ),
                              const Text(
                                "Apple Watch",
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                    textBaseline: TextBaseline.ideographic),
                              ),
                              const Divider(
                                color: Colors.transparent,
                              ),
                              const Text(
                                "Series 6 . Red",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w600,
                                    textBaseline: TextBaseline.ideographic),
                              ),
                              const Divider(
                                color: Colors.transparent,
                              ),
                              const Text(
                                "\$ 359",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w600,
                                    textBaseline: TextBaseline.ideographic),
                              ),
                            ],
                          ),
                        ),

                        // color: Colors.cyan,
                        // child: Text(_catagories[index]),
                      );
                    }),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
