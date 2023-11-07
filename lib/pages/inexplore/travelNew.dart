import 'package:flutter/material.dart';

class TravelNew extends StatefulWidget {
  const TravelNew({super.key});

  @override
  State<TravelNew> createState() => _TravelNewState();
}

class _TravelNewState extends State<TravelNew> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white
              ),
          child: Stack(
            children: [
              const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'New Destination in Danang City',
                          style: TextStyle(
                            color: Color(0xFF121212),
                            fontSize: 19,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 5,),Text(
                          'Feb 5, 2020',
                          style: TextStyle(
                            color: Color(0xFF121212),
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Container(
                  height: 150,
                  width: 365,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        topLeft: Radius.circular(10)),
                    image: DecorationImage(
                        image: AssetImage('lib/image/new1.png'),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10,),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white
          ),
          child: Stack(
            children: [
              const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '\$1 Flight Ticket',
                          style: TextStyle(
                            color: Color(0xFF121212),
                            fontSize: 19,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 5,),Text(
                          'Feb 5, 2020',
                          style: TextStyle(
                            color: Color(0xFF121212),
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Container(
                  height: 150,
                  width: 365,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        topLeft: Radius.circular(10)),
                    image: DecorationImage(
                        image: AssetImage('lib/image/new2.png'),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10,),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white
          ),
          child: Stack(
            children: [
              const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Visit Korea in this Tet Holiday',
                          style: TextStyle(
                            color: Color(0xFF121212),
                            fontSize: 19,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 5,),Text(
                          'Feb 5, 2020',
                          style: TextStyle(
                            color: Color(0xFF121212),
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Container(
                  height: 150,
                  width: 365,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        topLeft: Radius.circular(10)),
                    image: DecorationImage(
                        image: AssetImage('lib/image/new3.png'),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
            ],
          ),
        ),
        // footer
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white
          ),
          child: Stack(
            children: [
              const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 50),

                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
