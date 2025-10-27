import 'package:flutter/material.dart';

class CustomCardInfo extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String role;

  const CustomCardInfo({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.role,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 70,
      decoration: BoxDecoration(
        color: const Color(0xFF1E1E1E), // لون الخلفية الغامق
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          // الصورة الدائرية
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  width: 2,
                  color: Colors.purpleAccent, // لون الإطار (Gradient ممكن كمان)
                ),
                image: DecorationImage(
                  // image: NetworkImage(imageUrl),
                  image: AssetImage(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          // الاسم والدور
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "As $role",
                style: TextStyle(
                  color: Colors.white.withOpacity(0.7),
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
