import 'package:flutter/material.dart';

import '../components/search.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  bool _isFocus = false;
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
                child: Text('Chat',
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
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: PhysicalModel(
              color: const Color(0xffb2aeae),
              borderRadius: BorderRadius.circular(50),
              elevation: 0,
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color:
                    _isFocus ? const Color(0xff00cea6) : Colors.grey,
                  ),
                  hintMaxLines: 1,
                  hintText: 'Search Chat',
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
          )
        ],
      ),
    );
  }
}
