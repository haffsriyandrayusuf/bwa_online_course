class Course {
  final String imageUrl;
  final String nameCourse;
  final String imageMentor;
  final String nameMentor;
  final int price;
  final int rating;
  final int totalStudent;
  Course({
    required this.imageUrl,
    required this.nameCourse,
    required this.imageMentor,
    required this.nameMentor,
    required this.price,
    required this.rating,
    required this.totalStudent,
  });
}

List<Course> listCourse = [
  Course(
    imageUrl: 'assets/images/course1.png',
    nameCourse: 'UI Design : Wireframe to Visual Design',
    imageMentor: 'assets/images/mentor1.png',
    nameMentor: 'Shem Bizo',
    price: 25000,
    rating: 5,
    totalStudent: 4015,
  ),
  Course(
    imageUrl: 'assets/images/course2.png',
    nameCourse: 'UI Design : Styleguide with Figma',
    imageMentor: 'assets/images/mentor1.png',
    nameMentor: 'Jhon Smith',
    price: 0,
    rating: 5,
    totalStudent: 1055,
  ),
  Course(
    imageUrl: 'assets/images/course1.png',
    nameCourse: 'UI Design : Wireframe to Visual Design',
    imageMentor: 'assets/images/mentor1.png',
    nameMentor: 'Daniel Foster',
    price: 25000,
    rating: 4,
    totalStudent: 4015,
  ),
];

class LessonCourse {
  final String nameLesson;
  final String timerLesson;
  LessonCourse({
    required this.nameLesson,
    required this.timerLesson,
  });
}

List<LessonCourse> listLessonCourse = [
  LessonCourse(
    nameLesson: 'Visual Design Intro',
    timerLesson: '04:47',
  ),
  LessonCourse(
    nameLesson: 'Design Reference',
    timerLesson: '03:45',
  ),
  LessonCourse(
    nameLesson: 'Create Moodboard',
    timerLesson: '03:45',
  ),
  LessonCourse(
    nameLesson: 'Wireframe to Visual Design Part 1',
    timerLesson: '09:03',
  ),
  LessonCourse(
    nameLesson: 'Wireframe to Visual Design Part 1',
    timerLesson: '09:03',
  ),
  LessonCourse(
    nameLesson: 'Wireframe to Visual Design Part 1',
    timerLesson: '09:03',
  ),
  LessonCourse(
    nameLesson: 'Wireframe to Visual Design Part 1',
    timerLesson: '09:03',
  ),
];
