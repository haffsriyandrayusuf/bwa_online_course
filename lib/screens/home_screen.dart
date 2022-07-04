import 'package:flutter/material.dart';
import 'package:bwa_online_course/theme.dart';
import 'package:bwa_online_course/models/articles_model.dart';
import 'package:bwa_online_course/models/course_model.dart';
import 'package:bwa_online_course/models/category_model.dart';
import 'package:bwa_online_course/screens/detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: kDefaultPadding,
                left: kDefaultPadding,
                right: kDefaultPadding,
                bottom: kDefaultPadding / 2 + 1,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 30,
                    width: 30,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/user.png'),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        height: 26,
                        width: 26,
                        decoration: BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Icon(
                          Icons.search,
                          color: primaryColor,
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Container(
                        height: 26,
                        width: 26,
                        decoration: BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Icon(
                          Icons.notifications_outlined,
                          color: primaryColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: kDefaultPadding,
                      ),
                      child: Text(
                        'Want to Study Class\nwhat\'s Today?',
                        style: TextStyle(
                          letterSpacing: 0.5,
                          height: 1.3,
                          color: primaryColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 11,
                    ),
                    SizedBox(
                      height: 120,
                      child: ListView.separated(
                        padding:
                            EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) => SizedBox(
                          width: 12,
                        ),
                        itemCount: listCategory.length,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 120,
                            decoration: BoxDecoration(
                              color: Color(0xffFFFFFF),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(kDefaultPadding / 2),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 42,
                                    width: 42,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(21),
                                      color: accentColor,
                                    ),
                                    child: Icon(
                                      listCategory[index].icon,
                                      color: secondaryColor,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    listCategory[index].name,
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: primaryColor,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    '${listCategory[index].totalCourse} Course',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      color: subTitleColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: kDefaultPadding,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Popular Course',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: primaryColor,
                            ),
                          ),
                          Text(
                            'Show all',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: secondaryColor,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 24 / 2,
                    ),
                    SizedBox(
                      height: 205,
                      child: ListView.separated(
                        padding:
                            EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) => SizedBox(
                          width: 12,
                        ),
                        itemCount: listCourse.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return DetailScreen(
                                      course: listCourse[index],
                                    );
                                  },
                                ),
                              );
                            },
                            child: Container(
                              width: 180,
                              height: 205,
                              decoration: BoxDecoration(
                                color: Color(0xffFFFFFF),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    height: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(12),
                                      ),
                                      image: DecorationImage(
                                        image: AssetImage(
                                            listCourse[index].imageUrl),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          listCourse[index].price == 0
                                              ? 'FREE'
                                              : listCourse[index]
                                                  .price
                                                  .toString(),
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xff22B07D),
                                          ),
                                        ),
                                        Text(
                                          listCourse[index].nameCourse,
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: primaryColor,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            ...List.generate(
                                              listCourse[index].rating,
                                              // 5,
                                              (index) => Icon(
                                                Icons.star,
                                                size: 16,
                                                color: Color(0xffFFBC58),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 4,
                                            ),
                                            Text(
                                              listCourse[index]
                                                  .totalStudent
                                                  .toString(),
                                              style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                                color: subTitleColor,
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Articles',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: primaryColor,
                            ),
                          ),
                          Text(
                            'Show all',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: secondaryColor,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: kDefaultPadding,
                        vertical: kDefaultPadding / 2,
                      ),
                      child: Column(
                        children: List.generate(
                          listArticles.length,
                          (index) => Container(
                            margin: EdgeInsets.only(
                              bottom: 12,
                            ),
                            height: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Color(0xffFFFFFF),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 86,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.horizontal(
                                          left: Radius.circular(12),
                                        ),
                                        image: DecorationImage(
                                          image: AssetImage(
                                              listArticles[index].imageUrl),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: 160,
                                            child: Text(
                                              listArticles[index].nameArticles,
                                              style: TextStyle(
                                                height: 1.25,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600,
                                                color: primaryColor,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            listArticles[index].tags,
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w500,
                                              color: subTitleColor,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(19.0),
                                      child: listArticles[index].favorite
                                          ? Icon(
                                              Icons.favorite,
                                              size: 16,
                                              color: Color(0xffFF7A7A),
                                            )
                                          : Icon(
                                              Icons.favorite_border_outlined,
                                              size: 16,
                                              color: subTitleColor,
                                            ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
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
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 1,
        unselectedItemColor: accentColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 24,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.category,
              size: 24,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bookmark,
              size: 24,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 14,
              backgroundImage: AssetImage('assets/images/user.png'),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
