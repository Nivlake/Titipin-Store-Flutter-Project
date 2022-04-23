import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  final String userName;
  const NavDrawer({Key? key, required this.userName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        child: ListView(
          children: [
            const SizedBox(
              height: 48,
            ),
            profilePic(
                imageAsset: "images/pp/pp.png",
                name: userName,
                profile: "Profile"),
            isiMenuDrawer(
              text: "Favourite",
              icon: Icons.favorite,
            ),
            isiMenuDrawer(
              text: "Wishlist",
              icon: Icons.shopping_basket,
            ),
            isiMenuDrawer(
              text: "Request Figure",
              icon: Icons.add_shopping_cart,
            ),
            isiMenuDrawer(
              text: "About Us",
              icon: Icons.people,
            ),
            isiMenuDrawer(
              text: "Contact Us",
              icon: Icons.call,
            ),
          ],
        ),
      ),
    );
  }

  Widget isiMenuDrawer({
    required String text,
    required IconData icon,
  }) {
    final color = Colors.orange[900];
    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: const TextStyle(color: Colors.black)),
    );
  }

  Widget profilePic({
    required String imageAsset,
    required String name,
    required String profile,
  }) =>
      InkWell(
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 3,
          ),
          child: Row(
            children: [
              CircleAvatar(radius: 30, backgroundImage: AssetImage(imageAsset)),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    profile,
                    style: const TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ],
              ),
              const Spacer(),
            ],
          ),
        ),
      );
}
