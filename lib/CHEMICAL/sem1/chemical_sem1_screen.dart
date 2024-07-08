import 'package:flutter/material.dart';
import 'package:flutter_application_2/CHEMICAL/sem1/BEE/bee%20-%20Copy.dart';
import 'package:flutter_application_2/CHEMICAL/sem1/CHEMISTRY/chemistry%20-%20Copy.dart';
import 'package:flutter_application_2/CHEMICAL/sem1/CHEMISTRY/chemistry.dart';
import 'package:flutter_application_2/CHEMICAL/sem1/FEE/fee%20-%20Copy.dart';
import 'package:flutter_application_2/CHEMICAL/sem1/FEE/fee.dart';
import 'package:flutter_application_2/CHEMICAL/sem1/GRAPHICS/graphics%20-%20Copy.dart';
import 'package:flutter_application_2/CHEMICAL/sem1/GRAPHICS/graphics.dart';
import 'package:flutter_application_2/CHEMICAL/sem1/MANUFACT/manufact%20-%20Copy.dart';
import 'package:flutter_application_2/CHEMICAL/sem1/MANUFACT/manufact.dart';
import 'package:flutter_application_2/CHEMICAL/sem1/MATHS/maths%20-%20Copy.dart';
import 'package:flutter_application_2/CHEMICAL/sem1/MATHS/maths.dart';
import 'package:flutter_application_2/CHEMICAL/sem1/SPORTS/sports%20-%20Copy.dart';
import 'package:flutter_application_2/CHEMICAL/sem1/SPORTS/sports.dart'; // Import the correct file for units
import 'package:flutter_application_2/CHEMICAL/sem1/BEE/bee.dart';
import 'package:flutter_application_2/widgets/profile.dart'; // Import the profile.dart file

class CHEMICALSem1Screen extends StatefulWidget {
  final String fullName;
  final String branch;
  final String year;
  final String semester;

  const CHEMICALSem1Screen({
    Key? key,
    required this.fullName,
    required this.branch,
    required this.year,
    required this.semester,
  }) : super(key: key);

  @override
  _CHEMICALSem1ScreenState createState() => _CHEMICALSem1ScreenState();
}

class _CHEMICALSem1ScreenState extends State<CHEMICALSem1Screen> {
  int _selectedIndex = 0;
  final List<String> _tabs = ['Notes & Books', 'PYQs'];

  late Map<String, List<Map<String, dynamic>>> _subjects;

