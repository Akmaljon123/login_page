import 'package:flutter/material.dart';
import 'package:navigation/pages/login_page.dart';
import 'package:navigation/pages/second_page.dart';

class FirstPage extends StatefulWidget {
  static String id = "/first";

  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade900,
      body: PageView(
        scrollDirection: Axis.horizontal,
        children: [
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 38),
                height: 350,
                width: 410,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/keyboard.jpg"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),

              const SizedBox(height: 40),

              const Text(
                "Be A Creative Person",
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                    color: Colors.white
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                "Millions of peoples can’t  Wait\nto see what you have to share",
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                    color: Colors.grey
                ),
              ),

              const SizedBox(height: 230),

              Row(
                children: [
                  const SizedBox(width: 20),

                  TextButton(
                    onPressed: (){
                      Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context)=>const LoginPage()
                        )
                      );
                    },
                    child: const Text(
                      "Skip",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Colors.white
                      ),
                    ),
                  ),

                  const SizedBox(width: 95),

                  Row(
                    children: [
                      Container(
                        height: 11,
                        width: 11,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.cyan
                        ),
                      ),

                      const SizedBox(width: 8),

                      Container(
                        height: 11,
                        width: 11,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white
                        ),
                      ),

                      const SizedBox(width: 8),

                      Container(
                        height: 11,
                        width: 11,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white
                        ),
                      )
                    ],
                  ),

                  const SizedBox(width: 80),

                  MaterialButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                            pageBuilder: (context, animation, secondaryAnimation) => const SecondPage(),
                            transitionsBuilder: (context, animation, secondaryAnimation, child){
                              var begin = const Offset(1.0, 0);
                              var end = Offset.zero;
                              var curve = Curves.easeInOutCubic;

                              var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                              return SlideTransition(
                                position: animation.drive(tween),
                                child: FadeTransition(
                                  opacity: animation,
                                  child: child,
                                ),
                              );
                            }
                        ),
                      );
                    },
                    child: Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                          color: Colors.cyan,
                          borderRadius: BorderRadius.circular(30)
                      ),
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 38),
                height: 350,
                width: 410,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/community.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              const SizedBox(height: 40),

              const Text(
                "40,000+ Active Members",
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                    color: Colors.white
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                "Explore your mates for growth of\nyour knowledge and personality",
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                    color: Colors.grey
                ),
              ),

              const SizedBox(height: 230),

              Row(
                children: [
                  const SizedBox(width: 20),

                  TextButton(
                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context)=>const LoginPage()
                          )
                      );
                    },
                    child: const Text(
                      "Skip",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Colors.white
                      ),
                    ),
                  ),

                  const SizedBox(width: 95),

                  Row(
                    children: [
                      Container(
                        height: 11,
                        width: 11,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white
                        ),
                      ),

                      const SizedBox(width: 8),

                      Container(
                        height: 11,
                        width: 11,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.cyan
                        ),
                      ),

                      const SizedBox(width: 8),

                      Container(
                        height: 11,
                        width: 11,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white
                        ),
                      )
                    ],
                  ),

                  const SizedBox(width: 80),

                  MaterialButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                            pageBuilder: (context, animation, secondaryAnimation) => const SecondPage(),
                            transitionsBuilder: (context, animation, secondaryAnimation, child){
                              var begin = const Offset(1.0, 0);
                              var end = Offset.zero;
                              var curve = Curves.easeInOutCubic;

                              var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                              return SlideTransition(
                                position: animation.drive(tween),
                                child: FadeTransition(
                                  opacity: animation,
                                  child: child,
                                ),
                              );
                            }
                        ),
                      );
                    },
                    child: Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                          color: Colors.cyan,
                          borderRadius: BorderRadius.circular(30)
                      ),
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),

                  )
                ],
              ),
            ],
          ),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 38),
                height: 350,
                width: 410,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/notebook.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              const SizedBox(height: 40),

              const Text(
                "40,000+ Active Members",
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                    color: Colors.white
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                "Explore your mates for growth of\nyour knowledge and personality",
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                    color: Colors.grey
                ),
              ),

              const SizedBox(height: 230),

              Row(
                children: [
                  const SizedBox(width: 20),

                  TextButton(
                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context)=>const LoginPage()
                          )
                      );
                    },
                    child: const Text(
                      "Skip",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Colors.white
                      ),
                    ),
                  ),

                  const SizedBox(width: 95),

                  Row(
                    children: [
                      Container(
                        height: 11,
                        width: 11,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white
                        ),
                      ),

                      const SizedBox(width: 8),

                      Container(
                        height: 11,
                        width: 11,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white
                        ),
                      ),

                      const SizedBox(width: 8),

                      Container(
                        height: 11,
                        width: 11,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.cyan
                        ),
                      )
                    ],
                  ),

                  const SizedBox(width: 80),

                  MaterialButton(
                    onPressed: (){
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(
                              builder: (context)=>const LoginPage()
                          )
                      );
                    },
                    child: Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                          color: Colors.cyan,
                          borderRadius: BorderRadius.circular(30)
                      ),
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),

                  )
                ],
              ),
            ],
          ),
        ]
      ),
    );
  }
}
