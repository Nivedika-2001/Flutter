//import 'package:dance_flutter/BottomBar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  bool click1 = false;
  bool click2 = false;

  // void _showcontent() {
  //   showDialog(
  //     context: context, barrierDismissible: false, // user must tap button!

  //     builder: (BuildContext context) {
  //       return new AlertDialog(
  //         actionsPadding: EdgeInsets.only(bottom: 15),
  //         shape:
  //             RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
  //         alignment: Alignment.center,
  //         title: new Text(
  //           'Sign out',
  //           textAlign: TextAlign.center,
  //           style: TextStyle(
  //               fontFamily: 'Inter', fontSize: 25, fontWeight: FontWeight.w700),
  //         ),
  //         content: new SingleChildScrollView(
  //           child: Column(
  //             children: [
  //               Text(
  //                 'Are you sure you want to sign out?',
  //                 textAlign: TextAlign.center,
  //                 style: TextStyle(
  //                   fontFamily: 'Inter',
  //                   fontWeight: FontWeight.w300,
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ),
  //         actions: [
  //           Row(
  //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //             // crossAxisAlignment: CrossAxisAlignment.center,
  //             children: [
  //               TextButton(
  //                 child: Text(
  //                   'Cancel',
  //                   textAlign: TextAlign.center,
  //                   style: TextStyle(
  //                       color: Color.fromRGBO(16, 16, 16, 1),
  //                       fontFamily: 'Inter',
  //                       fontWeight: FontWeight.w600,
  //                       fontSize: 20),
  //                 ),
  //                 style: TextButton.styleFrom(
  //                     //backgroundColor: Colors.yellow,
  //                     padding: EdgeInsets.all(15)),
  //                 onPressed: () {
  //                   Navigator.of(context).pop();
  //                 },
  //               ),
  //               TextButton(
  //                 style: ButtonStyle(),
  //                 child: Text(
  //                   'Sign out',
  //                   textAlign: TextAlign.center,
  //                   style: TextStyle(
  //                       color: Color.fromRGBO(16, 16, 16, 1),
  //                       fontFamily: 'Inter',
  //                       fontWeight: FontWeight.w600,
  //                       fontSize: 20),
  //                 ),
  //                 onPressed: () {
  //                   Navigator.push(
  //                     context,
  //                     MaterialPageRoute(
  //                         builder: (context) => const LoginPage()),
  //                   );
  //                 },
  //               ),
  //             ],
  //           )
  //         ],
  //       );
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        key: scaffoldKey,
        //backgroundColor: Color.fromRGBO(48, 48, 48, 1),
        backgroundColor: Color.fromRGBO(16, 16, 16, 1),
        drawerEnableOpenDragGesture: false,

        appBar: AppBar(
          backgroundColor: Color.fromRGBO(16, 16, 16, 1),
          // leading:
          //     // Padding(
          //     //padding: EdgeInsets.only(left: 15),
          //     IconButton(
          //   onPressed: () {
          //     if (scaffoldKey.currentState!.isDrawerOpen) {
          //       scaffoldKey.currentState!.closeDrawer();
          //       //close drawer, if drawer is open
          //     } else {
          //       scaffoldKey.currentState!.openDrawer();
          //       //open drawer, if drawer is closed
          //     }
          //   },
          //   mouseCursor: SystemMouseCursors.click,
          //   icon: ImageIcon(AssetImage("assets/menu.png"),
          //       color: Color.fromRGBO(250, 250, 250, 1)),
          //   iconSize: 32,
          //   color: Color.fromRGBO(250, 250, 250, 1),
          // ),
          // ),

          actions: [
            Padding(
              padding: EdgeInsets.only(right: 0),
              child: IconButton(
                mouseCursor: SystemMouseCursors.click,
                onPressed: null,
                iconSize: 30,
                icon: Icon(
                  Icons.search,
                  color: Color.fromRGBO(250, 250, 250, 1),
                ),
              ),
            )
          ],
        ),
        //drawer: DashBoard(),
        // drawer: Drawer(
        //   width: MediaQuery.of(context).size.width / 1.40,
        //   child: ListView(
        //     children: [
        //       Padding(padding: EdgeInsets.only(top: 5)),
        //       Row(
        //         mainAxisAlignment: MainAxisAlignment.end,
        //         children: [
        //           Padding(
        //             padding: EdgeInsets.only(right: 5),
        //             child: IconButton(
        //               onPressed: () {
        //                 if (scaffoldKey.currentState!.isDrawerOpen) {
        //                   scaffoldKey.currentState!.closeDrawer();
        //                   //close drawer, if drawer is open
        //                 }
        //               },
        //               icon: Icon(Icons.close),
        //               color: Color.fromRGBO(48, 48, 48, 1),
        //             ),
        //           ),
        //         ],
        //       ),
        //       // Padding(padding: EdgeInsets.only(top: 5)),
        //       // Container(
        //       //color: Colors.yellow,
        //       // height: 55,
        //       Row(
        //         children: [
        //           Padding(padding: EdgeInsets.only(left: 20)),
        //           Container(
        //             decoration: BoxDecoration(
        //               //image: DecorationImage(image: image),
        //               borderRadius: BorderRadius.all(Radius.circular(40)),
        //               color: Color.fromRGBO(250, 250, 250, 1),
        //               //border: Border.all(color: )
        //               boxShadow: [
        //                 BoxShadow(
        //                   color: Color.fromRGBO(0, 0, 0, 0.25),
        //                   blurRadius: 10.0,
        //                   spreadRadius: 2.0,
        //                   offset: Offset(1, 1), // shadow direction: bottom right
        //                 )
        //               ],
        //             ),
        //             child: CircleAvatar(
        //               //foregroundColor: Colors.black,
        //               backgroundColor: Color.fromRGBO(250, 250, 250, 1),
        //               radius: 25,
        //               //backgroundColor: Colors.yellow,
        //               child: IconButton(
        //                 padding: new EdgeInsets.all(9.0),
        //                 onPressed: () {},
        //                 icon: ImageIcon(
        //                   AssetImage("assets/person.png"),
        //                   size: 50,
        //                   color: Color.fromRGBO(128, 128, 128, 1),
        //                   //color: Colors.black,
        //                 ),
        //                 color: Color.fromRGBO(128, 128, 128, 1),
        //                 iconSize: 50,
        //               ),
        //             ),
        //           ),
        //           Padding(padding: EdgeInsets.only(left: 25)),
        //           Text(
        //             "Name",
        //             style: TextStyle(
        //                 color: Color.fromRGBO(48, 48, 48, 1),
        //                 fontFamily: "Inter",
        //                 fontWeight: FontWeight.w800,
        //                 fontSize: 16),
        //           ),
        //         ],
        //       ),
        //       Padding(
        //         padding: EdgeInsets.only(left: 10, top: 10),
        //         child: Column(
        //           children: [
        //             ListTile(
        //               leading: IconButton(
        //                 onPressed: null,
        //                 icon: ImageIcon(AssetImage("assets/bell.png"),
        //                     color: Color.fromRGBO(48, 48, 48, 1)),
        //               ),
        //               title: Text(
        //                 "New",
        //                 style: TextStyle(
        //                     color: Color.fromRGBO(48, 48, 48, 1),
        //                     fontFamily: "Inter",
        //                     fontWeight: FontWeight.w700,
        //                     fontSize: 14),
        //               ),
        //             ),
        //             ListTile(
        //               leading: IconButton(
        //                 onPressed: null,
        //                 icon: ImageIcon(AssetImage("assets/bell.png"),
        //                     color: Color.fromRGBO(48, 48, 48, 1)),
        //               ),
        //               title: Text(
        //                 "Download",
        //                 style: TextStyle(
        //                     color: Color.fromRGBO(48, 48, 48, 1),
        //                     fontFamily: "Inter",
        //                     fontWeight: FontWeight.w700,
        //                     fontSize: 14),
        //               ),
        //             ),
        //             ListTile(
        //               leading: IconButton(
        //                 onPressed: null,
        //                 icon: ImageIcon(AssetImage("assets/bell.png"),
        //                     color: Color.fromRGBO(48, 48, 48, 1)),
        //               ),
        //               title: Text(
        //                 "Watch later",
        //                 style: TextStyle(
        //                     color: Color.fromRGBO(48, 48, 48, 1),
        //                     fontFamily: "Inter",
        //                     fontWeight: FontWeight.w700,
        //                     fontSize: 14),
        //               ),
        //             ),
        //             ListTile(
        //               leading: IconButton(
        //                 onPressed: null,
        //                 icon: ImageIcon(AssetImage("assets/bell.png"),
        //                     color: Color.fromRGBO(48, 48, 48, 1)),
        //               ),
        //               title: Text(
        //                 "Saved",
        //                 style: TextStyle(
        //                     color: Color.fromRGBO(48, 48, 48, 1),
        //                     fontFamily: "Inter",
        //                     fontWeight: FontWeight.w700,
        //                     fontSize: 14),
        //               ),
        //             ),
        //             ListTile(
        //               leading: IconButton(
        //                 onPressed: null,
        //                 icon: ImageIcon(AssetImage("assets/bell.png"),
        //                     color: Color.fromRGBO(48, 48, 48, 1)),
        //               ),
        //               title: Text(
        //                 "My Bookings",
        //                 style: TextStyle(
        //                     color: Color.fromRGBO(48, 48, 48, 1),
        //                     fontFamily: "Inter",
        //                     fontWeight: FontWeight.w700,
        //                     fontSize: 14),
        //               ),
        //             ),
        //             ListTile(
        //               leading: IconButton(
        //                 onPressed: null,
        //                 icon: ImageIcon(AssetImage("assets/bell.png"),
        //                     color: Color.fromRGBO(48, 48, 48, 1)),
        //               ),
        //               title: Text(
        //                 "Coupons",
        //                 style: TextStyle(
        //                     color: Color.fromRGBO(48, 48, 48, 1),
        //                     fontFamily: "Inter",
        //                     fontWeight: FontWeight.w700,
        //                     fontSize: 14),
        //               ),
        //             ),
        //             SizedBox(
        //               height: 60,
        //             ),
        //             ListTile(
        //               leading: IconButton(
        //                 onPressed: null,
        //                 icon: ImageIcon(AssetImage("assets/bell.png"),
        //                     color: Color.fromRGBO(48, 48, 48, 1)),
        //               ),
        //               title: Text(
        //                 "Follow us",
        //                 style: TextStyle(
        //                     color: Color.fromRGBO(48, 48, 48, 1),
        //                     fontFamily: "Inter",
        //                     fontWeight: FontWeight.w700,
        //                     fontSize: 14),
        //               ),
        //             ),
        //             ListTile(
        //               leading: IconButton(
        //                 onPressed: null,
        //                 icon: ImageIcon(AssetImage("assets/bell.png"),
        //                     color: Color.fromRGBO(48, 48, 48, 1)),
        //               ),
        //               title: Text(
        //                 "Terms & Conditions",
        //                 style: TextStyle(
        //                     color: Color.fromRGBO(48, 48, 48, 1),
        //                     fontFamily: "Inter",
        //                     fontWeight: FontWeight.w700,
        //                     fontSize: 14),
        //               ),
        //             ),
        //             ListTile(
        //               leading: IconButton(
        //                 onPressed: null,
        //                 icon: ImageIcon(AssetImage("assets/bell.png"),
        //                     color: Color.fromRGBO(48, 48, 48, 1)),
        //               ),
        //               title: Text(
        //                 "Privacy & FAQ",
        //                 style: TextStyle(
        //                     color: Color.fromRGBO(48, 48, 48, 1),
        //                     fontFamily: "Inter",
        //                     fontWeight: FontWeight.w700,
        //                     fontSize: 14),
        //               ),
        //             ),
        //             ListTile(
        //               leading: IconButton(
        //                 onPressed: _showcontent,
        //                 icon: ImageIcon(AssetImage("assets/bell.png"),
        //                     color: Color.fromRGBO(48, 48, 48, 1)),
        //               ),
        //               title: Text(
        //                 "Sign out",
        //                 style: TextStyle(
        //                     color: Color.fromRGBO(48, 48, 48, 1),
        //                     fontFamily: "Inter",
        //                     fontWeight: FontWeight.w700,
        //                     fontSize: 14),
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
        //     ],
        //   ),
        //   // ),
        // ),
        body: SingleChildScrollView(
          //physics: NeverScrollableScrollPhysics(),

          child: Padding(
            padding: EdgeInsets.only(top: 15),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20, bottom: 15),
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
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(left: 20, right: 15),
                    child: Row(
                      children: [
                        Container(
                          height: 100,
                          width: 150,
                          decoration: BoxDecoration(
                              // color: Color.fromRGBO(250, 250, 250, 1),
                              image: DecorationImage(
                                  image: AssetImage("assets/poster1.jpeg"),
                                  fit: BoxFit.cover),
                              shape: BoxShape.rectangle,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 100,
                          width: 150,
                          decoration: BoxDecoration(
                              //color: Color.fromRGBO(250, 250, 250, 1),
                              image: DecorationImage(
                                  image: AssetImage("assets/poster2.jpeg"),
                                  fit: BoxFit.cover),
                              shape: BoxShape.rectangle,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 100,
                          width: 150,
                          decoration: BoxDecoration(
                              //color: Color.fromRGBO(250, 250, 250, 1),
                              image: DecorationImage(
                                  image: AssetImage("assets/girls.jpg"),
                                  fit: BoxFit.cover),
                              shape: BoxShape.rectangle,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                      ],
                    )),
                Padding(
                  padding: EdgeInsets.only(top: 15, left: 20, bottom: 15),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    //  text: I,
                    children: [
                      Text(
                        "Dance Videos",
                        style: TextStyle(
                            color: Color.fromRGBO(250, 250, 250, 1),
                            fontFamily: "Inter",
                            fontWeight: FontWeight.w700,
                            fontSize: 18),
                      ),
                      IconButton(
                        //alignment: Alignment.topLeft,
                        onPressed: () {
                          setState(() {
                            click2 = true;
                          });
                        },
                        icon: ImageIcon(AssetImage("assets/angle.png"),
                            color: Color.fromRGBO(250, 250, 250, 1)),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(left: 20, right: 15),
                    child: Row(
                      children: [
                        Container(
                          height: 100,
                          width: 150,
                          decoration: BoxDecoration(
                              // color: Color.fromRGBO(250, 250, 250, 1),
                              image: DecorationImage(
                                  image: AssetImage("assets/Bollywood.jpg"),
                                  fit: BoxFit.cover),
                              shape: BoxShape.rectangle,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 100,
                          width: 150,
                          decoration: BoxDecoration(
                              //color: Color.fromRGBO(250, 250, 250, 1),
                              image: DecorationImage(
                                  image: AssetImage("assets/Classical.jpg"),
                                  fit: BoxFit.cover),
                              shape: BoxShape.rectangle,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 100,
                          width: 150,
                          decoration: BoxDecoration(
                              // color: Color.fromRGBO(250, 250, 250, 1),
                              image: DecorationImage(
                                  image: AssetImage("assets/hiphop.jpg"),
                                  fit: BoxFit.cover),
                              shape: BoxShape.rectangle,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 100,
                          width: 150,
                          decoration: BoxDecoration(
                              // color: Color.fromRGBO(250, 250, 250, 1),
                              image: DecorationImage(
                                  image: AssetImage("assets/kpop.jpg"),
                                  fit: BoxFit.cover),
                              shape: BoxShape.rectangle,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                      ],
                    )),
                Wrap(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, top: 15, bottom: 15),
                      child: Text("Classes",
                          //textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(250, 250, 250, 1),
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w700,
                              fontSize: 18)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 15)),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              click1 = !click1;
                            });
                          },
                          child: Container(
                            height: 40,
                            width: 120,
                            //color: Color.fromRGBO(250, 250, 250, 1),
                            decoration: BoxDecoration(
                                color: click1
                                    ? Color.fromRGBO(16, 16, 16, 1)
                                    : Color.fromRGBO(250, 250, 250, 1),
                                border: Border.all(
                                    color: click1
                                        ? Color.fromRGBO(250, 250, 250, 1)
                                        : Color.fromRGBO(16, 16, 16, 1),
                                    width: 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                            child: Center(
                              child: Text(
                                "Live",
                                style: TextStyle(
                                    color: click1
                                        ? Color.fromRGBO(250, 250, 250, 1)
                                        : Color.fromRGBO(48, 48, 48, 1),
                                    fontFamily: "Inter",
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextButton(
                          onPressed: () {
                            //ScrollAlignment.BOTTOM;
                            setState(() {
                              click1 = !click1;
                            });
                          },
                          child: Container(
                            height: 40,
                            width: 120,
                            decoration: BoxDecoration(
                                color: click1
                                    ? Color.fromRGBO(250, 250, 250, 1)
                                    : Color.fromRGBO(16, 16, 16, 1),
                                border: Border.all(
                                  width: 1,
                                  color: click1
                                      ? Color.fromRGBO(16, 16, 16, 1)
                                      : Color.fromRGBO(250, 250, 250, 1),
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                            child: Center(
                              child: Text(
                                "Upcoming",
                                style: TextStyle(
                                    color: click1
                                        ? Color.fromRGBO(48, 48, 48, 1)
                                        : Color.fromRGBO(250, 250, 250, 1),
                                    fontFamily: "Inter",
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(children: [
                          Padding(
                            padding: EdgeInsets.only(left: 30, top: 25),
                            //padding: const EdgeInsets.all(8.0),
                            child: Container(
                              //padding: EdgeInsets.only(left: 30, top: 25),
                              decoration: BoxDecoration(
                                //image: DecorationImage(image: image),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(40)),
                                // color: Color.fromRGBO(250, 250, 250, 1),
                                //border: Border.all(color: )
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.25),
                                    blurRadius: 10.0,
                                    spreadRadius: 2.0,
                                    offset: Offset(
                                        1, 1), // shadow direction: bottom right
                                  )
                                ],
                              ),
                              child: CircleAvatar(
                                //foregroundColor: Colors.black,
                                // backgroundColor: Color.fromRGBO(250, 250, 250, 1),
                                radius: 40,
                                backgroundImage:
                                    ExactAssetImage("assets/ch1.jpg"),
                                // child: Image.asset(
                                //   "assets/ch1.jpg",
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
                                      padding: const EdgeInsets.only(
                                          left: 39, bottom: 25),
                                      child: Text("Taneesky ",
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  250, 250, 250, 1),
                                              fontFamily: "Inter",
                                              fontWeight: FontWeight.w700,
                                              fontSize: 16)),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 28, top: 10),
                                  child: Row(
                                    children: [
                                      IconButton(
                                        onPressed: null,
                                        icon: ImageIcon(
                                          AssetImage("assets/design1.png"),
                                          // size: 50,
                                          color:
                                              Color.fromRGBO(250, 250, 250, 1),
                                        ),
                                        //iconSize: 10,
                                      ),
                                      Text("Open Style",
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  250, 250, 250, 1),
                                              fontFamily: "Inter",
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12)),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 28, top: 30),
                                  child: Row(
                                    //mainAxisAlignment: MainAxisAlignment.end,
                                    //crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      IconButton(
                                        onPressed: null,
                                        icon: ImageIcon(
                                          AssetImage("assets/calendar.png"),
                                          size: 15,
                                          color:
                                              Color.fromRGBO(250, 250, 250, 1),
                                          //color: Colors.black,
                                        ),
                                        iconSize: 15,
                                      ),
                                      Text("27-04-2023",
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  250, 250, 250, 1),
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
                                offset: Offset(
                                    1, 1), // shadow direction: bottom right
                              )
                            ],
                          ),
                          child: CircleAvatar(
                            //foregroundColor: Colors.black,
                            //backgroundColor: Color.fromRGBO(250, 250, 250, 1),
                            backgroundImage: ExactAssetImage("assets/ch2.jpg"),
                            radius: 40,
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
                                  padding: const EdgeInsets.only(
                                      left: 39, bottom: 25),
                                  child: Text("Lalit Swami ",
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(250, 250, 250, 1),
                                          fontFamily: "Inter",
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16)),
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
                                          color:
                                              Color.fromRGBO(250, 250, 250, 1),
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
                                          color:
                                              Color.fromRGBO(250, 250, 250, 1),
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
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 30, top: 25),
                          //padding: const EdgeInsets.all(8.0),
                          child: Container(
                            //padding: EdgeInsets.only(left: 30, top: 25),
                            decoration: BoxDecoration(
                              //image: DecorationImage(image: image),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40)),
                              // color: Color.fromRGBO(250, 250, 250, 1),
                              //border: Border.all(color: )
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.25),
                                  blurRadius: 10.0,
                                  spreadRadius: 2.0,
                                  offset: Offset(
                                      1, 1), // shadow direction: bottom right
                                )
                              ],
                            ),
                            child: CircleAvatar(
                              //foregroundColor: Colors.black,
                              // backgroundColor: Color.fromRGBO(250, 250, 250, 1),
                              radius: 40,
                              backgroundImage:
                                  ExactAssetImage("assets/ch3.jpg"),
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
                                        padding: const EdgeInsets.only(
                                            left: 39, bottom: 25),
                                        child: Text("Sambo Mukherjee",
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    250, 250, 250, 1),
                                                fontFamily: "Inter",
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16)),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 28, top: 10),
                                    child: Row(
                                      children: [
                                        IconButton(
                                          onPressed: null,
                                          icon: ImageIcon(
                                            AssetImage("assets/design1.png"),
                                            // size: 50,
                                            color: Color.fromRGBO(
                                                250, 250, 250, 1),
                                          ),
                                          //iconSize: 10,
                                        ),
                                        Text("House",
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    250, 250, 250, 1),
                                                fontFamily: "Inter",
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12)),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 28, top: 30),
                                    child: Row(
                                      //mainAxisAlignment: MainAxisAlignment.end,
                                      //crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        IconButton(
                                          onPressed: null,
                                          icon: ImageIcon(
                                            AssetImage("assets/calendar.png"),
                                            size: 15,
                                            color: Color.fromRGBO(
                                                250, 250, 250, 1),
                                            //color: Colors.black,
                                          ),
                                          iconSize: 15,
                                        ),
                                        Text("29-04-2023",
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    250, 250, 250, 1),
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
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
