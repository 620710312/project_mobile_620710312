import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_mobile_620710312/Controller/CartController.dart';
import 'package:project_mobile_620710312/Model/MobileData.dart';
import 'package:project_mobile_620710312/Pages/CartPage.dart';


class MobileDetailsPage extends StatefulWidget {
  final int mobileIndex;
  MobileDetailsPage({Key? key,required this.mobileIndex}) : super(key: key);

  @override
  State<MobileDetailsPage> createState() => _MobileDetailsPageState();
}

class _MobileDetailsPageState extends State<MobileDetailsPage> {
  late int mobileindex;



  @override
  void initState() {
    super.initState();
    mobileindex = widget.mobileIndex;
  }
  @override
  Widget build(BuildContext context) {
     var mobileItem = mobilesData.MobilesData[mobileindex];
    return Scaffold(
      appBar: AppBar(title: Text('${mobileItem.Name}')),
      body: Stack(
        children: [
          Column(
            children: [
              AspectRatio(
                aspectRatio: 1.7,
                child: Image.network(
                  mobileItem.images,
                  height: 300.0,
                  width: 150.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  mobileItem.Name,
                  style: TextStyle(fontSize: 30.0),
                ),
              ),
              Text(
                '${mobileItem.Price} บาท',
                style: TextStyle(fontSize: 20.0),
              ),
              Padding(
                  padding: const EdgeInsets.all(10.0),
                child: Text(
                  '${mobileItem.Spec}',
                  style: TextStyle(fontSize: 20.0),
                ),

              ),
            ],
          ),
          if (mobileindex > 0)
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton.icon(
                  onPressed: () => _handleClickButton(-1),
                  label: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text('Previous'),
                  ),
                  icon: const Icon(
                    Icons.keyboard_arrow_left,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          if (mobileindex < mobilesData.MobilesData.length - 1)
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: ElevatedButton.icon(
                    onPressed: () => _handleClickButton(1),
                    label: const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text('Next'),
                    ),
                    icon: const Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  void _handleClickButton(int value) {
    final newIndex = mobileindex + value;
    if (newIndex < 0 || newIndex > mobilesData.MobilesData.length - 1) return;

    setState(() {
      mobileindex += value;
    });
  }
}