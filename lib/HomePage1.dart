import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(16, 16, 16, 1),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromRGBO(16, 16, 16, 1),
        actions: [
          IconButton(
            iconSize: 26,
            onPressed: () {},
            icon: Icon(Icons.notifications),
            color: Color.fromRGBO(250, 250, 250, 1),
          ),
          SizedBox(width: 10),
          IconButton(
            iconSize: 20,
            onPressed: () {},
            icon: Image.asset(
              "assets/www.png",
              color: Color.fromRGBO(250, 250, 250, 1),
            ),
          ),
          SizedBox(width: 15),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 15),
              child: Center(
                child: Text(
                  "Announcements",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Color.fromRGBO(250, 250, 250, 1),
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w700,
                      fontSize: 18),
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  height: 200,
                  width: 500,
                  child: PageView.builder(
                    controller: PageController(
                      viewportFraction: 0.75,
                      initialPage: categories.length ~/
                          2, // Set the initial page to the middle position
                    ),
                    itemCount: categories.length,
                    itemBuilder: (context, position) {
                      // Calculate the position of the image relative to the middle position
                      final relativePosition =
                          position - categories.length ~/ 2;
                      final imageIndex = relativePosition >= 0
                          ? relativePosition
                          : categories.length + relativePosition;
                      final category = categories[imageIndex];

                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage(category.image),
                            fit: BoxFit.fill,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text("Scheduled Classes",
                //textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(250, 250, 250, 1),
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w700,
                    fontSize: 18)),
            Column(
              children: [
                Row(children: [
                  Padding(
                    padding: EdgeInsets.only(left: 30, top: 25),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                            blurRadius: 10.0,
                            spreadRadius: 2.0,
                            offset: Offset(1, 1),
                          )
                        ],
                      ),
                      child: CircleAvatar(
                        radius: 35,
                        backgroundImage: ExactAssetImage("assets/ch1.jpg"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Column(children: [
                      Stack(children: [
                        Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 39, bottom: 25),
                              child: Text("Taneesky ",
                                  style: TextStyle(
                                      color: Color.fromRGBO(250, 250, 250, 1),
                                      fontFamily: "Inter",
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14)),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 28, top: 10),
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: null,
                                icon: ImageIcon(
                                  AssetImage("assets/design1.png"),
                                  color: Color.fromRGBO(250, 250, 250, 1),
                                ),
                              ),
                              Text("Open Style",
                                  style: TextStyle(
                                      color: Color.fromRGBO(250, 250, 250, 1),
                                      fontFamily: "Inter",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 28, top: 30),
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: null,
                                icon: ImageIcon(
                                  AssetImage("assets/calendar.png"),
                                  size: 15,
                                  color: Color.fromRGBO(250, 250, 250, 1),
                                ),
                                iconSize: 15,
                              ),
                              Text("27-04-2023",
                                  style: TextStyle(
                                      color: Color.fromRGBO(250, 250, 250, 1),
                                      fontFamily: "Inter",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12)),
                            ],
                          ),
                        ),
                      ]),
                    ]),
                  ),
                ]),
              ],
            ),
            Row(children: [
              Padding(
                padding: EdgeInsets.only(left: 30, top: 25),
                //padding: const EdgeInsets.all(8.0),
                child: Container(
                  //padding: EdgeInsets.only(left: 30, top: 25),
                  decoration: BoxDecoration(
                    //image: DecorationImage(image: image),
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    //color: Color.fromRGBO(250, 250, 250, 1),
                    //border: Border.all(color: )
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.25),
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                        offset: Offset(1, 1), // shadow direction: bottom right
                      )
                    ],
                  ),
                  child: CircleAvatar(
                    //foregroundColor: Colors.black,
                    //backgroundColor: Color.fromRGBO(250, 250, 250, 1),
                    backgroundImage: ExactAssetImage("assets/ch2.jpg"),
                    radius: 35,
                    // child: Image.asset(
                    //   "assets/ch2.jpg",
                    //   fit: BoxFit.cover,
                    // ),
                    //backgroundColor: Colors.yellow,
                    // child: IconButton(
                    //   padding: new EdgeInsets.all(9.0),
                    //   onPressed: () {},
                    //   icon: ImageIcon(
                    //     AssetImage("assets/person.png"),
                    //     size: 50,
                    //     color: Color.fromRGBO(128, 128, 128, 1),
                    //     //color: Colors.black,
                    //   ),
                    //   color: Color.fromRGBO(128, 128, 128, 1),
                    //   iconSize: 50,
                    // ),
                  ),
                ),
              ),
              //   ],
              // ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Column(children: [
                  Stack(children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 39, bottom: 25),
                          child: Text("Lalit Swami ",
                              style: TextStyle(
                                  color: Color.fromRGBO(250, 250, 250, 1),
                                  fontFamily: "Inter",
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14)),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 28, top: 10),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: null,
                            icon: ImageIcon(
                              AssetImage("assets/design1.png"),
                              // size: 50,
                              color: Color.fromRGBO(250, 250, 250, 1),
                            ),
                            //iconSize: 10,
                          ),
                          Text("HipHop",
                              style: TextStyle(
                                  color: Color.fromRGBO(250, 250, 250, 1),
                                  fontFamily: "Inter",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 28, top: 30),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.end,
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IconButton(
                            onPressed: null,
                            icon: ImageIcon(
                              AssetImage("assets/calendar.png"),
                              size: 15,
                              color: Color.fromRGBO(250, 250, 250, 1),
                              //color: Colors.black,
                            ),
                            iconSize: 15,
                          ),
                          Text("28-04-2023",
                              style: TextStyle(
                                  color: Color.fromRGBO(250, 250, 250, 1),
                                  fontFamily: "Inter",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12)),
                        ],
                      ),
                    ),
                  ]),
                ]),
              ),
            ]),
            Row(children: [
              Padding(
                padding: EdgeInsets.only(left: 30, top: 25),
                //padding: const EdgeInsets.all(8.0),
                child: Container(
                  //padding: EdgeInsets.only(left: 30, top: 25),
                  decoration: BoxDecoration(
                    //image: DecorationImage(image: image),
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    // color: Color.fromRGBO(250, 250, 250, 1),
                    //border: Border.all(color: )
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.25),
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                        offset: Offset(1, 1), // shadow direction: bottom right
                      )
                    ],
                  ),
                  child: CircleAvatar(
                    //foregroundColor: Colors.black,
                    // backgroundColor: Color.fromRGBO(250, 250, 250, 1),
                    radius: 35,
                    backgroundImage: ExactAssetImage("assets/ch3.jpg"),
                    // child:
                    //     Image.asset("assets/ch3.jpg", fit: BoxFit.cover),
                    //backgroundColor: Colors.yellow,
                    // child: IconButton(
                    //   padding: new EdgeInsets.all(9.0),
                    //   onPressed: () {},
                    //   icon: ImageIcon(
                    //     AssetImage("assets/person.png"),
                    //     size: 50,
                    //     color: Color.fromRGBO(128, 128, 128, 1),
                    //     //color: Colors.black,
                    //   ),
                    //   color: Color.fromRGBO(128, 128, 128, 1),
                    //   iconSize: 50,
                    // ),
                  ),
                ),
              ),
              //   ],
              // ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 39, bottom: 25),
                              child: Text("Sambo Mukherjee",
                                  style: TextStyle(
                                      color: Color.fromRGBO(250, 250, 250, 1),
                                      fontFamily: "Inter",
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14)),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 28, top: 10),
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: null,
                                icon: ImageIcon(
                                  AssetImage("assets/design1.png"),
                                  // size: 50,
                                  color: Color.fromRGBO(250, 250, 250, 1),
                                ),
                                //iconSize: 10,
                              ),
                              Text("House",
                                  style: TextStyle(
                                      color: Color.fromRGBO(250, 250, 250, 1),
                                      fontFamily: "Inter",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 28, top: 30),
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.end,
                            //crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              IconButton(
                                onPressed: null,
                                icon: ImageIcon(
                                  AssetImage("assets/calendar.png"),
                                  size: 15,
                                  color: Color.fromRGBO(250, 250, 250, 1),
                                  //color: Colors.black,
                                ),
                                iconSize: 15,
                              ),
                              Text("29-04-2023",
                                  style: TextStyle(
                                      color: Color.fromRGBO(250, 250, 250, 1),
                                      fontFamily: "Inter",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ])
          ],
        ),
      ),
    );
  }

  final List<Category> categories = [
    Category(image: "assets/poster1.jpeg"),
    Category(image: "assets/poster2.jpeg"),
    Category(image: "assets/girls.jpg"),
    Category(image: "assets/dance1.jpg"),
    Category(image: "assets/dance_poster.jpg"),
  ];
}

class Category {
  final String image;

  Category({required this.image});
}
