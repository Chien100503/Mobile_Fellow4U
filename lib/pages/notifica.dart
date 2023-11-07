import 'package:flutter/material.dart';

import '../components/search.dart';

class Not extends StatefulWidget {
  const Not({super.key});

  @override
  State<Not> createState() => _NotState();
}

class _NotState extends State<Not> {
  bool _folder = true;
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
    );
  }
}


