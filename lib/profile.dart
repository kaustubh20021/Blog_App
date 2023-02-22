import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Blog App'),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(
                width: 120,
                height: 120,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: const Image(
                    image: AssetImage('assets/profile.jpg'),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Makrand Begde',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const Text(
                'Marketing Manager',
                style: TextStyle(
                  fontSize: 10,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Icon(Icons.business),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Nav-Bharat'),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Icon(Icons.phone),
                  SizedBox(
                    width: 10,
                  ),
                  Text('+919822473910')
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Icon(Icons.mail),
                  SizedBox(
                    width: 10,
                  ),
                  Text('makrandbegde@gmail.com')
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Icon(Icons.account_circle_outlined),
                  SizedBox(
                    width: 10,
                  ),
                  Text('MakNav@123')
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Icon(Icons.link),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'linkedin.com/makrand-begde',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider()
            ],
          ),
        ),
      ),
    );
  }
}
