import 'package:fellow4u/pages/inexplore/chooseAGuides/guideEmmy.dart';
import 'package:fellow4u/pages/inexplore/chooseAGuides/guideLinh.dart';
import 'package:fellow4u/pages/inexplore/chooseAGuides/guideTuan.dart';
import 'package:flutter/material.dart';

import 'chooseAGuides/guideKhai.dart';

class Guides extends StatefulWidget {
  const Guides({super.key});

  @override
  State<Guides> createState() => _GuidesState();
}

class _GuidesState extends State<Guides> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.only(left: 1, top: 16),
      child: Column(
        children: [
          Container(
            margin:  const EdgeInsets.only(bottom: 35, left: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFffffff),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x19000000),
                          blurRadius: 14,
                          offset: Offset(0, 0),
                        )
                      ]),
                  child: Stack(
                    children: [
                      InkWell(
                        child: Container(
                          height: 164,
                          width: 164,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                topLeft: Radius.circular(10)),
                            image: DecorationImage(
                                image: AssetImage('lib/image/Tuan.png'),
                                fit: BoxFit.cover),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color(0x0fffffff), width: 1),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4),
                                    topRight: Radius.circular(4),
                                    bottomRight: Radius.circular(4),
                                    bottomLeft: Radius.circular(4),
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 10.0, top: 120),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 20,
                                    ),
                                    Icon(Icons.star,
                                        color: Colors.yellow, size: 20),
                                    Icon(Icons.star,
                                        color: Colors.yellow, size: 20),
                                    Icon(Icons.star,
                                        color: Colors.yellow, size: 20),
                                    Icon(Icons.star_half,
                                        color: Colors.yellow, size: 20),
                                    SizedBox(
                                      width: 5,
                                    ),
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  '1274 like',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const GuideTuan()));
                        },
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 165, left: 10),
                        child: Column(
                          children: [
                            Text(
                              'Tuan Tran',
                              style: TextStyle(
                                color: Color(0xFF121212),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 185, left: 7),
                        child: Row(
                          children: [
                            Icon(Icons.location_pin, color: Color(0xff00cea6),size: 16,),
                            Text(
                              'Danang, Vietnam',
                              style: TextStyle(
                                color: Color(0xff00cea6),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 30,),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFffffff),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x19000000),
                          blurRadius: 14,
                          offset: Offset(0, 0),
                        )
                      ]),
                  child: Stack(
                    children: [
                      InkWell(
                        child: Container(
                          height: 164,
                          width: 164,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                topLeft: Radius.circular(10)),
                            image: DecorationImage(
                                image: AssetImage('lib/image/Emmy.png'),
                                fit: BoxFit.cover),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color(0x0fffffff), width: 1),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4),
                                    topRight: Radius.circular(4),
                                    bottomRight: Radius.circular(4),
                                    bottomLeft: Radius.circular(4),
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 10.0, top: 120),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 20,
                                    ),
                                    Icon(Icons.star,
                                        color: Colors.yellow, size: 20),
                                    Icon(Icons.star,
                                        color: Colors.yellow, size: 20),
                                    Icon(Icons.star,
                                        color: Colors.yellow, size: 20),
                                    Icon(Icons.star_half,
                                        color: Colors.yellow, size: 20),
                                    SizedBox(
                                      width: 5,
                                    ),
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  '1274 like',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const GuideEmmy()));
                        },
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 165, left: 10),
                        child: Column(
                          children: [
                            Text(
                              'Emmy',
                              style: TextStyle(
                                color: Color(0xFF121212),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 185, left: 7),
                        child: Row(
                          children: [
                            Icon(Icons.location_pin, color: Color(0xff00cea6),size: 16,),
                            Text(
                              'Hanoi, Vietnam',
                              style: TextStyle(
                                color: Color(0xff00cea6),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
              margin:  const EdgeInsets.only(bottom: 35, left: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFffffff),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x19000000),
                          blurRadius: 14,
                          offset: Offset(0, 0),
                        )
                      ]),
                  child: Stack(
                    children: [
                      InkWell(
                        child: Container(
                          height: 164,
                          width: 164,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                topLeft: Radius.circular(10)),
                            image: DecorationImage(
                                image: AssetImage('lib/image/Linh.png'),
                                fit: BoxFit.cover),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color(0x0fffffff), width: 1),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4),
                                    topRight: Radius.circular(4),
                                    bottomRight: Radius.circular(4),
                                    bottomLeft: Radius.circular(4),
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 10.0, top: 120),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 20,
                                    ),
                                    Icon(Icons.star,
                                        color: Colors.yellow, size: 20),
                                    Icon(Icons.star,
                                        color: Colors.yellow, size: 20),
                                    Icon(Icons.star,
                                        color: Colors.yellow, size: 20),
                                    Icon(Icons.star_half,
                                        color: Colors.yellow, size: 20),
                                    SizedBox(
                                      width: 5,
                                    ),
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  '1274 like',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const GuideLinh()));
                        },
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 165, left: 10),
                        child: Column(
                          children: [
                            Text(
                              'Linh Hana',
                              style: TextStyle(
                                color: Color(0xFF121212),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 185, left: 7),
                        child: Row(
                          children: [
                            Icon(Icons.location_pin, color: Color(0xff00cea6),size: 14,),
                            Text(
                              'Danang, Vietnam',
                              style: TextStyle(
                                color: Color(0xff00cea6),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 30,),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFffffff),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x19000000),
                          blurRadius: 14,
                          offset: Offset(0, 0),
                        )
                      ]),
                  child: Stack(
                    children: [
                      InkWell(
                        child: Container(
                          height: 164,
                          width: 164,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                topLeft: Radius.circular(10)),
                            image: DecorationImage(
                                image: AssetImage('lib/image/Khai.png'),
                                fit: BoxFit.cover),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color(0x0fffffff), width: 1),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4),
                                    topRight: Radius.circular(4),
                                    bottomRight: Radius.circular(4),
                                    bottomLeft: Radius.circular(4),
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 10.0, top: 120),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 20,
                                    ),
                                    Icon(Icons.star,
                                        color: Colors.yellow, size: 20),
                                    Icon(Icons.star,
                                        color: Colors.yellow, size: 20),
                                    Icon(Icons.star,
                                        color: Colors.yellow, size: 20),
                                    Icon(Icons.star_half,
                                        color: Colors.yellow, size: 20),
                                    SizedBox(
                                      width: 5,
                                    ),
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  '1274 like',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const GuideKhai()));
                        },
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 165, left: 10),
                        child: Column(
                          children: [
                            Text(
                              'Khai Ho',
                              style: TextStyle(
                                color: Color(0xFF121212),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 185, left: 7),
                        child: Row(
                          children: [
                            Icon(Icons.location_pin, color: Color(0xff00cea6),size: 14,),
                            Text(
                              'Ho Chi Minh, Vietnam',
                              style: TextStyle(
                                color: Color(0xff00cea6),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
