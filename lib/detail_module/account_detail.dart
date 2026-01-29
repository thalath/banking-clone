import 'package:flutter/material.dart';

class AccountDetail extends StatefulWidget {
  const AccountDetail({super.key});

  @override
  State<AccountDetail> createState() => _AccountDetailState();
}

class _AccountDetailState extends State<AccountDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 4, 82, 106),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Column(
      children: [
        // Header
        Container(
          height: 260,
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF0B5ED7), Color(0xFF003A8F)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios),
                    color: Colors.white,
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Accounts',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),

              // Summary Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Donut chart placeholder
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 8),
                    ),
                    child: const Center(
                      child: Text(
                        'All Accounts\nSummary',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Text(
                        'Total in USD',
                        style: TextStyle(color: Colors.white70),
                      ),
                      Text(
                        '\$0.50',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Total in KHR',
                        style: TextStyle(color: Colors.white70),
                      ),
                      Text(
                        '៛400.00',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),

        // Account List
        Expanded(
          child: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              _buildAccount("Savings Account", "2345678 | savings", "0.01 USD"),
              _buildAccount("Savings Account", "2345678 | savings", "0.01 KHR"),
            ],
          ),
        ),
      ],
    );
  }

  Widget accountCard(String title, String amount) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: const Text('**** 5434'),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(amount, style: const TextStyle(fontWeight: FontWeight.bold)),
            const Icon(Icons.more_horiz),
          ],
        ),
      ),
    );
  }

  Widget _buildAccount(String title, String subTitle, String amount) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0, top: 0, bottom: 20),
        child: Stack(
          children: [
            Positioned(
              bottom: -5,
              right: 10,
              child: Text(
                amount,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(subTitle),
            ),

            Positioned(
              right: 10,
              top: -20,
              child: Text(
                "...",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
