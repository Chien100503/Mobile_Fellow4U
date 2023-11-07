import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import '../SeeMore/seeMoreTravelNew.dart';

class GuideKhai extends StatefulWidget {
  const GuideKhai({super.key});

  @override
  State<GuideKhai> createState() => _GuideKhaiState();
}

class _GuideKhaiState extends State<GuideKhai> {
  bool _favorite = false;

  bool get isFavorite => _favorite;

  set isFavorite(bool value) {
    setState(() {
      _favorite = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(220),
        child: SizedBox(
          height: 200,
          child: Stack(
            fit: StackFit.loose,
            children: [
              Positioned(
                top: 0,
                child: Container(
                  height: 170,
                  width: MediaQuery.of(context).size.width,
                  padding:
                  const EdgeInsets.symmetric(vertical: 45, horizontal: 15),
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    image: DecorationImage(
                      image: AssetImage('lib/image/headerKhai.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        child: const Align(
                            alignment: Alignment.topLeft,
                            child: Icon(
                              Icons.arrow_back_ios_new,
                              color: Colors.white,
                            )),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                // bottom: 0,
                child: Padding(
                  padding: const EdgeInsets.only(top: 110, left: 30),
                  child: Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const CircleAvatar(
                      backgroundImage: AssetImage('lib/image/Khai.png'),
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
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Khai Ho',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold)),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 20,
                              ),
                              Icon(Icons.star, color: Colors.yellow, size: 20),
                              Icon(Icons.star, color: Colors.yellow, size: 20),
                              Icon(Icons.star, color: Colors.yellow, size: 20),
                              Icon(Icons.star_half,
                                  color: Colors.yellow, size: 20),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '127 reviews',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                        ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Container(
                      width: 151,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: const Color(0xfff00cea6),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Text(
                        'CHOOSE THIS GUIDE',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 5),
                    child: Container(
                      height: 20,
                      width: 72,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: const Color(0xfff5f5f5),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: const Text('Vietnamese',
                          style: TextStyle(color: Colors.black, fontSize: 12)),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 5),
                    child: Container(
                      height: 20,
                      width: 49,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: const Color(0xfff5f5f5),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: const Text('English',
                          style: TextStyle(color: Colors.black, fontSize: 12)),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 5),
                    child: Container(
                      height: 20,
                      width: 48,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: const Color(0xfff5f5f5),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: const Text('Korea',
                          style: TextStyle(color: Colors.black, fontSize: 12)),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(left: 16, top: 5),
                child: Row(
                  children: [
                    Icon(
                      Icons.location_pin,
                      color: Color(0xff00cea6),
                    ),
                    Text('Danang, Vietnam',
                        style: TextStyle(
                            color: Color(0xff00cea6),
                            fontSize: 14,
                            fontWeight: FontWeight.w400))
                  ],
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              Container(
                height: 134,
                width: 342,
                alignment: Alignment.center,
                child: const Text(
                  'Short introduction: Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry'
                      's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  textAlign: TextAlign.justify,
                ),
              ),
              Stack(
                children: [
                  Container(
                    height: 193,
                    width: 343,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            image: AssetImage('lib/image/Linh.png'),
                            fit: BoxFit.cover)),
                  ),
                  Positioned(
                    left: 140,
                    top: 60,
                    child: Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white.withOpacity(0.5),
                      ),
                    ),
                  ),
                  const Positioned(
                      left: 140,
                      top: 60,
                      child: Icon(
                        Icons.play_arrow,
                        size: 70,
                        color: Color(0xff00cea6),
                      ))
                ],
              ),
              const SizedBox(
                height: 14,
              ),
              // Bảng ----------------
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
              const SizedBox(
                height: 30,
              ),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'My Experience',
                      style:
                      TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 178,
                          width: 180,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                              ),
                              image: DecorationImage(
                                  image: AssetImage('lib/image/hoian1.png'),
                                  fit: BoxFit.cover)),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                height: 85,
                                width: 180,
                                decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      topLeft: Radius.circular(10),
                                    ),
                                    image: DecorationImage(
                                        image:
                                        AssetImage('lib/image/hoian4.png'),
                                        fit: BoxFit.cover)),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                height: 85,
                                width: 180,
                                decoration: const BoxDecoration(

                                    image: DecorationImage(
                                        image:
                                        AssetImage('lib/image/hoian3.png'),
                                        fit: BoxFit.cover)),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Container(
                      height: 110,
                      width: 365,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                blurRadius: 4,
                                offset: const Offset(0, 3))
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 14, top: 9),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 4, bottom: 5),
                              child: Text(
                                '2 Hour Bicycle Tour exploring Hoian',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                            ),
                            Container(
                              child: const Row(
                                children: [
                                  Icon(
                                    Icons.location_pin,
                                    size: 18,
                                    color: Color(0xff00cea6),
                                  ),
                                  SizedBox(
                                    width: 6.75,
                                  ),
                                  Text(
                                    'Hoian, Vietnam',
                                    style: TextStyle(
                                        color: Color(0xff00cea6),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Row(
                                children: [
                                  const Text('Jan 25, 2020',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300)),
                                  const SizedBox(
                                    width: 150,
                                  ),
                                  IconButton(
                                      style: const ButtonStyle(animationDuration: Duration(seconds: 1),),
                                      icon: _favorite
                                          ? const Icon(Icons.favorite_border_outlined)
                                          : const Icon(Icons.favorite),
                                      color: _favorite
                                          ? Colors.black
                                          : const Color(0xff00cea6),
                                      onPressed: () {
                                        setState(() {
                                          isFavorite = !isFavorite;
                                        });
                                      }),
                                  const Text('1224 Likes',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w300)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 16,),
                    // My experience 2 -----------------------------
                    Row(
                      children: [
                        Container(
                          height: 178,
                          width: 180,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                              ),
                              image: DecorationImage(
                                  image: AssetImage('lib/image/hoian7.png'),
                                  fit: BoxFit.cover)),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                height: 85,
                                width: 180,
                                decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      topLeft: Radius.circular(10),
                                    ),
                                    image: DecorationImage(
                                        image:
                                        AssetImage('lib/image/hoian5.png'),
                                        fit: BoxFit.cover)),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                height: 85,
                                width: 180,
                                decoration: const BoxDecoration(

                                    image: DecorationImage(
                                        image:
                                        AssetImage('lib/image/hoian6.png'),
                                        fit: BoxFit.cover)),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Container(
                      height: 110,
                      width: 365,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                blurRadius: 4,
                                offset: const Offset(0, 3))
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 14, top: 9),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 4, bottom: 5),
                              child: Text(
                                'Food tour in Danang',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                            ),
                            Container(
                              child: const Row(
                                children: [
                                  Icon(
                                    Icons.location_pin,
                                    size: 18,
                                    color: Color(0xff00cea6),
                                  ),
                                  SizedBox(
                                    width: 6.75,
                                  ),
                                  Text(
                                    'Danang, Vietnam',
                                    style: TextStyle(
                                        color: Color(0xff00cea6),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Row(
                                children: [
                                  const Text('Jan 25, 2020',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300)),
                                  const SizedBox(
                                    width: 150,
                                  ),
                                  IconButton(
                                      style: const ButtonStyle(animationDuration: Duration(seconds: 1),),
                                      icon: _favorite
                                          ? const Icon(Icons.favorite_border_outlined)
                                          : const Icon(Icons.favorite),
                                      color: _favorite
                                          ? Colors.black
                                          : const Color(0xff00cea6),
                                      onPressed: () {
                                        setState(() {
                                          isFavorite = !isFavorite;
                                        });
                                      }),
                                  const Text('1224 Likes',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w300)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 30,),

                    // Reviews -------------------------------------
                    Row(
                      children: [
                        const Text('Reviews',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30)),
                        const SizedBox(
                          width: 160,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(context,
                                PageTransition(child: const SeeMoreTravelNew(), type: PageTransitionType.rightToLeftWithFade));
                          },
                          child: const Text('SEE MORE', style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Color(0xff00cea6))),),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              image: const DecorationImage(
                                  image: AssetImage('lib/image/userRivew1.png'),
                                  fit: BoxFit.cover
                              )
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 5, left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Pena Valdez', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),),
                              Row(
                                children: [
                                  Icon(Icons.star, size: 16,color: Color(0xffFFC100)),
                                  Icon(Icons.star, size: 16,color: Color(0xffFFC100)),
                                  Icon(Icons.star, size: 16,color: Color(0xffFFC100)),
                                  Icon(Icons.star, size: 16,color: Color(0xffFFC100)),
                                  Icon(Icons.star_half, size: 16,color: Color(0xffFFC100)),
                                  SizedBox(width: 18,),
                                  Text('Jan 22, 2020', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16))
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5,),
                    Container(
                      width: 344,
                      height: 116,
                      child: const Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.'
                        ,style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400), textAlign: TextAlign.justify,),
                    ),
                    // Review 2 -------------------------------------
                    const SizedBox(height: 20,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              image: const DecorationImage(
                                  image: AssetImage('lib/image/userRivew2.png'),
                                  fit: BoxFit.cover
                              )
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 5, left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Daehyun', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),),
                              Row(
                                children: [
                                  Icon(Icons.star, size: 16,color: Color(0xffFFC100)),
                                  Icon(Icons.star, size: 16,color: Color(0xffFFC100)),
                                  Icon(Icons.star, size: 16,color: Color(0xffFFC100)),
                                  Icon(Icons.star, size: 16,color: Color(0xffFFC100)),
                                  Icon(Icons.star_half, size: 16,color: Color(0xffFFC100)),
                                  SizedBox(width: 18,),
                                  Text('Jan 22, 2020', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16))
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5,),
                    Container(
                      width: 344,
                      height: 57,
                      child: const Text(
                        'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\''
                        ,style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400), textAlign: TextAlign.justify,),
                    ),
                    const SizedBox(height: 20,),
                    // Review 3 -------------------------------------
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              image: const DecorationImage(
                                  image: AssetImage('lib/image/userRivew3.png'),
                                  fit: BoxFit.cover
                              )
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 5, left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Burns Marks', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),),
                              Row(
                                children: [
                                  Icon(Icons.star, size: 16,color: Color(0xffFFC100)),
                                  Icon(Icons.star, size: 16,color: Color(0xffFFC100)),
                                  Icon(Icons.star, size: 16,color: Color(0xffFFC100)),
                                  Icon(Icons.star, size: 16,color: Color(0xffFFC100)),
                                  Icon(Icons.star_half, size: 16,color: Color(0xffFFC100)),
                                  SizedBox(width: 18,),
                                  Text('Jan 22, 2020', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16))
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5,),
                    Container(
                      width: 344,
                      height: 95,
                      child: const Text(
                        'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.'
                        ,style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400), textAlign: TextAlign.justify,),
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            height: 90,
          )
        ],
      ),
    );
  }
}
