import 'package:flutter/material.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      color: Colors.blueGrey,
      child: PageView.builder(
          itemCount: 5,
          itemBuilder: (context, position) {
            return _buildPageItem(position);
          }),
    );
  }

  Widget _buildPageItem(int poition) {
    return Stack(
      children: [
        Container(
            height: 220,
            margin: const EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.amber,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/image/food0.png')))),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
              height: 140,
              margin: const EdgeInsets.only(left: 40, right: 40, bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              )),
        )
      ],
    );
  }
}
