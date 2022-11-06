import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Resume(),
    );
  }
}

class Resume extends StatefulWidget {
  const Resume({Key? key}) : super(key: key);

  @override
  State<Resume> createState() => _ResumeState();
}

class _ResumeState extends State<Resume> with SingleTickerProviderStateMixin {
  AnimationController? controller;
  Animation? animation;
  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    animation =
        ColorTween(begin: Colors.grey, end: Colors.black).animate(controller!);
    controller?.forward();
    controller?.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Center(child: Text('RESUME')),
      ),
      backgroundColor: animation?.value,
      body: SingleChildScrollView(
        child: MediaQuery.of(context).orientation == Orientation.portrait
            ? Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                          radius: 50.0,
                          backgroundImage:
                              AssetImage('images/Snapchat-1197127016.jpg')),
                      Text(
                        'Chioma Godwin',
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '(Dwinny)',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        child: Text(
                          'Mobile App Developer',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          'A mobile app developer with speciality in Flutter.',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Link(
                        target: LinkTarget.blank,
                        uri: Uri.parse('https://www.facebook.com/clapsworld/'),
                        builder: (BuildContext context,
                            Future<void> Function()? followLink) {
                          return ElevatedButton(
                              onPressed: followLink,
                              child: Text('Open Facebook link'));
                        },
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Link(
                        target: LinkTarget.blank,
                        uri: Uri.parse(
                            'https://www.instagram.com/invites/contact/?i=g5r92czq3n4w&utm_content=ny5sxr7'),
                        builder: (BuildContext context,
                            Future<void> Function()? followLink) {
                          return ElevatedButton(
                              onPressed: followLink,
                              child: Text('Open Instagram link'));
                        },
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Link(
                        target: LinkTarget.blank,
                        uri: Uri.parse(
                            'http://www.linkedin.com/in/chioma-godwin-32012119a'),
                        builder: (BuildContext context,
                            Future<void> Function()? followLink) {
                          return ElevatedButton(
                              onPressed: followLink,
                              child: Text('Open Linkedin link'));
                        },
                      ),
                      SizedBox(
                        height: 30.0,
                        width: 400.0,
                        child: Divider(color: Colors.white),
                      ),
                      Text(
                        "Hello, I'm Chioma, a biochemist-turned-Flutter developer with passion for technology. I am currently an intern at HNG, who is ready to learn and improve her skills for the betterment of your company. Hiring me is simply you improving the productivity of your company",
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                          margin: EdgeInsets.symmetric(vertical: 10.0),
                          height: 100.0,
                          width: 400.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.grey,
                          ),
                          child: Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.person_add,
                                  size: 40.0,
                                ),
                                Text(
                                  'EXPERIENCE',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 40.0,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          )),
                      Container(
                          //margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                          height: 100.0,
                          width: 400.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.grey,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.school,
                                size: 40.0,
                              ),
                              Text(
                                'BACKGROUND',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 40.0,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ))
                    ]),
              )
            : Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                          radius: 50.0,
                          backgroundImage:
                              AssetImage('images/Snapchat-1197127016.jpg')),
                      Text(
                        'Chioma Godwin',
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '(Dwinny)',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        child: Text(
                          'Mobile App Developer',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          'A mobile app developer with speciality in Flutter.',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Link(
                        target: LinkTarget.blank,
                        uri: Uri.parse('https://www.facebook.com/clapsworld/'),
                        builder: (BuildContext context,
                            Future<void> Function()? followLink) {
                          return ElevatedButton(
                              onPressed: followLink,
                              child: Text('Open Facebook link'));
                        },
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Link(
                        target: LinkTarget.blank,
                        uri: Uri.parse(
                            'https://www.instagram.com/invites/contact/?i=g5r92czq3n4w&utm_content=ny5sxr7'),
                        builder: (BuildContext context,
                            Future<void> Function()? followLink) {
                          return ElevatedButton(
                              onPressed: followLink,
                              child: Text('Open Instagram link'));
                        },
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Link(
                        target: LinkTarget.blank,
                        uri: Uri.parse(
                            'http://www.linkedin.com/in/chioma-godwin-32012119a'),
                        builder: (BuildContext context,
                            Future<void> Function()? followLink) {
                          return ElevatedButton(
                              onPressed: followLink,
                              child: Text('Open Linkedin link'));
                        },
                      ),
                      SizedBox(
                        height: 30.0,
                        width: 400.0,
                        child: Divider(color: Colors.white),
                      ),
                      Text(
                        "Hello, I'm Chioma, a biochemist-turned-Flutter developer with passion for technology. I am currently an intern at HNG, who is ready to learn and improve her skills for the betterment of your company. Hiring me is simply you improving the productivity of your company",
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                          margin: EdgeInsets.symmetric(vertical: 10.0),
                          height: 100.0,
                          width: 400.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.grey,
                          ),
                          child: Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.person_add,
                                  size: 40.0,
                                ),
                                Text(
                                  'EXPERIENCE',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 40.0,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          )),
                      Container(
                          //margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                          height: 100.0,
                          width: 400.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.grey,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.school,
                                size: 40.0,
                              ),
                              Text(
                                'BACKGROUND',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 40.0,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ))
                    ]),
              ),
      ),
    );
  }
}
