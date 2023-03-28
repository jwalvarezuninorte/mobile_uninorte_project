import 'package:flutter/material.dart';

class CustomAppbarHome extends StatelessWidget {
  const CustomAppbarHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff262D38),
      padding: const EdgeInsets.fromLTRB(16, 60, 16, 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Bienvenido, Nombre',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'profile'),
            child: const CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/images/profile_2.jpg'),
              // child: Image.asset('assets/images/profile.jpg'),
            ),
          ),
        ],
      ),
    );
  }
}
