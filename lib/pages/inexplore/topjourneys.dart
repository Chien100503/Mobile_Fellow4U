import 'package:fellow4u/pages/inexplore/SeeMore/seeMoreTopJourney.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Journey extends StatefulWidget {
  const Journey({super.key});

  @override
  State<Journey> createState() => _JourneyState();
}

class _JourneyState extends State<Journey> {
  bool _bookMark = false;
  bool _bookMark1 = false;

  bool get isBookmark => _bookMark;

  bool get isBookmark1 => _bookMark1;

  set isBookmark(bool value) {
    setState(() {
      _bookMark = value;
    });
  }

  set isBookmark1(bool value) {
    setState(() {
      _bookMark1 = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 270,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          const SizedBox(
            height: 10,
          ),
          // Component 1
          Container(
            margin: const EdgeInsets.only(bottom: 35, left: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, PageTransition(child: SeeMoreTopJourney(), type: PageTransitionType.rightToLeftWithFade));
                  },
                  child: Container(
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
                        Container(
                          height: 135,
                          width: 232,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                topLeft: Radius.circular(10)),
                            image: DecorationImage(
                                image: AssetImage('lib/image/topjourneys1.png'),
                                fit: BoxFit.cover),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 190),
                                child: IconButton(
                                    icon: _bookMark
                                        ? Icon(Icons.bookmark_outline)
                                        : Icon(Icons.bookmark),
                                    color: _bookMark
                                        ? Colors.black
                                        : Colors.yellowAccent,
                                    onPressed: () {
                                      setState(() {
                                        isBookmark = !isBookmark;
                                      });
                                    }),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 10.0, top: 65),
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
                                    Text(
                                      '1274 like',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 140, left: 10),
                          child: Column(
                            children: [
                              Text(
                                'Da Nang - Ba Na - Hoi An',
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
                          padding: EdgeInsets.only(top: 160, left: 12),
                          child: Image(
                              image: AssetImage(
                            'lib/image/iconday.png',
                          )),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 160, left: 30),
                          child: Text('Jan 30, 2020'),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 180, left: 12),
                          child: Image(
                              image: AssetImage(
                            'lib/image/icontime.png',
                          )),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 180, left: 30),
                          child: Text('3 days'),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 200, left: 12),
                          child: Text(
                            '\$400.00',
                            style: TextStyle(
                              color: Color(0xFF00cea5),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 215, left: 30),
                          child: Text('     '),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Component 2
          Container(
            margin: const EdgeInsets.only(bottom: 35, left: 16),
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
                      Container(
                        height: 135,
                        width: 232,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              topLeft: Radius.circular(10)),
                          image: DecorationImage(
                              image: AssetImage('lib/image/topjourneys2.png'),
                              fit: BoxFit.cover),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 190),
                              child: IconButton(
                                  icon: _bookMark1
                                      ? Icon(Icons.bookmark_outline)
                                      : Icon(Icons.bookmark),
                                  color: _bookMark1
                                      ? Colors.black
                                      : Colors.yellowAccent,
                                  onPressed: () {
                                    setState(() {
                                      isBookmark1 = !isBookmark1;
                                    });
                                  }),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: const Color(0xfffffff), width: 1),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4),
                                  topRight: Radius.circular(4),
                                  bottomRight: Radius.circular(4),
                                  bottomLeft: Radius.circular(4),
                                ),
                              ),
                              //   margin: const EdgeInsets.fromLTRB(207, 12, 0, 79),
                              //   width: 13,
                              //   height: 15,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10.0),
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
                                  Text(
                                    '1274 like',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 140, left: 10),
                        child: Column(
                          children: [
                            Text(
                              'Thailand',
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
                        padding: EdgeInsets.only(top: 160, left: 12),
                        child: Image(
                            image: AssetImage(
                          'lib/image/iconday.png',
                        )),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 160, left: 30),
                        child: Text('Jan 30, 2020'),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 180, left: 12),
                        child: Image(
                            image: AssetImage(
                          'lib/image/icontime.png',
                        )),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 180, left: 30),
                        child: Text('3 days'),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 200, left: 12),
                        child: Text(
                          '\$400.00',
                          style: TextStyle(
                            color: Color(0xFF00cea5),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 215, left: 30),
                        child: Text('     '),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
