class mobilesData{
  final String Name;
  final int Price;
  final String images;
  final String Spec;
 const mobilesData({
    required this.Name,
    required this.Price,
    required this.images,
    required this.Spec,
  });
  static const List<mobilesData> MobilesData = [
    mobilesData(
        Name : "iPhone 13 Pro Max",
        Price : 42900,
        images : "https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/iphone-13-pro-max-blue-select?wid=940&hei=1112&fmt=png-alpha&.v=1645552346295",
        Spec : "iOS15 "
            "\nChipset : Apple A15 Bionic "
            "\nRom 128 Ram 8 "
            "\nRear Camera 12mp,12mp,12mp+TOF 3D LiDAR",
    ),
    mobilesData(
      Name : "Samsung Galaxy S22 Ultra 5G",
      Price : 39900,
      images : "https://images.samsung.com/th/smartphones/galaxy-s22-ultra/buy/S22_Ultra_ProductKV_Burgundy_MO.jpg",
        Spec : "Android 12 (OneUI 4.1)"
            "\nChipset : Snapdragon 8 gen 1 "
            "\nRom 128 Ram 8 "
            "\nRear Camera 108mp,12mp,10mp,10mp"
    ),mobilesData(
        Name : "Xiaomi Mi12 Pro",
        Price : 31990,
        images : "https://img10.jd.co.th/n0/jfs/t7/4/11146239599/524499/812c23bf/61dbc35dN24872889.png!q70.jpg",
        Spec : "Android 12 (MiUI 13) "
            "\nChipset : Snapdragon 8 gen 1 "
            "\nRom 256 Ram 12 "
            "\nRear Camera 50mp,50mp,50mp"
    ),
    mobilesData(
        Name : "iPad Pro 12.9 inch Wifi&Cellular",
        Price : 42900,
        images : "https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/ipad-pro-12-select-wifi-spacegray-202104_GEO_TH_LANG_TH_FMT_WHH?wid=940&hei=1112&fmt=p-jpg&qlt=95&.v=1617923571000",
        Spec : "iPad OS 15 "
            "\nChipset : Apple M1 "
            "\nRom 128 Ram 8 "
            "\nRear Camera 12mp,10mp"
    ),
    mobilesData(
        Name : "Samsung zFlip 3 5G",
        Price : 34900,
        images : "https://images.samsung.com/my/smartphones/galaxy-z-flip3-5g/buy/zflip3_carousel_colorcombokv_ex_mo.jpg",
        Spec : "Android 11 (OneUI 3.5) "
            "\nChipset : Snapdragon 888 "
            "\nRom 128 Ram 8 "
            "\nRear Camera 12mp,12mp"
    ),
    mobilesData(
        Name : "iPad Air5",
        Price : 20900,
        images : "https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/ipad-air-select-wifi-purple-202203?wid=940&hei=1112&fmt=png-alpha&.v=1645066730601",
        Spec : "iPad OS 15 "
            "\nChipset : Apple M1 "
            "\nRom 64 Ram 8 "
            "\nRear Camera 12mp"
    ),
    mobilesData(
        Name : "Samsung zFold 3 5G",
        Price : 42900,
        images : "https://images.samsung.com/pk/smartphones/galaxy-z-fold3-5g/buy/zfold3_carousel_mainsinglekv_mo.jpg",
        Spec : "Android 11 (OneUI 3.5) "
            "\nChipset : Snapdragon 888 "
            "\nRom 256 Ram 12 "
            "\nRear Camera 12mp,12mp,10mp"
    ),
  ];
}