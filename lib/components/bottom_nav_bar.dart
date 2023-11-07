import 'package:flutter/material.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  final int selectedIndex;

  BottomNavBar(
      {super.key, required this.onTabChange, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return PhysicalShape(
        color: Colors.white,
        elevation: 0.5,
        shadowColor: Colors.black,
        clipper: CustomClipath(),
        child: Container(
          height: 70,
          // decoration: BoxDecoration(
          //   color: Colors.white,
          //     borderRadius: BorderRadius.only(
          //         topLeft: Radius.circular(50), topRight: Radius.circular(50)),
          //     boxShadow: [
          //       BoxShadow(
          //           color: Color.fromARGB(60, 0, 0, 0),
          //           offset: Offset(0.0, 1),
          //           blurRadius: 12,
          //           spreadRadius: 0),
          //     ]),
          // margin: EdgeInsets.all(15),
          child: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.explore,
                  color: Color(0xff00cea6),
                  size: 30,
                ),
                label: 'Explore',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.location_pin,
                  color: Color(0xff00cea6),
                  size: 30,
                ),
                label: 'Trips',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.chat,
                  color: Color(0xff00cea6),
                  size: 30,
                ),
                label: 'Chat',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.notifications_active_sharp,
                  color: Color(0xff00cea6),
                  size: 30,
                ),
                label: 'Notification',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Color(0xff00cea6),
                  size: 30,
                ),
                label: 'Account',
              ),
            ],
            currentIndex: selectedIndex,
            selectedItemColor: Color(0xff00cea6),
            onTap: onTabChange,
          ),
        )
        // GNav(
        //   mainAxisAlignment: MainAxisAlignment.spaceAround,
        //   padding: EdgeInsets.all(20.0),
        //   onTabChange: (value) => onTabChange!(value),
        //     iconSize: 28,
        //     color: Colors.grey[400],
        //     activeColor: Color(0xff00cea6),
        //     hoverColor: Color(0xff00cea6),
        //     tabs: [
        //       GButton(icon: Icons.explore, text: 'Ex',),
        //       GButton(icon: Icons.location_pin),
        //       GButton(icon: Icons.chat),
        //       GButton(icon: Icons.notifications_active_sharp),
        //       GButton(icon: Icons.person),
        //     ]),
        );
  }
}

class CustomClipath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0, 0); // Di chuyển đến góc trên cùng bên trái
    path.lineTo(0, size.height); // Line đến góc dưới cùng bên trái
    path.lineTo(size.width, size.height); // Line đến góc dưới cùng bên phải
    path.lineTo(size.width, 0); // Line đến góc trên cùng bên phải
    path.quadraticBezierTo(
        size.width / 2, -20, 0, 0); // Tạo đường cong ở phần trên cùng
    path.close(); // Đóng đường path
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
