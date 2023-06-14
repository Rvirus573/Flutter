import 'package:flutter/material.dart';

class MyAds extends StatelessWidget {
  MyAds({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Column(
          children: [
            AppBar(
              title: const Center(
                child: Text('My Ads'),
              ),
            ),
            const TabBar(
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.ads_click_rounded,
                    color: Colors.black,
                  ),
                  child: Text(
                    'My Ads',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.favorite_border_outlined,
                    color: Colors.black,
                  ),
                  child: Text(
                    'My Favourite',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisSpacing: 30,
                              mainAxisSpacing: 40,
                              crossAxisCount: 2,
                              childAspectRatio: .70),
                      itemCount: 5,
                      itemBuilder: (ctx, index) {
                        return Card(
                          elevation: 6,
                          shadowColor: Colors.cyan,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),

                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Padding(
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
                                          textBaseline:
                                              TextBaseline.ideographic),
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
                                          textBaseline:
                                              TextBaseline.ideographic),
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
                                          textBaseline:
                                              TextBaseline.ideographic),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),

                          // color: Colors.cyan,
                          // child: Text(_catagories[index]),
                        );
                      }),
                ),
                ListView.builder(
                    itemCount: 5,
                    itemBuilder: (cx, index) {
                      return Card(
                        elevation: 4,
                        shadowColor: Colors.cyan,
                        child: ListTile(
                          leading: Image.asset(
                            'assets/watch.png',
                            // height: 100,
                            width: 40,
                          ),
                          title: const Text("Apple Watch",style: TextStyle(color: Colors.black),),
                          subtitle: const Text("Series 6 . Red",style: TextStyle(color: Colors.grey),),
                          trailing:const Text("\$359",style: TextStyle(color: Color.fromARGB(255, 69, 11, 226)),) ,
                        ),
                      );
                    })
              ]),
            ),
          ],
        ));
  }
}
