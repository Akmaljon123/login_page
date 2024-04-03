import 'package:flutter/material.dart';
import 'package:navigation/pages/first_page.dart';

class Entry extends StatefulWidget {
  const Entry({super.key});

  @override
  State<Entry> createState() => _EntryState();
}

class _EntryState extends State<Entry> {
  @override
  void initState() {
    super.initState();
    _timeOf();
  }

  _timeOf() async {
    await Future.delayed(const Duration(seconds: 5));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const FirstPage()));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black, Colors.red.shade700, Colors.black],
          )
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image(
                  image: AssetImage("assets/images/m.png")
              ),
            ),

            Center(
              child: Text(
                "Messanger",
                style: TextStyle(
                  fontSize: 50,
                  fontFamily: "Sacr amento",
                  fontWeight: FontWeight.w400,
                  color: Colors.white
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
