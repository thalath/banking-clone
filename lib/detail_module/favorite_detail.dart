import 'package:flutter/material.dart';

class FavoriteDetail extends StatefulWidget {
  const FavoriteDetail({super.key});

  @override
  State<FavoriteDetail> createState() => _FavoriteDetailState();
}

class _FavoriteDetailState extends State<FavoriteDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},

        child: Text("New "),
      ),
    );
  }

  Widget _buildBody() {
    return Column(
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomRight,
              colors: [
                Color.fromRGBO(100, 100, 100, 0.2),
                Color.fromRGBO(100, 100, 100, 0.4),
                Color.fromRGBO(100, 100, 100, 0.6),
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_ios),
              ),

              SizedBox(height: 18),
              Text(
                "Transfer to friends quickly or pay bills easily from yout saved Favorites.",
              ),
            ],
          ),
        ),
      ],
    );
  }
}
