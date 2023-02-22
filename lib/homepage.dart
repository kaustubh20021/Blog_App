import 'package:flutter/material.dart';
class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white10,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Center(
              child: Text('Blog App'),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Positioned(
                top: 20,
                  child: Container(
                    width: 400,
                    height: 300,
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 80.0,
                        ),
                      ],
                      color: Color(0xffB0BEC5),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(30),
                      child: Image(
                        image: AssetImage(
                            'assets/blogone.png',
                        ),
                      ),
                    ),
                  ),
              ),
              const SizedBox(height: 10,),
              const Divider(),
              const SizedBox(height: 10,),
              Positioned(
                top: 30,
                child: Container(
                  width: 400,
                  height: 300,
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 80.0,
                      ),
                    ],
                    color: Color(0xffB0BEC5),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(30),
                    child: Image(
                      image: AssetImage(
                        'assets/blogtwo.png',
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              const Divider(),
              const SizedBox(height: 10,),
              Positioned(
                top: 30,
                child: Container(
                  width: 400,
                  height: 300,
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 80.0,
                      ),
                    ],
                    color: Color(0xffB0BEC5),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(30),
                    child: Image(
                      image: AssetImage(
                        'assets/blogthree.png',
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              const Divider(),
              const SizedBox(height: 10,),
              Positioned(
                top: 30,
                child: Container(
                  width: 400,
                  height: 300,
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 80.0,
                      ),
                    ],
                    color: Color(0xffB0BEC5),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(30),
                    child: Image(
                      image: AssetImage(
                        'assets/blogfour.png',
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              const Divider(),
              const SizedBox(height: 10,),
              Positioned(
                top: 30,
                child: Container(
                  width: 400,
                  height: 300,
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 80.0,
                      ),
                    ],
                    color: Color(0xffB0BEC5),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(30),
                    child: Image(
                      image: AssetImage(
                        'assets/blog5.png',
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              const Divider(),
              const SizedBox(height: 10,),
              Positioned(
                top: 30,
                child: Container(
                  width: 400,
                  height: 300,
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 80.0,
                      ),
                    ],
                    color: Color(0xffB0BEC5),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(30),
                    child: Image(
                      image: AssetImage(
                        'assets/blog6.png',
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
