import 'package:cokitchen/repository/featureddata.dart';
import 'package:cokitchen/repository/row_images.dart';
import 'package:cokitchen/style/Responsiveness.dart';
import 'package:cokitchen/style/ck_color.dart';
import 'package:cokitchen/style/ck_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

rowBuilder(BuildContext context) {
  var images = rowImages;
  return Container(
    height: SizeConfig().heightMargin(context, 20),
    child: ListView.builder(
        itemCount: images.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(images[index]))),
            child: Image.asset(images[index]),
          );
        }),
  );
}

featuredList(BuildContext context) {
  List<Widget> listView = List();
  List<FeatureData> getFeatureData = featureData;
  for (var i = 0; i < getFeatureData.length; i++) {
    var data = getFeatureData[i];
    listView.add(Container(
      height: SizeConfig().heightMargin(context, 40),
      child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          color: CKColors.white,
          elevation: 3,
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    data.image,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: SizeConfig().heightMargin(context, 26),
                  ),
                  Positioned(
                      top: SizeConfig().heightMargin(context, 2),
                      right: SizeConfig().widthMargin(context, 3),
                      child: SvgPicture.asset("assets/images/Heart.svg"))
                ],
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: SizeConfig().widthMargin(context, 3),
                      vertical: SizeConfig().heightMargin(context, 1.5)),
                  child: Row(
                    children: [
                      Image.asset(data.companyImage,
                          fit: BoxFit.cover,
                          height: SizeConfig().heightMargin(context, 8)),
                      SizedBox(
                        width: SizeConfig().widthMargin(context, 6),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data.title,
                              style: CKTextstyle.semiboldText,
                            ),
                            SizedBox(
                              height: SizeConfig().heightMargin(context, 0.5),
                            ),
                            Text(
                              data.description,
                              style: CKTextstyle.subText,
                            ),
                            SizedBox(
                              height: SizeConfig().heightMargin(context, 0.75),
                            ),
                            Text(
                              data.price,
                              style: CKTextstyle.subText,
                            ),
                          ],
                        ),
                      ),
                      SvgPicture.asset("assets/images/rightarrow.svg")
                    ],
                  ),
                ),
              )
            ],
          )),
    ));
  }
  return listView;
}