import 'package:flutter/material.dart';
import 'login_page.dart'; 

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.45,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xFFF5F6F8),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(160),
                bottomRight: Radius.circular(160),
              ),
              image: DecorationImage(
                image: NetworkImage('https://i.pinimg.com/736x/09/63/03/09630372b8e6f94257d5c6b3d47f0560.jpg'), 
                fit: BoxFit.cover,
              ),
            ),
          ),

          const SizedBox(height: 40),

          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                text: const TextSpan(
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(text: 'ABA', style: TextStyle(color: Color(0xFF5D5FEF))),
                    TextSpan(text: 'bank', style: TextStyle(color: Color(0xFF1E293B))),
                  ],
                ),
              ),
              const SizedBox(width: 5),
              const Icon(Icons.eco_outlined, color: Color(0xFF5D5FEF), size: 35),
            ],
          ),

          const SizedBox(height: 40),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Easy banking",
                  style: TextStyle(fontSize: 26, color: Color(0xFF5D5FEF)),
                ),
                Text(
                  "with the simplest way",
                  style: TextStyle(fontSize: 26, color: Color(0xFF1E293B), fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ),

          const Spacer(),

          
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
              child: Container(
                height: 75,
                width: 75,
                decoration: const BoxDecoration(
                  color: Color(0xFF1E293B),
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.chevron_right, color: Colors.white, size: 40),
              ),
            ),
          ),
        ],
      ),
    );
  }
}