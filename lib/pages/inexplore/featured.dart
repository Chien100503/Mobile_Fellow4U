import 'package:flutter/material.dart';

class Featured extends StatefulWidget {
  const Featured({super.key});

  @override
  State<Featured> createState() => _FeaturedState();
}

class _FeaturedState extends State<Featured> {
  bool _bookMark = false;
  bool _favorite = false;

  bool get isBookmark => _bookMark;
  bool get isFavorite => _favorite;

  set isBookmark(bool value) {
    setState(() {
      _bookMark = value;
    });
  }

  set isFavorite(bool value) {
    setState(() {
      _favorite = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 35, left: 16),
      child: Column(
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
                  height: 150,
                  width: 365,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        topLeft: Radius.circular(10)),
                    image: DecorationImage(
                        image: AssetImage('lib/image/tour1.png'),
                        fit: BoxFit.cover),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 300),
                        child: IconButton(
                            icon: _bookMark
                                ? const Icon(Icons.bookmark_outline)
                                : const Icon(Icons.bookmark),
                            color: _bookMark
                                ? Colors.black
                                : Colors.white,
                            onPressed: () {
                              setState(() {
                                isBookmark = !isBookmark;
                              });
                            }),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10.0, top: 70),
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
                 Padding(
                  padding: const EdgeInsets.only(top: 140, left: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Da Nang - Ba Na - Hoi An',
                            style: TextStyle(
                              color: Color(0xFF121212),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(width: 120,),
                          IconButton(
                              icon: _favorite
                                  ? const Icon(Icons.favorite_border_outlined, size: 30,)
                                  : const Icon(Icons.favorite, size: 30,),
                              color: _favorite
                                  ? Colors.black
                                  : const Color(0xff00cea6),
                              onPressed: () {
                                setState(() {
                                  isFavorite = !isFavorite;
                                });
                              }),
                        ],
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 180, left: 12),
                  child: Image(
                      image: AssetImage(
                        'lib/image/iconday.png',
                      )),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 180, left: 30),
                  child: Text('Jan 30, 2020'),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 200, left: 12),
                  child: Image(
                      image: AssetImage(
                        'lib/image/icontime.png',
                      )),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 200, left: 30, bottom: 20),
                  child: Row(
                      children: [Text('3 days'),
                    SizedBox(width: 210,),
                    Text('\$400.00', style: TextStyle(
                    color: Color(0xFF00cea5),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),)]),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16,),
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
                  height: 150,
                  width: 365,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        topLeft: Radius.circular(10)),
                    image: DecorationImage(
                        image: AssetImage('lib/image/tour2.png'),
                        fit: BoxFit.cover),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 300),
                        child: IconButton(
                            icon: _bookMark
                                ? const Icon(Icons.bookmark_outline)
                                : const Icon(Icons.bookmark),
                            color: _bookMark
                                ? Colors.black
                                : Colors.white,
                            onPressed: () {
                              setState(() {
                                isBookmark = !isBookmark;
                              });
                            }),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10.0, top: 70),
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
                Padding(
                  padding: const EdgeInsets.only(top: 140, left: 10),
                  child: Column(
                    children: [
                      Row(

                        children: [
                          Text(
                            'Melbourne - Sydney',
                            style: TextStyle(
                              color: Color(0xFF121212),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(width: 150,),
                          IconButton(
                              icon: _favorite
                                  ? const Icon(Icons.favorite_border_outlined, size: 30,)
                                  : const Icon(Icons.favorite, size: 30,),
                              color: _favorite
                                  ? Colors.black
                                  : const Color(0xff00cea6),
                              onPressed: () {
                                setState(() {
                                  isFavorite = !isFavorite;
                                });
                              }),
                        ],
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 180, left: 12),
                  child: Image(
                      image: AssetImage(
                        'lib/image/iconday.png',
                      )),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 180, left: 30),
                  child: Text('Jan 30, 2020'),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 200, left: 12),
                  child: Image(
                      image: AssetImage(
                        'lib/image/icontime.png',
                      )),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 200, left: 30, bottom: 20),
                  child: Row(
                      children: [Text('3 days'),
                        SizedBox(width: 210,),
                        Text('\$600.00', style: TextStyle(
                          color: Color(0xFF00cea5),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),)]),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16,),
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
                  height: 150,
                  width: 365,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        topLeft: Radius.circular(10)),
                    image: DecorationImage(
                        image: AssetImage('lib/image/tour3.png'),
                        fit: BoxFit.cover),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 300),
                        child: IconButton(
                            icon: _bookMark
                                ? const Icon(Icons.bookmark_outline)
                                : const Icon(Icons.bookmark),
                            color: _bookMark
                                ? Colors.black
                                : Colors.white,
                            onPressed: () {
                              setState(() {
                                isBookmark = !isBookmark;
                              });
                            }),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10.0, top: 70),
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
                Padding(
                  padding: const EdgeInsets.only(top: 140, left: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Hanoi - Ha Long Bay',
                            style: TextStyle(
                              color: Color(0xFF121212),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(width: 150,),
                          IconButton(
                              icon: _favorite
                                  ? const Icon(Icons.favorite_border_outlined, size: 30,)
                                  : const Icon(Icons.favorite, size: 30,),
                              color: _favorite
                                  ? Colors.black
                                  : const Color(0xff00cea6),
                              onPressed: () {
                                setState(() {
                                  isFavorite = !isFavorite;
                                });
                              }),
                        ],
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 180, left: 12),
                  child: Image(
                      image: AssetImage(
                        'lib/image/iconday.png',
                      )),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 180, left: 30),
                  child: Text('Jan 30, 2020'),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 200, left: 12),
                  child: Image(
                      image: AssetImage(
                        'lib/image/icontime.png',
                      )),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 200, left: 30, bottom: 20),
                  child: Row(
                      children: [Text('3 days'),
                        SizedBox(width: 210,),
                        Text('\$400.00', style: TextStyle(
                          color: Color(0xFF00cea5),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),)]),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16,),
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
                  height: 150,
                  width: 365,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        topLeft: Radius.circular(10)),
                    image: DecorationImage(
                        image: AssetImage('lib/image/tour4.png'),
                        fit: BoxFit.cover),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 300),
                        child: IconButton(
                            icon: _bookMark
                                ? const Icon(Icons.bookmark_outline)
                                : const Icon(Icons.bookmark),
                            color: _bookMark
                                ? Colors.black
                                : Colors.white,
                            onPressed: () {
                              setState(() {
                                isBookmark = !isBookmark;
                              });
                            }),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10.0, top: 70),
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
                Padding(
                  padding: const EdgeInsets.only(top: 140, left: 10),
                  child: Column(
                    children: [
                      Row(

                        children: [
                          Text(
                            'Hoi An - Tam Ky',
                            style: TextStyle(
                              color: Color(0xFF121212),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(width: 180,),
                          IconButton(
                              icon: _favorite
                                  ? const Icon(Icons.favorite_border_outlined, size: 30,)
                                  : const Icon(Icons.favorite, size: 30,),
                              color: _favorite
                                  ? Colors.black
                                  : const Color(0xff00cea6),
                              onPressed: () {
                                setState(() {
                                  isFavorite = !isFavorite;
                                });
                              }),
                        ],
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 180, left: 12),
                  child: Image(
                      image: AssetImage(
                        'lib/image/iconday.png',
                      )),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 180, left: 30),
                  child: Text('Jan 30, 2020'),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 200, left: 12),
                  child: Image(
                      image: AssetImage(
                        'lib/image/icontime.png',
                      )),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 200, left: 30, bottom: 20),
                  child: Row(
                      children: [Text('3 days'),
                        SizedBox(width: 210,),
                        Text('\$400.00', style: TextStyle(
                          color: Color(0xFF00cea5),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),)]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
