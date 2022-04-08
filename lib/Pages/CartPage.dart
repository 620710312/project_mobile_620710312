import 'package:flutter/material.dart';
import 'package:project_mobile_620710312/Controller/CartController.dart';
import 'package:get/get.dart';
import 'package:project_mobile_620710312/Model/MobileData.dart';
class CartPage extends StatelessWidget {
  final CartController controller = Get.find();
 CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: ListView.builder(
          itemCount: controller.mobiles.length,
          itemBuilder: (BuildContext context, int index){
            return CartProductCart(
                controller: controller,
              mobile: controller.mobiles.keys.toList()[index],
              quatity: controller.mobiles.values.toList()[index],
              index: index,
            );
    }),
    );
  }
}
class CartProductCart extends StatelessWidget {
  final CartController controller;
  final mobilesData mobile;
  final int quatity;
  final int index;
  const CartProductCart({Key? key,
  required this.controller,
    required this.mobile,
    required this.quatity,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      margin: const EdgeInsets.all(8.0),
      elevation: 5.0,
      shadowColor: Colors.black.withOpacity(0.2),
      child: InkWell(
        onTap: (){} ,
        child: Row(
          children: <Widget>[
            Image.network(
             mobile.images,
              width: 80.0,
              height: 80.0,
              fit: BoxFit.cover,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          mobile.Name,
                          style: TextStyle(fontSize: 20.0),
                        ),
                        Text(
                          '${mobile.Price.toString()} บาท',
                          style: TextStyle(fontSize: 15.0),
                        ),
                        Text("$quatity"),
                        IconButton(onPressed: () {
                          controller.removeMobile(mobile);
                        }, icon: Icon(Icons.remove_circle),)
                      ],
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

