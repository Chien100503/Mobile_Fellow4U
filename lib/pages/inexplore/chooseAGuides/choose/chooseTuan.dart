import 'package:flutter/material.dart';

class ChooseTuan extends StatefulWidget {
  const ChooseTuan({super.key});

  @override
  State<ChooseTuan> createState() => _ChooseTuanState();
}

class _ChooseTuanState extends State<ChooseTuan> {
  bool _isFocus = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: Row(
            children: [
              IconButton(onPressed: () {
                Navigator.pop(context);
              }, icon: Icon(Icons.close_outlined, size: 35,)),
              SizedBox(width: 90,),
              Text('Trip Information', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),),
            ],
          ),
        ),
      ),
    );
  }
}
