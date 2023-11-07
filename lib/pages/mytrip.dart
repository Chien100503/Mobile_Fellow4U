import 'package:flutter/material.dart';

import '../components/search.dart';
import '../tabbarpages/current_trips.dart';
import '../tabbarpages/next_trips.dart';
import '../tabbarpages/past_trips.dart';
import '../tabbarpages/wish_trips.dart';

class MyTrip extends StatefulWidget {
  const MyTrip({super.key});

  @override
  State<MyTrip> createState() => _MyTripState();
}

class _MyTripState extends State<MyTrip> with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(140.0),
        child: Container(
          padding: const EdgeInsets.only(top: 40, left: 15, right: 15, bottom: 25),
          height: double.infinity,
          decoration: const BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                  image: AssetImage('lib/image/mytrip1.png'),
                  fit: BoxFit.cover)),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(alignment: Alignment.topRight, child: Search()),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text('Profile',
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                        height: 0.4)),
              ),
            ],
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(15),
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Container(
                height: 60,
                width: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                  color: Colors.white54,
                ),
                child: Column(
                  children: [
                    TabBar(
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.black,
                      indicatorColor: Colors.white,
                      indicator: BoxDecoration(
                          color: const Color(0xff00cea6),
                          borderRadius: BorderRadius.circular(5)),
                      controller: tabController,
                      tabs: const [
                        Tab(
                          child: Padding(
                            padding: EdgeInsets.all(0),
                            child: Text(
                              'Current Trips',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Next Trips',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Past Trips',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ),
                        Tab(
                          text: 'Wish Trips',
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                  child: TabBarView(
                controller: tabController,
                children: const [
                  CurrentTrip(),
                  NextTrip(),
                  PastTrip(),
                  WishTrip()
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
