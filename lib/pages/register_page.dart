import 'package:flutter/material.dart';
import 'package:navigation/data/network_service.dart';
import 'package:navigation/pages/home_menu.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool isPressed = false;
  bool isObscure = false;

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  String? nameError;
  String? emailError;
  String? phoneError;
  String? passwordError;
  String? confirmPasswordError;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 10),
            const Center(
              child: Image(
                image: AssetImage("assets/images/m.png"),
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 30),
            Center(
              child: Text(
                "Register",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: Colors.grey.shade800),
              ),
            ),
            const SizedBox(height: 30),
            Center(
              child: Text(
                "Enter your details to register",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.grey.shade700),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                controller: nameController,
                style: TextStyle(color: Colors.blueGrey.shade900),
                cursorColor: Colors.blueGrey.shade900,
                decoration: InputDecoration(
                  label: Text(
                    "Name",
                    style: TextStyle(
                        fontSize: 18, color: Colors.blueGrey.shade900),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.blueGrey.shade900)),
                  errorText: nameError,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(color: Colors.blueGrey.shade900),
                cursorColor: Colors.blueGrey.shade900,
                decoration: InputDecoration(
                  label: Text(
                    "Email address",
                    style: TextStyle(
                        fontSize: 18, color: Colors.blueGrey.shade900),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.blueGrey.shade900)),
                  errorText: emailError,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                controller: phoneController,
                keyboardType: TextInputType.phone,
                style: TextStyle(color: Colors.blueGrey.shade900),
                cursorColor: Colors.blueGrey.shade900,
                decoration: InputDecoration(
                  label: Text(
                    "Mobile phone number",
                    style: TextStyle(
                        fontSize: 18, color: Colors.blueGrey.shade900),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.blueGrey.shade900)),
                  errorText: phoneError,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                controller: passwordController,
                obscureText: isObscure,
                style: TextStyle(color: Colors.blueGrey.shade900),
                cursorColor: Colors.blueGrey.shade900,
                decoration: InputDecoration(
                  suffixIcon: isObscure
                      ? IconButton(
                      onPressed: () {
                        setState(() {
                          isObscure = !isObscure;
                        });
                      },
                      icon: Icon(Icons.visibility_off,
                          color: Colors.blueGrey.shade700))
                      : IconButton(
                      onPressed: () {
                        setState(() {
                          isObscure = !isObscure;
                        });
                      },
                      icon: Icon(Icons.visibility,
                          color: Colors.blueGrey.shade700)),
                  label: Text(
                    "Password",
                    style: TextStyle(
                        fontSize: 18, color: Colors.blueGrey.shade900),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.blueGrey.shade900)),
                  errorText: passwordError,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                controller: confirmPasswordController,
                obscureText: isObscure,
                style: TextStyle(color: Colors.blueGrey.shade900),
                cursorColor: Colors.blueGrey.shade900,
                decoration: InputDecoration(
                  suffixIcon: isObscure
                      ? IconButton(
                      onPressed: () {
                        setState(() {
                          isObscure = !isObscure;
                        });
                      },
                      icon: Icon(Icons.visibility_off,
                          color: Colors.blueGrey.shade700))
                      : IconButton(
                      onPressed: () {
                        setState(() {
                          isObscure = !isObscure;
                        });
                      },
                      icon: Icon(Icons.visibility,
                          color: Colors.blueGrey.shade700)),
                  label: Text(
                    "Confirm password",
                    style: TextStyle(
                        fontSize: 18, color: Colors.blueGrey.shade900),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.blueGrey.shade900)),
                  errorText: confirmPasswordError,
                ),
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      isPressed = !isPressed;
                    });
                  },
                  child: Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                        border:
                        Border.all(color: Colors.blueGrey.shade700)),
                    alignment: Alignment.center,
                    child: isPressed
                        ? Icon(Icons.done, color: Colors.blueGrey.shade700)
                        : const Icon(Icons.filter_none,
                        color: Colors.white, size: 1),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text(
                    "I agree with the terms and conditions",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Colors.blueGrey.shade700),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            MaterialButton(
              onPressed: () {
                // Validate the input fields
                setState(() {
                  nameError = _validateName(nameController.text);
                  emailError = _validateEmail(emailController.text);
                  phoneError = _validatePhone(phoneController.text);
                  passwordError = _validatePassword(passwordController.text);
                  confirmPasswordError = _validateConfirmPassword(
                      passwordController.text, confirmPasswordController.text);

                  NetworkService.sendData(nameController.text, emailController.text, passwordController.text);
                });
                
                Navigator.pushAndRemoveUntil(context,
                  MaterialPageRoute(
                    builder: (context)=> HomeMenu(name: nameController.text, email: emailController.text, number: passwordController.text,),
                  ),
                    (route)=>false
                );
              },
              child: Container(
                width: 400,
                height: 65,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: isPressed ? Colors.blueGrey.shade700 : Colors.white,
                    border: Border.all(
                        color: isPressed ? Colors.blueGrey.shade700 : Colors.blueGrey.shade700)),
                alignment: Alignment.center,
                child: Text(
                  "Next",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: isPressed ? Colors.white : Colors.blueGrey.shade700),
                ),
              ),
            ),
            const SizedBox(height: 150),
          ],
        ),
      ),
    );
  }

  String? _validateName(String value) {
    if (value.isEmpty) {
      return 'Please enter your name';
    }
    return null;
  }

  String? _validateEmail(String value) {
    if (value.isEmpty) {
      return 'Please enter your email address';
    }
    return null;
  }

  String? _validatePhone(String value) {
    if (value.isEmpty) {
      return 'Please enter your phone number';
    }
    return null;
  }

  String? _validatePassword(String value) {
    if (value.isEmpty) {
      return 'Please enter your password';
    } else if (value.length < 6) {
      return 'Password must be at least 6 characters long';
    }
    return null;
  }

  String? _validateConfirmPassword(String password, String value) {
    if (value.isEmpty) {
      return 'Please confirm your password';
    } else if (password != value) {
      return 'Passwords do not match';
    }
    return null;
  }
}
