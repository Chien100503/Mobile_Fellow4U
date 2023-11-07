import 'package:flutter/material.dart';

import '../components/search.dart';

class User extends StatefulWidget {
  const User({super.key});

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  bool _folder = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(120.0),
        child: AppBar(
          title: Text('Profile',),
          elevation: 0,
          flexibleSpace: const Image(
            image: AssetImage('lib/image/mytrip1.png'),
            fit: BoxFit.cover,
          ),
          backgroundColor: Colors.transparent,
          actions: [
            Search(),
          ],
        ),
      ),
    );
  }
}
