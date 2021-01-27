import 'package:cokitchen/custom_widgets/row_and_column.dart';
import 'package:cokitchen/repository/featureddata.dart';
import 'package:cokitchen/repository/row_images.dart';
import 'package:cokitchen/style/Responsiveness.dart';
import 'package:cokitchen/style/ck_color.dart';
import 'package:cokitchen/style/ck_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FoodScreen extends StatefulWidget {
  @override
  _FoodScreenState createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
  SizeConfig sc = SizeConfig();
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.symmetric(
                  vertical: sc.heightMargin(context, 3),
                  horizontal: sc.widthMargin(context, 2.5)),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset("assets/images/time.svg"),
                              SizedBox(
                                width: sc.widthMargin(context, 2),
                              ),
                              Text(
                                'Deliver now, to',
                                style: CKTextstyle.subText,
                              ),
                            ],
                          ),
                          Text(
                            '53 Awolowo Road, Ikoyi',
                            style: CKTextstyle.semiboldText,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: sc.widthMargin(context, 5),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset("assets/images/arrowdown.svg"),
                      ),
                      Expanded(
                          child: Container(
                              height: sc.heightMargin(context, 6.5),
                              width: sc.widthMargin(context, 16),
                              alignment: Alignment.centerRight,
                              child: CircleAvatar(
                                backgroundColor: CKColors.searchBackground,
                                radius: sc.heightMargin(context, 5),
                                child: SvgPicture.asset(
                                    "assets/images/person.svg"),
                              )
                              //
                              ))
                    ],
                  ),
                  SizedBox(
                    height: sc.heightMargin(context, 2),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: sc.heightMargin(context, 7),
                          padding: EdgeInsets.symmetric(
                              horizontal: sc.widthMargin(context, 6),
                              vertical: sc.heightMargin(context, 1.5)),
                          decoration: BoxDecoration(
                              color: CKColors.searchBackground,
                              borderRadius: BorderRadius.circular(
                                  sc.heightMargin(context, 3))),
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                'assets/images/bottomNavigation/explore.svg',
                              ),
                              SizedBox(
                                width: sc.widthMargin(context, 4),
                              ),
                              Expanded(
                                child: Container(
                                  height: sc.heightMargin(context, 4),
                                  child: TextField(
                                    controller: controller,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "What are you craving?",
                                      hintStyle: CKTextstyle.subText,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: sc.widthMargin(context, 4),
                      ),
                      SvgPicture.asset(
                        "assets/images/ham.svg",
                        height: sc.heightMargin(context, 3),
                      )
                    ],
                  ),
                  SizedBox(
                    height: sc.heightMargin(context, 2.5),
                  ),
                  Row(
                    children: [
                      Text(
                        "Est. delivery time: 35mins",
                        style: CKTextstyle.subText,
                      ),
                      Spacer(),
                      Text(
                        "Your first delivery is FREE!",
                        style: CKTextstyle.subText,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: sc.heightMargin(context, 1.5),
                  ),
                  rowBuilder(context),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.symmetric(
                      vertical: sc.heightMargin(context, 2),
                    ),
                    child: Text(
                      'Featured',
                      style: CKTextstyle.boldText,
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Column(
                    children: featuredList(context),
                  )
                ],
              ),
            ),
          ),
          Positioned(
              bottom: sc.heightMargin(context, 2),
              left: sc.widthMargin(context, 3),
              right: sc.widthMargin(context, 3),
              child: Container(
                width: double.infinity,
                child: MaterialButton(
                  onPressed: () {},
                  height: sc.heightMargin(context, 7),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)),
                  color: CKColors.green,
                  child: Text(
                    'Track order',
                    style: CKTextstyle.buttonText,
                  ),
                ),
              ))
        ],
      )),
    );
  }
}
