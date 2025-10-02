import 'package:flutter/material.dart';
import 'package:flutter_food_fast_app/models/food_list.dart';
import 'package:flutter_food_fast_app/views/show_detail_food_ui.dart';

class ShowAllFoodUi extends StatefulWidget {
  const ShowAllFoodUi({super.key});

  @override
  State<ShowAllFoodUi> createState() => _ShowAllFoodUiState();
}

class _ShowAllFoodUiState extends State<ShowAllFoodUi> {
  // ตัวแปรเก็บข้อมูลร้านอาหาร
  List<FoodList> foodList = [
    FoodList(
      name: 'Chesters Grill',
      website: 'http://www.chesters.co.th',
      facebook: 'chesterthai',
      phone: '1145',
      image: 'f1.jpg',
      lat: '13.7910662',
      lng: '100.5420563',
    ),
    FoodList(
      name: 'Narai Pizzeria',
      website: 'http://www.naraipizzeria.com',
      facebook: 'naraipizzeria',
      phone: '1744',
      image: 'f2.jpg',
      lat: '13.7910662',
      lng: '100.5420563',
    ),
    FoodList(
      name: 'S&P',
      website: 'http://www.snpfood.com',
      facebook: 'snpfood',
      phone: '1344',
      image: 'f3.jpg',
      lat: '13.7546213',
      lng: '100.4163158',
    ),
    FoodList(
      name: 'Oishi',
      website: 'http://www.oishifood.com',
      facebook: 'oishifoodstation',
      phone: '1773',
      image: 'f4.jpg',
      lat: '13.7546213',
      lng: '100.4163158',
    ),
    FoodList(
      name: 'MK Restaurants',
      website: 'http://www.mkrestaurant.com',
      facebook: 'mkrestaurants',
      phone: '02-248-5555',
      image: 'f5.jpg',
      lat: '13.7546213',
      lng: '100.4163158',
    ),
    FoodList(
      name: 'The Pizza',
      website: 'http://www.1112.com',
      facebook: 'thepizzacompany',
      phone: '1112',
      image: 'f6.jpg',
      lat: '13.7546213',
      lng: '100.4163158',
    ),
    FoodList(
      name: 'Mc Donals',
      website: 'http://www.mcdonalds.co.th',
      facebook: 'McThai',
      phone: '1711',
      image: 'f7.jpg',
      lat: '13.7546213',
      lng: '100.4163158',
    ),
    FoodList(
      name: 'Pizza Hut',
      website: 'http://www.pizzahut.co.th',
      facebook: 'pizzahutthailand',
      phone: '1150',
      image: 'f8.jpg',
      lat: '13.7546213',
      lng: '100.4163158',
    ),
    FoodList(
      name: 'KFC',
      website: 'http://www.kfc.co.th',
      facebook: 'kfcth',
      phone: '1150',
      image: 'f9.jpg',
      lat: '13.8259715',
      lng: '100.4871122',
    ),
    FoodList(
      name: 'JJ Delivery',
      website: 'http://www.jjdelivery.com',
      facebook: 'jjdelivery',
      phone: '02-712-3000',
      image: 'f10.jpg',
      lat: '13.8259715',
      lng: '100.4871122',
    ),
    FoodList(
      name: 'Burger King',
      website: 'http://www.burgerking.co.th',
      facebook: 'burgerkingthailand',
      phone: '1112',
      image: 'f11.jpg',
      lat: '13.8259715',
      lng: '100.4871122',
    ),
    FoodList(
      name: 'See Fah',
      website: 'http://www.seefah.com',
      facebook: 'seefahfanpage',
      phone: '02-800-8080',
      image: 'f12.jpg',
      lat: '13.8259715',
      lng: '100.4871122',
    ),
    FoodList(
      name: 'ฮองมิน',
      website: 'http://www.hongminrestaurant.net',
      facebook: 'hongminfanpage',
      phone: '02-248-0123',
      image: 'f13.jpg',
      lat: '13.8259715',
      lng: '100.4871122',
    ),
    FoodList(
      name: 'Yoshinoya',
      website: 'http://www.yoshinoya.co.th',
      facebook: 'YoshinoyaThailand',
      phone: '02-663-3888',
      image: 'f14.jpg',
      lat: '13.8237315',
      lng: '100.396982',
    ),
    FoodList(
      name: 'ฮั่วเซ่งฮง',
      website: 'http://www.huasenghong.co.th',
      facebook: 'huasenghong',
      phone: '02-2480123',
      image: 'f15.jpg',
      lat: '13.8238913',
      lng: '100.3969819',
    ),
    FoodList(
      name: 'Scoozi Pizza',
      website: 'http://www.scoozipizza.com',
      facebook: 'scoozipizzaclub',
      phone: '02-715-8555',
      image: 'f16.jpg',
      lat: '13.8238913',
      lng: '100.3969819',
    ),
    FoodList(
      name: 'โดมิโน่ พิซซ่า',
      website: 'http://www.dominospizza.co.th',
      facebook: 'DominosPizzaThailand',
      phone: '1612',
      image: 'f17.jpg',
      lat: '13.7765062',
      lng: '100.4575208',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          'สายด่วนชวนหิว',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/images/fastfood.png',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.25,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.separated(
                itemCount: foodList.length, //จำนวนรายการจาก ListView
                separatorBuilder: (context, index) =>
                    const Divider(), //เส้นคั่นระหว่างรายการ
                itemBuilder: (context, index) => ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ShowDetailFoodUi(
                          // ส่งค่ารายการอาหารไปหน้ารายละเอียด
                          foodList: foodList[index],
                        ),
                      ),
                    );
                  },
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/${foodList[index].image}',
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Text(
                    foodList[index].name!,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(foodList[index].phone!),
                  trailing:
                      const Icon(Icons.info, size: 16, color: Colors.green),
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'หิวแล้วอย่าลืมโทรสั่งอาหารนะครับ',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
