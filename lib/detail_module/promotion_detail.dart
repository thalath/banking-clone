import 'package:flutter/material.dart';
import '../database_module/promotion_module.dart';

class PromotionDetail extends StatefulWidget {
  final Promotion item;
  const PromotionDetail(this.item, {super.key});

  @override
  State<PromotionDetail> createState() => _PromotionDetailState();
}

class _PromotionDetailState extends State<PromotionDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.item.title,
          style: TextStyle(fontFamily: "Siem Reap"),
        ),
      ),
      body: Center(
        child: Image.network(
          widget.item.image,
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
