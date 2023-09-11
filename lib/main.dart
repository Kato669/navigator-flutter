import 'package:flutter/material.dart';

void main() => runApp(
      const myApp(),
    );

// ignore: camel_case_types
class myApp extends StatefulWidget {
  const myApp({super.key});

  @override
  State<myApp> createState() => _myAppState();
}

// ignore: camel_case_types
class _myAppState extends State<myApp> {
  String buttonName = 'Click Me';
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'navigator',
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        backgroundColor: const Color.fromARGB(31, 163, 148, 148),
        appBar: AppBar(
          title: const Text('Navigator'),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: currentIndex == 0 ? SizedBox(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          child: Center(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.orange,
              ),
              child:  Text(
                buttonName = 'Am clicked',
              ),
            ),
          ),
        ) : currentIndex == 1 ?  Column(
          children: [
            Container(
              color: Colors.red,
              height: double.infinity,
              width: double.infinity,
              child: const Center(
                child: Text('Welcome to settings'),
              ),
            )
          ],
        ) :  Row(
          children: [
            // ignore: sized_box_for_whitespace
            Container(
              height: MediaQuery.sizeOf(context).height,
              width: MediaQuery.sizeOf(context).width,
              color: Colors.green,
              child: const Center(
                child: Text('welcome to notification'),
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'Setting',
              icon: Icon(Icons.settings),
            ),
            BottomNavigationBarItem(
              label: 'Notification',
              icon: Icon(Icons.notification_add_rounded),
            ),
          ],
          currentIndex: currentIndex,
          onTap: (int indexed) {
            setState(() {
              currentIndex = indexed;
            });
          },
        ),
      )),
    );
  }
}
