import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController search = TextEditingController();
  void onSubmit(String value) {
    print('Submitted value: $value');
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Color.fromRGBO(16, 16, 16, 1),
        body: Container(
          margin: EdgeInsets.all(35),
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Center(
              child: TextField(
            controller: search,
            style: TextStyle(
                fontFamily: 'Inter', color: Color.fromRGBO(250, 250, 250, 1)),
            keyboardType: TextInputType.text,
            cursorColor: Color.fromRGBO(250, 250, 250, 1),
            decoration: InputDecoration(
              //filled: true,
              //fillColor: Color.fromRGBO(250, 250, 250, 1),
              contentPadding: EdgeInsets.all(10),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 3,
                      color: Color.fromRGBO(250, 250, 250, 1),
                      style: BorderStyle.solid),
                  borderRadius: BorderRadius.all(Radius.circular(35))),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 3,
                      color: Color.fromRGBO(250, 250, 250, 1),
                      style: BorderStyle.solid),
                  borderRadius: BorderRadius.all(Radius.circular(35))),
              prefixIcon: Icon(
                Icons.search,
                color: Color.fromRGBO(250, 250, 250, 1),
              ),
              hintText: "Search",
              hintStyle: TextStyle(
                  fontFamily: 'Inter',
                  color: Color.fromRGBO(250, 250, 250, 1),
                  fontSize: 15,
                  fontWeight: FontWeight.w200),
              suffixIcon: IconButton(
                icon: const Icon(
                  Icons.clear,
                  color: Color.fromRGBO(250, 250, 250, 1),
                ),
                onPressed: () {
                  setState(() {
                    print(search.text);
                    search.text = "";
                  });
                },
              ),
            ),
            onSubmitted: onSubmit,
          )),
        ),
      );
}
