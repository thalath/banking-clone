import 'package:flutter/material.dart';

class InternationalTransfers extends StatelessWidget {
  InternationalTransfers({super.key});

  final List<Map<String, dynamic>> transfers = [
    {
      'title': 'SWIFT - Wire Transfer',
      'icon': Icons.language,
      'color': Colors.orange,
    },
    {
      'title': 'DBP Remit - Transfer',
      'icon': Icons.account_balance,
      'color': Colors.blue,
    },
    {
      'title': 'Ria Money Send/Receive',
      'icon': Icons.send,
      'color': Colors.orangeAccent,
    },
    {
      'title': 'Transfer to South Korea',
      'icon': Icons.flag,
      'color': Colors.redAccent,
    },
    {
      'title': 'MoneyGram Send/Receive',
      'icon': Icons.attach_money,
      'color': Colors.red,
    },
    {
      'title': 'Western Union Send',
      'icon': Icons.payments,
      'color': Colors.yellow,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F1C2D),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "International Transfers",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),

            /// 🔑 IMPORTANT: Expanded makes Grid scrollable
            Expanded(
              child: GridView.builder(
                itemCount: transfers.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 2.8,
                ),
                itemBuilder: (context, index) {
                  return _transferCard(transfers[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _transferCard(Map<String, dynamic> item) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF1B2A3A),
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: [
          CircleAvatar(
            radius: 18,
            backgroundColor: item['color'],
            child: Icon(item['icon'], color: Colors.white, size: 18),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              item['title'],
              style: const TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
