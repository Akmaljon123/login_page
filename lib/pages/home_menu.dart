import 'package:flutter/material.dart';

class HomeMenu extends StatefulWidget {
  final String name;
  final String email;
  final String number;

  const HomeMenu({super.key, required this.name, required this.email, required this.number});

  @override
  State<HomeMenu> createState() => HomeMenuState();
}

class HomeMenuState extends State<HomeMenu> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 120, right: 80),
            child: Text(
              "Home Page",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 36,
                  color: Colors.blueGrey.shade700
              ),
            ),
          ),

          const SizedBox(height: 40),

          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 50),
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.blueGrey.shade900,
                  borderRadius: BorderRadius.circular(25)
                ),
                alignment: Alignment.center,
                child: const Text(
                  "C",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w900,
                    color: Colors.white
                  ),
                ),
              ),

              const SizedBox(width: 20),

              Text(
                "Coach time",
                style: TextStyle(
                  color: Colors.blueGrey.shade700,
                  fontWeight: FontWeight.w700,
                  fontSize: 24
                ),
              )
            ],
          ),

          const SizedBox(height: 30),

          Text(
            "Hi ${widget.name}\n\nCongrats!\nYour account with Coach Time has\nbeen successfully created.\n\nUser name: ${widget.name}\nUser email: ${widget.email}\nPassword: ${widget.number}",
            style: TextStyle(
              color: Colors.blueGrey.shade900
            ),
          )
        ],
      ),
    );
  }
}
