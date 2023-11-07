import 'package:flutter/material.dart';

class DayTwo extends StatefulWidget {
  const DayTwo({super.key});

  @override
  State<DayTwo> createState() => _DayTwoState();
}

class _DayTwoState extends State<DayTwo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Da Nang - Ha Noi',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16)
          ,),
        SizedBox(height: 14,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xff00cea6).withOpacity(0.5),
                  ),
                ),
                Positioned(
                  top: 4,
                  left: 4,
                  child: Container(
                    height: 12,
                    width: 12,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xff00cea6)
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('6:00AM', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xff00cea6)),),
                Container(
                  // height: MediaQuery.of(context).size.height,
                  width: 320 ,
                  child: Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled.'
                    , style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,),textAlign: TextAlign.justify,),
                ),


              ],
            )
          ],
        ),

        SizedBox(height: 14,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xff00cea6).withOpacity(0.5),
                  ),
                ),
                Positioned(
                  top: 4,
                  left: 4,
                  child: Container(
                    height: 12,
                    width: 12,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xff00cea6)
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('10:00AM', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xff00cea6)),),
                Container(
                  // height: MediaQuery.of(context).size.height,
                  width: 320 ,
                  child: Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled.'
                    , style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,),textAlign: TextAlign.justify,),
                ),


              ],
            )
          ],
        ),

        SizedBox(height: 14,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xff00cea6).withOpacity(0.5),
                  ),
                ),
                Positioned(
                  top: 4,
                  left: 4,
                  child: Container(
                    height: 12,
                    width: 12,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xff00cea6)
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('1:00PM', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xff00cea6)),),
                Container(
                  // height: MediaQuery.of(context).size.height,
                  width: 320 ,
                  child: Column(
                    children: [
                      Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled.'
                        , style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,),textAlign: TextAlign.justify,),
                      SizedBox(height: 5,),
                      Text(
                        'It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets.'
                        , style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,),textAlign: TextAlign.justify,),
                    ],
                  ),
                ),


              ],
            )
          ],
        ),

        SizedBox(height: 14,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xff00cea6).withOpacity(0.5),
                  ),
                ),
                Positioned(
                  top: 4,
                  left: 4,
                  child: Container(
                    height: 12,
                    width: 12,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xff00cea6)
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('8:00PM', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xff00cea6)),),
                Container(
                  // height: MediaQuery.of(context).size.height,
                  width: 320 ,
                  child: Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled.'
                    , style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,),textAlign: TextAlign.justify,),
                ),


              ],
            )
          ],
        ),
      ],
    );
  }
}
