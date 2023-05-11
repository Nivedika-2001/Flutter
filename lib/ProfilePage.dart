import 'package:dance_flutter/Booking.dart';
import 'package:dance_flutter/EditPage.dart';
import 'package:flutter/material.dart';
import 'AccountPage.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Color.fromRGBO(16, 16, 16, 1),
        body: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 20, top: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        // fit: StackFit.expand,
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundColor: Color.fromRGBO(250, 250, 250, 1),
                            child: IconButton(
                              padding: EdgeInsets.all(5),
                              iconSize: 60,
                              onPressed: null,
                              icon: ImageIcon(
                                AssetImage("assets/person.png"),
                                color: Color.fromRGBO(16, 16, 16, 1),
                              ),
                            ),
                          ),
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: Transform.translate(
                              offset: Offset(5, 10),
                              child: CircleAvatar(
                                backgroundColor:
                                    Color.fromRGBO(250, 250, 250, 1),
                                radius: 15,
                                child: Icon(
                                  Icons.camera_alt_outlined,
                                  color: Color.fromRGBO(16, 16, 16, 1),
                                  size: 20,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "Name",
                      style: TextStyle(
                          color: Color.fromRGBO(250, 250, 250, 1),
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          fontFamily: 'Inter'),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    IconButton(
                      iconSize: 30,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const EditPage()),
                        );
                      },
                      icon: ImageIcon(
                        AssetImage("assets/angle.png"),
                        color: Color.fromRGBO(250, 250, 250, 1),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 1.2,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(250, 250, 250, 1),
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "Bookings",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(16, 16, 16, 1),
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            fontFamily: 'Inter'),
                      ),
                    ),
                    IconButton(
                      iconSize: 40,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Booking()),
                        );
                      },
                      icon: ImageIcon(
                        AssetImage("assets/angle.png"),
                        color: Color.fromRGBO(16, 16, 16, 1),
                        size: 25,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 1.2,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(250, 250, 250, 1),
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "Saved",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(16, 16, 16, 1),
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            fontFamily: 'Inter'),
                      ),
                    ),
                    IconButton(
                      iconSize: 40,
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => const EditPage()),
                        // );
                      },
                      icon: ImageIcon(
                        AssetImage("assets/angle.png"),
                        color: Color.fromRGBO(16, 16, 16, 1),
                        size: 25,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 1.2,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(250, 250, 250, 1),
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "Watch later",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(16, 16, 16, 1),
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            fontFamily: 'Inter'),
                      ),
                    ),
                    IconButton(
                      iconSize: 40,
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => const EditPage()),
                        // );
                      },
                      icon: ImageIcon(
                        AssetImage("assets/angle.png"),
                        color: Color.fromRGBO(16, 16, 16, 1),
                        size: 25,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 1.2,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(250, 250, 250, 1),
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "Account Settings",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(16, 16, 16, 1),
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            fontFamily: 'Inter'),
                      ),
                    ),
                    IconButton(
                      iconSize: 40,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AccountPage()),
                        );
                      },
                      icon: ImageIcon(
                        AssetImage("assets/angle.png"),
                        color: Color.fromRGBO(16, 16, 16, 1),
                        size: 25,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );
}