  @override
  void initState() {
  super.initState();

  _subjects = {
    'Notes & Books': [
      {
        'name': 'Calculus and Linear Algebra',
        'description': 'Study of calculus and linear algebra including...',
        'image': 'assets/s1.png',
        'page': () => Maths(fullName: widget.fullName),
      },
      {
        'name': 'Engineering Chemistry',
        'description': 'Exploration of fundamental concepts in chemistry...',
        'image': 'assets/s1.png',
        'page': () => Chemistry(fullName: widget.fullName),
      },
      {
        'name': 'Engineering Mechanics',
        'description': 'Introduction to engineering mechanics principles...',
        'image': 'assets/s1.png',
        'page': () => bee(fullName: widget.fullName),
      },
      {
        'name': 'Engineering Graphics',
        'description': 'Fundamentals of engineering drawing and graphics...',
        'image': 'assets/s1.png',
        'page': () => Graphics(fullName: widget.fullName),
      },
      {
        'name': 'Manufacturing Practices',
        'description': 'Introduction to various manufacturing processes...',
        'image': 'assets/s1.png',
        'page': () => Manufact(fullName: widget.fullName),
      },
      {
        'name': 'Sports and Yoga',
        'description': 'Physical education and well-being through sports and yoga...',
        'image': 'assets/s1.png',
        'page': () => Sports(fullName: widget.fullName),
      },
      {
        'name': 'Introduction to Electrical & Electronics Engineering',
        'description': 'Basic concepts in electrical and electronics engineering...',
        'image': 'assets/s1.png',
        'page': () => Fee(fullName: widget.fullName),
      },
      // {
      //   'name': 'Space Exploration',
      //   'description': 'Introduction to space exploration and related technologies...',
      //   'image': 'assets/s1.png',
      //   'page': () => ComputerNetworksPage(fullName: widget.fullName),
      // },
    ],
    'PYQs': [
      {
        'name': 'Calculus and Linear Algebra PYQs',
        'description': 'Previous Year Questions for Calculus and Linear Algebra...',
        'image': 'assets/s2.png',
        'page': () => Maths1(fullName: widget.fullName),
      },
      {
        'name': 'Engineering Chemistry PYQs',
        'description': 'Previous Year Questions for Engineering Chemistry...',
        'image': 'assets/s2.png',
        'page': () => Chemistry1(fullName: widget.fullName),
      },
      {
        'name': 'Engineering Mechanics PYQs',
        'description': 'Previous Year Questions for Engineering Mechanics...',
        'image': 'assets/s2.png',
        'page': () => bee1(fullName: widget.fullName),
      },
      {
        'name': 'Engineering Graphics PYQs',
        'description': 'Previous Year Questions for Engineering Graphics...',
        'image': 'assets/s2.png',
        'page': () => Graphics1(fullName: widget.fullName),
      },
      {
        'name': 'Manufacturing Practices PYQs',
        'description': 'Previous Year Questions for Manufacturing Practices...',
        'image': 'assets/s2.png',
        'page': () => Manufact1(fullName: widget.fullName),
      },
      {
        'name': 'Sports and Yoga PYQs',
        'description': 'Previous Year Questions for Sports and Yoga...',
        'image': 'assets/s2.png',
        'page': () => Sports1(fullName: widget.fullName),
      },
      {
        'name': 'Introduction to Electrical & Electronics Engineering PYQs',
        'description': 'Previous Year Questions for Introduction to Electrical & Electronics Engineering...',
        'image': 'assets/s2.png',
        'page': () => Fee1(fullName: widget.fullName),
      },
      // {
      //   'name': 'Space Exploration PYQs',
      //   'description': 'Previous Year Questions for Space Exploration...',
      //   'image': 'assets/s2.png',
      //   'page': () => ComputerNetworksPage(fullName: widget.fullName),
      // },
    ],
  };
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 3, 13, 148),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hey ${widget.fullName}',
                        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      const Text(
                        'Select Subject',
                        style: TextStyle(fontSize: 16, color: Colors.white70),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfilePage(
                            fullName: widget.fullName,
                            branch: widget.branch,
                            year: widget.year,
                            semester: widget.semester,
                          ),
                        ),
                      );
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.red[600],
                      radius: 30,
                      child: Text(
                        widget.fullName[0].toUpperCase(),
                        style: const TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 22),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 58, 58, 58),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: List.generate(
                            _tabs.length,
                            (index) => Expanded(
                              child: GestureDetector(
                                onTap: () => setState(() => _selectedIndex = index),
                                child: Container(
                                  padding: const EdgeInsets.symmetric(vertical: 12),
                                  decoration: BoxDecoration(
                                    color: _selectedIndex == index
                                        ? Colors.black
                                        : const Color.fromARGB(255, 58, 58, 58),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  child: Text(
                                    _tabs[index],
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 1),
                    Expanded(
                      child: ListView.builder(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        itemCount: _subjects[_tabs[_selectedIndex]]!.length,
                        itemBuilder: (context, index) {
                          var subject = _subjects[_tabs[_selectedIndex]]![index];
                          return Card(
                            color: const Color.fromARGB(255, 58, 58, 58),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                            child: ListTile(
                              contentPadding: const EdgeInsets.all(8),
                              leading: subject['image'] != null
                                  ? Image.asset(subject['image'], width: 80, height: 80)
                                  : null,
                              title: Text(subject['name'], style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                              subtitle: Text(subject['description'], style: const TextStyle(color: Colors.white70)),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => subject['page'](),
                                  ),
                                );
                              },
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
