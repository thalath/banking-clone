import 'package:flutter/material.dart';

class CardDetail extends StatefulWidget {
  const CardDetail({super.key});

  @override
  State<CardDetail> createState() => _CardDetailState();
}

class _CardDetailState extends State<CardDetail> {
  final List<String> _subCardImage = [
    "https://www.ababank.com/fileadmin/user_upload/Payment_Cards/Debit/Contactless_CSS.png",
    "https://www.ababank.com/fileadmin/user_upload/Payment_Cards/Debit/MC_Platinum_Debit.png",
    "https://www.ababank.com/fileadmin/user_upload/Payment_Cards/Debit/Visa_Debit.png",
  ];

  final String _debitCardTitle =
      "Order your physical Debit Card and choose\n between pick-up and delivery options.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _buildBody());
  }

  Widget _buildBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),

        Container(
          width: double.infinity,
          padding: EdgeInsets.only(left: 16, bottom: 40, top: 10),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 30, 69, 137),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_ios, color: Colors.white),
              ),
              Text(
                "New Card",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                "Get instance access to found and enabled online pay with with ABA' Card",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Text(
                "   Special Edition Debit's card",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              _buildSpecialCardView(
                'https://yt3.googleusercontent.com/_cW8g6t0jDC78gDDxODgkr8ZZByS7eFr3oez1MZ34s52OtrpvZqWBqD3SjdmMFYgmj4N8q70=s900-c-k-c0x00ffffff-no-rj',
                'Vanda',
                'Visa',
                'debit card',
              ),
              SizedBox(height: 30),
              Text(
                "  ABA Debit Card",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              _buildGeneralCardView(
                'https://www.ababank.com/fileadmin/user_upload/Payment_Cards/Debit/MC_Platinum_Debit.png',
                'Debit Card',
                _debitCardTitle,
                _subCardImage,
              ),
              _buildGeneralCardView(
                'https://www.ababank.com/fileadmin/user_upload/Payment_Cards/Debit/MC_Platinum_Debit.png',
                'Debit Card',
                _debitCardTitle,
                _subCardImage,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSpecialCardView(
    String imageData,
    String name,
    String cardName,
    String subCardName,
  ) {
    return Card(
      color: const Color.fromARGB(255, 43, 48, 57),
      margin: const EdgeInsets.all(10),
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.blue, width: 4.0),
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(imageData),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              name,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            Row(
              children: [
                Text(
                  '$cardName  ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
                Text(
                  subCardName,
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGeneralCardView(
    String imageData,
    String cardName,
    String subCardName,
    List<String> items,
  ) {
    return Card(
      color: const Color.fromARGB(255, 43, 48, 57),
      margin: const EdgeInsets.all(10),
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 50,
              height: 30,
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.blue, width: 1.0),
                shape: BoxShape.rectangle,
                image: DecorationImage(
                  image: NetworkImage(imageData),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cardName,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
                Text(
                  subCardName,
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                Row(
                  children: [
                    for (int i = 0; i < items.length; i++)
                      _buildSubCreditImage(items[i]),
                  ],
                ),
              ],
            ),
            Icon(Icons.arrow_forward_ios, size: 19, color: Colors.white),
          ],
        ),
      ),
    );
  }

  Widget _buildSubCreditImage(String image) {
    return Container(
      margin: const EdgeInsets.all(2),
      width: 50,
      height: 30,
      child: ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(5),
        child: Image.network(
          image,
          fit: BoxFit.cover,
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) return child;
            return Center(child: CircularProgressIndicator());
          },
          errorBuilder: (context, error, stackTrace) {
            return Icon(Icons.error);
          },
        ),
      ),
    );
  }
}
