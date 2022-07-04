import 'package:bwa_online_course/models/course_model.dart';
import 'package:bwa_online_course/theme.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final Course course;
  const DetailScreen({Key? key, required this.course}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    List<String> detailCourse = [
      "About",
      "Lesson",
      "Tools",
      "Resource",
      "Review",
    ];
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          initialIndex: 1,
          length: detailCourse.length,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(kDefaultPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 26,
                        width: 26,
                        decoration: BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Icon(
                          Icons.keyboard_arrow_left,
                          color: primaryColor,
                        ),
                      ),
                    ),
                    Text(
                      'Course Details',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: primaryColor,
                      ),
                    ),
                    Container(
                      height: 26,
                      width: 26,
                      decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Icon(
                        Icons.bookmark_border_outlined,
                        color: primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: kDefaultPadding),
                        child: Stack(
                          children: [
                            Container(
                              height: 227,
                              // width: 327,
                              decoration: BoxDecoration(
                                color: Color(0xffFFFFFF),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Container(
                                height: 203,
                                // width: 303,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                    image: AssetImage(widget.course.imageUrl),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                child: Center(
                                  child: CircleAvatar(
                                    backgroundColor: Color(0x33FFFFFF),
                                    radius: 22.5,
                                    child: Icon(
                                      Icons.play_arrow_rounded,
                                      size: 26,
                                      color: Color(0xffFFFFFF),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(24, 12, 24, 12),
                        child: Text(
                          widget.course.nameCourse,
                          maxLines: 2,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: primaryColor,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(24, 12, 24, 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage(widget.course.imageMentor),
                                  radius: 24,
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      widget.course.nameMentor,
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: primaryColor,
                                      ),
                                    ),
                                    Text(
                                      'Mentor UI Designer',
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                        color: subTitleColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Icon(
                              Icons.keyboard_arrow_right,
                              size: 24,
                              color: primaryColor,
                            ),
                          ],
                        ),
                      ),
                      TabBar(
                        padding: EdgeInsets.symmetric(
                          horizontal: 24,
                        ),
                        unselectedLabelColor: primaryColor,
                        labelColor: secondaryColor,
                        isScrollable: true,
                        indicatorColor: Colors.transparent,
                        indicatorSize: TabBarIndicatorSize.label,
                        labelPadding: EdgeInsets.all(
                          0,
                        ),
                        tabs: List.generate(
                          detailCourse.length,
                          (index) => Container(
                            margin: EdgeInsets.only(
                              right: 12,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            padding: EdgeInsets.symmetric(
                              vertical: 6,
                              horizontal: 12,
                            ),
                            child: Text(
                              detailCourse[index],
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 360,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(24, 12, 24, 0),
                          child: TabBarView(
                            children: [
                              Text("This is About"),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Course List",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Container(
                                    height: 307,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    padding: EdgeInsets.all(12),
                                    child: ListView.separated(
                                      separatorBuilder: (context, index) =>
                                          SizedBox(
                                        height: 12,
                                      ),
                                      itemCount: listLessonCourse.length,
                                      itemBuilder: (context, index) {
                                        return Row(
                                          children: [
                                            Container(
                                              height: 24,
                                              width: 24,
                                              decoration: BoxDecoration(
                                                color: accentColor,
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  (index + 1).toString(),
                                                  style: TextStyle(
                                                    fontSize: 11,
                                                    fontWeight: FontWeight.w600,
                                                    color: secondaryColor,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 14,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  width: 327,
                                                  child: Text(
                                                    listLessonCourse[index]
                                                        .nameLesson,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: primaryColor,
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  listLessonCourse[index]
                                                      .timerLesson,
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w400,
                                                    color: subTitleColor,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              Text("Tools"),
                              Text("Resource"),
                              Text("Review"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 72,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: kDefaultPadding,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Price',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: subTitleColor,
                    ),
                  ),
                  Text(
                    widget.course.price == 0
                        ? 'FREE'
                        : widget.course.price.toString(),
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff22B07D),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              child: Container(
                width: 226,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Start Course',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
