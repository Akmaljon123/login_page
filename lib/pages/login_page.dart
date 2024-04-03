import 'package:flutter/material.dart';
import 'package:navigation/pages/home_menu.dart';
import 'package:navigation/pages/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}



class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String? usernameError;
  String? passwordError;
  String? info;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Image(
              image: AssetImage("assets/images/m.png"),
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 40),
          Center(
            child: Text(
              "Login",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: Colors.grey.shade800,
              ),
            ),
          ),
          const SizedBox(height: 30),
          Center(
            child: Text(
              "Enter your username and password\n                      to login",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Colors.grey.shade700,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
              controller: _usernameController,
              style: TextStyle(
                color: Colors.blueGrey.shade900,
              ),
              cursorColor: Colors.blueGrey.shade900,
              decoration: InputDecoration(
                labelText: "Username",
                errorText: usernameError,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: Colors.blueGrey.shade900,
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 210),
            child: TextButton(
              onPressed: () {},
              child: Text(
                "Forgot Username?",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.blueGrey.shade600,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
              controller: _passwordController,
              obscureText: true,
              style: TextStyle(
                color: Colors.blueGrey.shade900,
              ),
              cursorColor: Colors.blueGrey.shade900,
              decoration: InputDecoration(
                labelText: "Password",
                errorText: passwordError,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: Colors.blueGrey.shade900,
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 210),
            child: TextButton(
              onPressed: () {},
              child: Text(
                "Forgot Password?",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.blueGrey.shade600,
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          MaterialButton(
            onPressed: ()async{
              setState(() {
                usernameError = _validateUsername(_usernameController.text);
                passwordError = _validatePassword(_passwordController.text);
              });

              Navigator.pushAndRemoveUntil(context,
                  MaterialPageRoute(
                      builder: (context)=>HomeMenu(name: _usernameController.text,
                          email: "example@gmail.com", number: "777")
                  ),
                  (route)=>false
              );
            },
            child: Container(
              width: 400,
              height: 65,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.blueGrey.shade700,
              ),
              alignment: Alignment.center,
              child: const Text(
                "Login",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          TextButton(
            onPressed: () {},
            child: Text(
              "Or login with",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.blueGrey.shade700,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              const SizedBox(width: 30),
              MaterialButton(
                onPressed: () {},
                child: Container(
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.blueGrey.shade700,
                    ),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.g_mobiledata,
                        size: 55,
                        color: Colors.blueGrey.shade700,
                      ),
                      Text(
                        "Google",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: Colors.blueGrey.shade700,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              MaterialButton(
                onPressed: () {},
                child: Container(
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey.shade700,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.facebook,
                        size: 45,
                        color: Colors.white,
                      ),
                      SizedBox(width: 3),
                      Text(
                        "Facebook",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 20),
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context)=>const RegisterPage()
                  )
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.blueGrey.shade700,
                  ),
                ),
                const SizedBox(width: 5),
                Text(
                  "Register",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w900,
                    color: Colors.blueGrey.shade700,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  String? _validateUsername(String value) {
    if (value.isEmpty) {
      return 'Please enter your username';
    }
    return null;
  }
  String? _validatePassword(String value) {
    if (value.isEmpty) {
      return 'Please enter your password';
    }
    return null;
  }
}
