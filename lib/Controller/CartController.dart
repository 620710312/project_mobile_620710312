import 'package:get/get.dart';
import 'package:project_mobile_620710312/Model/MobileData.dart';

class CartController extends GetxController {

  var _mobiles = {}.obs;

  void addMobile(mobilesData mobile) {
    if (_mobiles.containsKey(mobile)) {
      _mobiles[mobile] += 1;
    } else {
      _mobiles[mobile] = 1;
    }
    Get.snackbar(
      "Order is confirmed",
      "You choose ${mobile.Name} to Cart",
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: 2),
    );
  }

  void removeMobile(mobilesData mobile) {
    if (_mobiles.containsKey(mobile) && _mobiles[mobile] == 1) {
      _mobiles.removeWhere((key, value) => key == mobile);
    } else {
      _mobiles[mobile] -= 1;
    }
  }
  get mobiles => _mobiles;
  get costTotal => _mobiles.entries.map((mobile)=>mobile.key.Price * mobile.value).toList();
  get total => _mobiles.entries.map((mobile)=>mobile.key.Price * mobile.value).toList().reduce((value, element) => value+element).toString();
}
