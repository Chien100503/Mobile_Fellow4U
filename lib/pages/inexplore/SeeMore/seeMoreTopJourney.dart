import 'dart:async';

import 'package:fellow4u/tabbarpages/days/day1.dart';
import 'package:fellow4u/tabbarpages/days/day2.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class SeeMoreTopJourney extends StatefulWidget {
  const SeeMoreTopJourney({super.key});
  @override
  State<SeeMoreTopJourney> createState() => _SeeMoreTopJourneyState();
}

class _SeeMoreTopJourneyState extends State<SeeMoreTopJourney> with TickerProviderStateMixin {
  late final TabController _tabController;

  int currentIndex = 0;

  Timer? timer;
  final PageController _pageController = PageController(
    initialPage: 0,
  );
  List<String> images = [
    'lib/image/headerTopjourneys.png',
    'lib/image/headerBana.jpg',
    'lib/image/hanoi.jpg',
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    startTimer();
  }

  @override
  void dispose() {
    timer?.cancel();
    _tabController.dispose();
    super.dispose();
  }

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 5), (timer) {
      setState(() {
        if (currentIndex >= 2) {
          currentIndex = 0;
        } else {
          currentIndex = (currentIndex + 1);
        }
        _pageController.animateToPage(
          currentIndex,
          duration: const Duration(milliseconds: 350),
          curve: Curves.easeIn,
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(215.0),
        child: Stack(
          children: [
            SizedBox(
              height: 215,
              width: double.infinity,
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: 215,
                    width: double.infinity,
                    child: Image.asset(
                      images[index % images.length],
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ),
            Positioned(
              bottom: 10,
              left: 170,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (var i = 0; i < images.length; i++)
                    buildIndicator(currentIndex == i)
                ],
              ),
            ),
            Positioned(
                top: 30,
                child: IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                    size: 30,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )),
            Positioned(
                top: 30,
                right: 10,
                child: Row(
                  children: [
                    Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.black.withOpacity(0.3)),
                        child: IconButton(
                            onPressed: () {
                              Share.share('https://www.facebook.com/');
                            },
                            icon: Icon(
                              Icons.share_outlined,
                              color: Colors.white,
                            ))),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.black.withOpacity(0.3)),
                        child: const IconButton(
                            onPressed: null,
                            icon: Icon(
                              Icons.favorite_border_outlined,
                              color: Colors.white,
                            ))),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.black.withOpacity(0.3)),
                        child: const IconButton(
                            onPressed: null,
                            icon: Icon(
                              Icons.bookmark_outline,
                              color: Colors.white,
                            ))),
                  ],
                ))
          ],
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(16, 10, 16, 30),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Da Nang - Ba Na - Ha Noi',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    Text('\$400.00',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff00cea6))),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 9),
                  child: Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Color(0xffFFC100),
                        size: 18,
                      ),
                      Icon(
                        Icons.star,
                        color: Color(0xffFFC100),
                        size: 18,
                      ),
                      Icon(
                        Icons.star,
                        color: Color(0xffFFC100),
                        size: 18,
                      ),
                      Icon(
                        Icons.star,
                        color: Color(0xffFFC100),
                        size: 18,
                      ),
                      Icon(
                        Icons.star,
                        color: Color(0xffFFC100),
                        size: 18,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '145 Reviews',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          color: Color(0xff999999),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 113),
                        child: Text(
                          '\$400.00',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Color(0xff999999),
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: SizedBox(
                        width: 173,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Provide',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff999999),
                              ),
                            ),
                            Text(
                              'dulichviet',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff00cea6),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 3),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15, left: 16),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Summary',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                        Container(
                          height: 42,
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Itinerary',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff777777),
                                ),
                              ),
                              Text(
                                'Da Nang - Ba Na - Hoi An',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                        Container(
                          height: 42,
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Duration',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff777777),
                                ),
                              ),
                              Text(
                                '2 days, 2 nights',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                        Container(
                          height: 42,
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Departure Date',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff777777),
                                ),
                              ),
                              Text(
                                'Feb 12',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 42,
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Departure Place',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff777777),
                                ),
                              ),
                              Text(
                                'Ho Chi Minh',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 28),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image(image: AssetImage('lib/image/iconSchedule.png')),
                      SizedBox(
                        width: 12,
                      ),
                      Text('Schedule',
                          style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        height: 40,
                        width: 190,
                        child: TabBar(
                          labelColor: Colors.white,
                          unselectedLabelColor: Colors.black,
                          indicatorColor: Colors.white,
                          indicator: BoxDecoration(
                              color: const Color(0xff00cea6),
                              borderRadius: BorderRadius.circular(5)),
                          controller: _tabController,
                          tabs: const [
                            Tab(
                              child: Text('Day 1'),
                            ),
                            Tab(
                              child: Text('Day 2'),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: TabBarView(controller: _tabController,
                            children: [
                              DayOne(),
                              DayTwo()
                            ]),
                      ),
                    ],
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(width: 1, color: Colors.black)
                      ),
                      child: Text('\$', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                    ),
                    SizedBox(width: 10,),
                    Text('Price', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),),
                  ],
                ),
                SizedBox(height: 10,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 1, color: Colors.black),
                    color: Colors.white,
                  ),
                  child: Table(
                    defaultColumnWidth: const FixedColumnWidth(170.0),
                    // border: TableBorder.all(color: Colors.black),
                    children: [
                      TableRow(
                        children: [
                          TableCell(
                            child: Container(
                              decoration: const BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Colors.black, width: 1))),
                              height: 40.0,
                              child: const Center(
                                child: Text('1 - 3 Travelers'),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              height: 40.0,
                              decoration: const BoxDecoration(
                                  border: Border(
                                      left: BorderSide(
                                          color: Colors.black, width: 1),
                                      bottom: BorderSide(
                                          color: Colors.black, width: 1))),
                              child: const Center(
                                child: Text('1 - 3 Travelers'),
                              ),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          TableCell(
                            child: Container(
                              decoration: const BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Colors.black, width: 1))),
                              height: 40.0,
                              child: const Center(
                                child: Text('1 - 3 Travelers'),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              decoration: const BoxDecoration(
                                  border: Border(
                                    left: BorderSide(color: Colors.black, width: 1),
                                    bottom: BorderSide(color: Colors.black, width: 1),
                                  )),
                              height: 40.0,
                              child: const Center(
                                child: Text('1 - 3 Travelers'),
                              ),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          TableCell(
                            child: Container(
                              height: 40.0,
                              child: const Center(
                                child: Text('1 - 3 Travelers'),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              decoration: const BoxDecoration(
                                  border: Border(
                                      left: BorderSide(
                                          color: Colors.black, width: 1))),
                              height: 40.0,
                              child: const Center(
                                child: Text('1 - 3 Travelers'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 110,
            alignment: Alignment.center,
            child: Stack(
              children: [
                Positioned(
                    bottom: 0,
                    child: Stack(
                        children:[
                          Container(
                            // color: Colors.black,
                            width: MediaQuery.of(context).size.width,
                            height: 107,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromARGB(60, 0, 0, 0),
                                      offset: Offset(0.0, 1),
                                      blurRadius: 12,
                                      spreadRadius: 0),
                                ]
                            ),
                          ),
                          Positioned(
                              top: 12,
                              left: 40,
                              child: SizedBox(
                                width: 310,
                                height: 50,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(Color(0xff00cea6)),
                                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8),),
                                    ),
                                  ), onPressed: null, child: const Text('BOOK THIS TOUR', style: TextStyle(color: Colors.white),),
                                ),
                              )
                          ),
                        ]
                    )
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildIndicator(bool isSelected) {
    return Container(
      height: 6,
      width: 20,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(50),
          color: isSelected ? const Color(0xff00cea6) : Colors.white),
    );
  }
}
