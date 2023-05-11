import 'package:flutter/material.dart';

class EditPage extends StatelessWidget {
  const EditPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Color.fromRGBO(16, 16, 16, 1),
        appBar: AppBar(
            backgroundColor: Color.fromRGBO(16, 16, 16, 1),
            leading: FittedBox(
              fit: BoxFit.cover,
              child: Padding(
                padding: const EdgeInsets.only(left: 40, top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                        // mouseCursor: SystemMouseCursors.click,
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: ImageIcon(
                          AssetImage("assets/back.png"),
                          color: Color.fromRGBO(250, 250, 250, 1),
                        )),
                    Text(
                      "Back",
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(250, 250, 250, 1),
                        fontSize: 14,
                      ),
                    )
                  ],
                ),
              ),
            )),
        body: Stack(
          alignment: Alignment.topCenter,
          children: [
            Center(
              child: Container(
                // margin: EdgeInsets.all(15),
                // alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(250, 250, 250, 1),
                ),
                height: MediaQuery.of(context).size.height / 1.55,
                width: MediaQuery.of(context).size.width / 1.25,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: 25, left: 15, right: 15, bottom: 10),
                      child: TextFormField(
                        // controller: email,
                        cursorColor: Color.fromRGBO(16, 16, 16, 1),
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(16, 16, 16, 1),
                                  width: 2)),
                          isDense: true,
                          contentPadding: EdgeInsets.all(14),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                  width: 1.5,
                                  color: Color.fromRGBO(128, 128, 128, 1))),
                          hintText: 'Name',
                          hintStyle: TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(128, 128, 128, 1),
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 5, left: 15, right: 15, bottom: 10),
                      child: TextFormField(
                        //controller: email,
                        cursorColor: Color.fromRGBO(16, 16, 16, 1),
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(16, 16, 16, 1),
                                  width: 2)),
                          isDense: true,
                          contentPadding: EdgeInsets.all(14),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                  width: 1.5,
                                  color: Color.fromRGBO(128, 128, 128, 1))),
                          hintText: 'Gender',
                          hintStyle: TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(128, 128, 128, 1),
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 5, left: 15, right: 15, bottom: 10),
                      child: TextFormField(
                        //controller: email,
                        cursorColor: Color.fromRGBO(16, 16, 16, 1),
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(16, 16, 16, 1),
                                  width: 2)),
                          isDense: true,
                          contentPadding: EdgeInsets.all(14),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                  width: 1.5,
                                  color: Color.fromRGBO(128, 128, 128, 1))),
                          hintText: 'Date of birth',
                          hintStyle: TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(128, 128, 128, 1),
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 5, left: 15, right: 15, bottom: 10),
                      child: TextFormField(
                        //controller: email,
                        cursorColor: Color.fromRGBO(16, 16, 16, 1),
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(16, 16, 16, 1),
                                  width: 2)),
                          isDense: true,
                          contentPadding: EdgeInsets.all(14),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                  width: 1.5,
                                  color: Color.fromRGBO(128, 128, 128, 1))),
                          hintText: 'Phone',
                          hintStyle: TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(128, 128, 128, 1),
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 5, left: 15, right: 15, bottom: 10),
                      child: TextFormField(
                        //controller: email,
                        cursorColor: Color.fromRGBO(16, 16, 16, 1),
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(16, 16, 16, 1),
                                  width: 2)),
                          isDense: true,
                          contentPadding: EdgeInsets.all(14),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                  width: 1.5,
                                  color: Color.fromRGBO(128, 128, 128, 1))),
                          hintText: 'Address',
                          hintStyle: TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(128, 128, 128, 1),
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 5, left: 15, right: 15, bottom: 10),
                      child: TextFormField(
                        //controller: email,
                        cursorColor: Color.fromRGBO(16, 16, 16, 1),
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(16, 16, 16, 1),
                                  width: 2)),
                          isDense: true,
                          contentPadding: EdgeInsets.all(14),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                  width: 1.5,
                                  color: Color.fromRGBO(128, 128, 128, 1))),
                          hintText: 'Email',
                          hintStyle: TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(128, 128, 128, 1),
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 15, left: 15, right: 15, bottom: 15),
                      child: TextButton(
                        onPressed: () => {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => const LoginPage(),
                          //   ),
                          // ),
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Color.fromRGBO(250, 250, 250, 1),
                          padding: EdgeInsets.only(top: 15, bottom: 15),
                          elevation: 15,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        child: Center(
                            child: Text(
                          "Save",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromRGBO(16, 16, 16, 1),
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              fontFamily: 'Inter'),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(2, 30),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.25),

                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(2, 2), // controls position of shadow
                    ),
                  ],
                  //shape: BoxShape.circle,
                ),
                child: CircleAvatar(
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
              ),
            ),
          ],
        ),
      );
}
