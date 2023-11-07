import 'package:flutter/material.dart';

class Experiences extends StatefulWidget {
  const Experiences({super.key});

  @override
  State<Experiences> createState() => _ExperiencesState();
}

class _ExperiencesState extends State<Experiences> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 380,
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
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xfff8f8f8),
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
                        height: 259,
                        width: 206,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              topLeft: Radius.circular(10)),
                          image: DecorationImage(
                              image: AssetImage('lib/image/hoian1.png'),
                              fit: BoxFit.cover),
                        ),
                        child: Padding(
                          padding:  const EdgeInsets.only(top: 130, left:30),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(color: const Color(0xff00cea6), width: 5),
                                  ),
                                  child:
                                  const CircleAvatar(backgroundImage: AssetImage('lib/image/Tuan.png'),radius: 35),
                                ),
                                const SizedBox(height: 3,),
                                Container(
                                  margin: const EdgeInsets.only(left: 0),
                                  height: 23,
                                  width: 93,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: const Color(0xff00cea6),
                                  ),
                                  alignment: Alignment.center,
                                  child: const Text('Tuan Tran', style: TextStyle(color: Colors.white),),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 270, left: 10),
                        child: Column(
                          children: [
                            Text(
                              '2 Hour Bicycle Tour',
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
                        padding: EdgeInsets.only(top: 290, left: 10),
                        child: Text(
                          'exploring Hoian',
                          style: TextStyle(
                            color: Color(0xFF121212),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 315, left: 5),
                        child: Row(
                          children: [
                            Icon(Icons.location_pin, color: Color(0xff00cea6), size: 16,),
                            Text('Hoian, Vietnam', style: TextStyle(color: Color(0xff00cea6)),),
                          ],
                        ),
                      )
                    ],
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
                      color: const Color(0xfff8f8f8),
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
                        height: 259,
                        width: 206,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              topLeft: Radius.circular(10)),
                          image: DecorationImage(
                              image: AssetImage('lib/image/hoian2.png'),
                              fit: BoxFit.cover),
                        ),
                        child: Padding(
                          padding:  const EdgeInsets.only(top: 130, left: 50),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(color: const Color(0xff00cea6), width: 5),
                                    image: const DecorationImage(
                                        image: AssetImage('lib/image/Linh.png')
                                    )
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 0),
                                height: 23,
                                width: 93,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: const Color(0xff00cea6),
                                ),
                                alignment: Alignment.center,
                                child: const Text('Linh Hana', style: TextStyle(fontSize: 16,color: Colors.white),),
                              )
                            ],
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 270, left: 10),
                        child: Column(
                          children: [
                            Text(
                              '1 day at Bana Hill',
                              style: TextStyle(
                                color: Color(0xFF121212),
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 300, left: 5),
                        child: Row(
                          children: [
                            Icon(Icons.location_pin, color: Color(0xff00cea6), size: 16,),
                            Text('Bana, VietNam', style: TextStyle(color: Color(0xff00cea6)),),
                          ],
                        ),
                      )
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
