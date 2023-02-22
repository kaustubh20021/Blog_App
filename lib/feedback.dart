import 'package:flutter/material.dart';

class feedback extends StatefulWidget {
  const feedback({Key? key}) : super(key: key);

  @override
  State<feedback> createState() => _feedbackState();
}

class _feedbackState extends State<feedback> {
  final Color firstColor = const Color.fromRGBO(133, 30, 62, 1);
  final Color secondColor = const Color.fromRGBO(5, 30, 62, 1);
  final msgController = TextEditingController();
  bool isLoading=false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Center(
            child: Text('Blog App'),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipPath(
                    clipper: MyClipper(),
                    child: Container(
                      width: double.infinity,
                      height: 300,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            firstColor,
                            secondColor,
                          ]),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.red,
                                blurRadius: 12,
                                offset: Offset(0, 6))
                          ]),
                    ),
                  ),
                  const Positioned(
                    top: 30,
                    left: 25,
                    child: Text(
                      'Feedback',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                  const Positioned(
                    top: 70,
                    left: 25,
                    child: Text(
                      'We will be happy to here your',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 90,
                    left: 25,
                    child: Text(
                      'opinion about your app.',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 130,
                    left: 25,
                    child: CircleAvatar(
                      radius: 50,
                      foregroundImage: AssetImage('assets/profile.jpg'),
                    ),
                  ),
                  const Positioned(
                    top: 250,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        'Tell us how we can improve',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      height: 150,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(14)),
                      child: TextField(
                        controller: msgController,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                        ),
                        maxLines: 10,
                        decoration: const InputDecoration(
                            errorText: 'Must not be null',
                            hintText: 'Write here'),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Center(
                child: Text(
                  'How would you rete our app?',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    5,
                        (index) => IconButton(
                            onPressed: (){

                            },
                            icon: const Icon(
                                Icons.star_border_outlined,
                              color: Colors.red,
                              size: 32,
                            ),
                        )
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(fontSize: 20),
                    minimumSize: Size.fromHeight(40),
                    shape: StadiumBorder(),
                  ),
                  child: isLoading ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      CircularProgressIndicator(color: Colors.white,),
                      SizedBox(
                        width: 20,
                      ),
                      Text('Please Wait...')
                    ],
                  )
                      : Text('Send'),
                  onPressed: () async {
                    if(isLoading) return;
                    setState(()=> isLoading=true);
                    await Future.delayed(const Duration(seconds: 3));
                    setState(()=> isLoading=false);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 70);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 300);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
