import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  bool _folder = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 0),
      child: Container(
        margin: const EdgeInsets.only(
          right: 10,
          top: 5,
        ),
        width: _folder ? 56 : 330,
        height: 56,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: Colors.black.withOpacity(0.1),
        ),
        child: AnimatedContainer(
          duration: const Duration(minutes: 1),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(left: 16),
                  child: !_folder
                      ? const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Search...',
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.black),
                        floatingLabelBehavior:
                        FloatingLabelBehavior.never,
                      ),
                    ),
                  )
                      : null,
                ),
              ),
              AnimatedContainer(
                duration: const Duration(milliseconds: 1000),
                child: Material(
                  type: MaterialType.transparency,
                  child: InkWell(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(_folder ? 32 : 0),
                      topLeft: const Radius.circular(32),
                      bottomRight: Radius.circular(_folder ? 32 : 0),
                      bottomLeft: const Radius.circular(32),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(14),
                      child: Icon(
                          _folder ? Icons.search_outlined : Icons.close,
                          color: Colors.white),
                    ),
                    onTap: () {
                      setState(() {
                        _folder = !_folder;
                      });
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
