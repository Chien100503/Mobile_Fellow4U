import 'package:fellow4u/pages/inexplore/SeeMore/seeMoreGuides.dart';
import 'package:fellow4u/pages/inexplore/SeeMore/seeMoreTravelNew.dart';
import 'package:fellow4u/pages/inexplore/experiences.dart';
import 'package:fellow4u/pages/inexplore/featured.dart';
import 'package:fellow4u/pages/inexplore/guides.dart';
import 'package:fellow4u/pages/inexplore/topjourneys.dart';
import 'package:fellow4u/pages/inexplore/travelNew.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'inexplore/SeeMore/seeMoreTour.dart';

class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  bool _isFocus = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(160),
        child: SizedBox(
          height: 450,
          child: Stack(
            fit: StackFit.loose,
            children: [
              Positioned(
                top: 0,
                child: Container(
                  height: 180,
                  width: MediaQuery.of(context).size.width,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('lib/image/mytrip1.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Explore',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 34,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.location_pin,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Da Nang',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Image(image: AssetImage('lib/image/cloud.png')),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '26℃',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 30,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                // bottom: 1,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: PhysicalModel(
                    color: Colors.white,
                    shadowColor: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                    elevation: 5,
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color:
                              _isFocus ? const Color(0xff00cea6) : Colors.grey,
                        ),
                        hintMaxLines: 1,
                        hintText: 'Hi, Where do you want to explore?',
                        hintStyle: const TextStyle(fontSize: 18),
                        border: InputBorder.none,
                      ),
                      onTap: () {
                        setState(() {
                          _isFocus = true;
                        });
                      },
                      onSubmitted: (value) {
                        setState(() {
                          _isFocus = false;
                        });
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20, left: 16),
                child: Row(
                  children: [
                    Text('Top journeys',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24)),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Journey(),
              Padding(
                padding: EdgeInsets.only(top: 0, left: 16),
                child: Row(
                  children: [
                    Text('Top Guides',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24)),
                    SizedBox(
                      width: 170,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, 
                        PageTransition(child: SeeMoreGuides(), type: PageTransitionType.rightToLeftWithFade));
                      },
                      child: Text('SEE MORE', style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Color(0xff00cea6))),)
                  ],
                ),
              ),
              Guides(),
              Padding(
                padding: EdgeInsets.only(top: 0, left: 16),
                child: Row(
                  children: [
                    Text('Top Experiences',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24)),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Experiences(),
              Padding(
                padding: EdgeInsets.only(top: 0, left: 16),
                child: Row(
                  children: [
                    Text('Featured Tour',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24)),
                    SizedBox(width: 140,),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            PageTransition(child: SeeMoreTour(), type: PageTransitionType.rightToLeftWithFade));
                      },
                        child: Text('SEE MORE', style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Color(0xff00cea6))),)
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Featured(),
              Padding(
                padding: EdgeInsets.only(top: 0, left: 16),
                child: Row(
                  children: [
                    Text('Travel new',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30)),
                    SizedBox(
                      width: 140,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            PageTransition(child: SeeMoreTravelNew(), type: PageTransitionType.rightToLeftWithFade));
                      },
                      child: Text('SEE MORE', style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Color(0xff00cea6))),)
                  ],
                ),
              ),
              SizedBox(height: 10,),
              TravelNew(),
            ],
          ),
        ],
      ),
    );
  }
}
