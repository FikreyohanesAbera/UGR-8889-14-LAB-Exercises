import 'package:flutter/material.dart';
import './courses.dart';
import './courseListScreen.dart';
import './courseDetailsScreen.dart';

void main() {
  runApp(CourseApp());
}

class CourseApp extends StatefulWidget {
  @override
  State<CourseApp> createState() => _CourseAppState();
}

class _CourseAppState extends State<CourseApp> {
  Course? _selectedCourse;

  List<Course> courses = [
    Course(
        code: "SiTE-001",
        title: "Introduction To Programming",
        description: "Computer Organization, Architecture, Programming"),
    Course(
        code: "SiTE-002",
        title: "Discrete Mathematics",
        description: "Math is fun"),
    Course(
        code: "SiTE-003",
        title: "Mobile Programming",
        description: "Mobile is not so fun"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Navigator(
        pages: [
          MaterialPage(
            key: const ValueKey('CourseListScreen'),
            child: CoursesListScreen(
              courses: courses,
              onTapped: _tabHandler,
            ),
          ),
          if (_selectedCourse != null)
            MaterialPage(
              key: ValueKey(_selectedCourse),
              child: CourseDetailsScreen(
                course: _selectedCourse!,
              ),
            )
        ],
        onPopPage: (route, result) {
          if (!route.didPop(result)) {
            return false;
          }
          setState(() {
            _selectedCourse = null;
          });
          return true;
        },
      ),
    );
  }

  void _tabHandler(Course course) {
    setState(() {
      _selectedCourse = course;
    });
  }
}
