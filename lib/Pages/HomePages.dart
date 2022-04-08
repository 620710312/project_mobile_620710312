import 'package:flutter/material.dart';
import 'package:project_mobile_620710312/Model/MobileData.dart';
import 'package:project_mobile_620710312/Pages/MobileDetailsPage.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mobile Shop'),
      ),
      body: Stack(
        children: [
          ListView.builder(
            padding: const EdgeInsets.all(8.0),
            itemCount: mobilesData.MobilesData.length,
            itemBuilder: (context, index) => _buildListItem(context, index),
          ),
            const Center(
              child:  SizedBox(
                  width: 40,
                  height: 40,
                  child:  CircularProgressIndicator()),
            ),
        ],
      ),
    );
  }
  Widget _buildListItem(BuildContext context, int index) {
    var MobileItem = mobilesData.MobilesData[index];

    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      margin: const EdgeInsets.all(8.0),
      elevation: 5.0,
      shadowColor: Colors.black.withOpacity(0.2),
      child: InkWell(
        onTap: (){
          _handleClickItem(index);
        } ,
        child: Row(
          children: <Widget>[
            Image.network(
              MobileItem.images,
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
                          MobileItem.Name,
                          style: TextStyle(fontSize: 20.0),
                        ),
                        Text(
                          '${MobileItem.Price.toString()} บาท',
                          style: TextStyle(fontSize: 15.0),
                        ),
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
  void _handleClickItem(int mobileIndex){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) =>  MobileDetailsPage(mobileIndex: mobileIndex)),
    );
  }
}