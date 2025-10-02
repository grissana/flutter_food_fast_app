// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_food_fast_app/models/food_list.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ShowDetailFoodUi extends StatefulWidget {
  FoodList? foodList; // ตัวแปรเก็บข้อมูลร้านอาหาร
  ShowDetailFoodUi({
    super.key,
    this.foodList,
  });

  @override
  State<ShowDetailFoodUi> createState() => _ShowDetailFoodUiState();
}

class _ShowDetailFoodUiState extends State<ShowDetailFoodUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          'สายด่วนชวนหิว',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 70),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/images/${widget.foodList!.image}',
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.width * 0.5,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(
                left: 50,
                right: 50,
              ),
              child: Card(
                child: Column(
                  children: [
                    ListTile(
                      onTap: () {},
                      leading: Icon(
                        FontAwesomeIcons.store,
                        color: Colors.red,
                      ),
                      title: Text(
                        '${widget.foodList!.name}',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Divider(),
                    ListTile(
                      onTap: () {},
                      leading: Icon(
                        Icons.phone,
                        color: Colors.green,
                      ),
                      title: Text(
                        '${widget.foodList!.phone}',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Divider(),
                    ListTile(
                      onTap: () {},
                      leading: Icon(
                        Icons.web,
                        color: Colors.blue,
                      ),
                      title: Text(
                        '${widget.foodList!.website}',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Divider(),
                    ListTile(
                      onTap: () {},
                      leading: Icon(
                        FontAwesomeIcons.mapLocationDot,
                        color: Colors.orange,
                      ),
                      title: Text(
                        'เปิด Map ไปยัง ${widget.foodList!.name}',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
