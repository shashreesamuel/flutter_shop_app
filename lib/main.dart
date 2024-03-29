import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData(primarySwatch: Colors.green, brightness: Brightness.dark),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  final double sizedBoxWidth = 8.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[800],
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.grey.shade800,
          buttonBackgroundColor: Colors.grey[700],
          color: Colors.grey.shade700,
          animationDuration: Duration(milliseconds: 500),
          items: [
            Icon(Icons.arrow_back_ios_new_rounded),
            Icon(Icons.home_outlined),
            Icon(Icons.shopping_bag_outlined),
            Icon(Icons.settings),
          ],
          onTap: (index) {
            //Handle button tap
          },
        ),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_back),
                    Row(
                      children: [
                        Icon(Icons.search_outlined),
                        SizedBox(width: 18),
                        Icon(Icons.person_outline),
                      ],
                    )
                  ],
                ),
              ),
              Text('Camera', style: GoogleFonts.poppins(fontSize: 20)),
              Text('Drones', style: GoogleFonts.poppins(fontSize: 20)),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 32.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.menu),
                        SizedBox(
                          width: sizedBoxWidth,
                        ),
                        Text('Short', style: GoogleFonts.poppins(fontSize: 15)),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.filter_list_outlined),
                        SizedBox(
                          width: sizedBoxWidth,
                        ),
                        Text(
                          'Filters',
                          style: GoogleFonts.poppins(fontSize: 15),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Divider(
                  color: Color.fromARGB(66, 255, 253, 253),
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            child: Image.network(
                                'https://images.unsplash.com/photo-1473968512647-3e447244af8f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
                          ),
                        )),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                          child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        child: Image.network(
                            'https://images.unsplash.com/photo-1508444845599-5c89863b1c44?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1169&q=80'),
                      )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                          child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        child: Image.network(
                            'https://images.unsplash.com/photo-1479152471347-3f2e62a2b2a7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1348&q=80'),
                      )),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
