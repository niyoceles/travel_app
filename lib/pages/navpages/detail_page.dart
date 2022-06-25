import 'package:flutter/material.dart';
import 'package:travel_app/misc/colors.dart';
import 'package:travel_app/widgets/app_button.dart';
import 'package:travel_app/widgets/app_large_text.dart';
import 'package:travel_app/widgets/responsive_button.dart';

import '../../widgets/app_text.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int gottenStars = 4;
  int selectedItem = 0;
  int otherNumbers = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
                top: 0,
                right: 0,
                left: 0,
                child: Container(
                  width: double.maxFinite,
                  height: MediaQuery.of(context).size.height * 0.5,
                  // ignore: prefer_const_constructors
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage('img/mountain.jpg'),
                        fit: BoxFit.cover),
                  ),
                )),
            Positioned(
                left: 20,
                top: 50,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.menu),
                      color: AppColors.mainColor,
                    ),
                  ],
                )),
            Positioned(
              top: 310,
              bottom: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                // height: MediaQuery.of(context).size.height * 0.6,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: Colors.white,
                ),
                child: Container(
                  margin: const EdgeInsets.all(20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppLargeText(
                              text: 'Akagara Trip',
                              color: Colors.black.withOpacity(0.8),
                            ),
                            AppLargeText(
                              text: 'Rwf 20k',
                              color: AppColors.mainColor,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.location_on,
                              size: 20,
                              color: AppColors.mainColor,
                            ),
                            AppText(
                              text: 'Rwanda, Akagera',
                              color: AppColors.mainColor,
                              size: 16,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Wrap(
                              children: List.generate(5, (index) {
                                // gottenStars = 4;
                                return Icon(
                                  Icons.star_outlined,
                                  size: 18,
                                  color: index < gottenStars
                                      ? Colors.orange[200]
                                      : AppColors.textColor2,
                                );
                              }),
                            ),
                            AppText(
                              text: '(4.0)',
                              color: AppColors.textColor2,
                              size: 16,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        AppLargeText(
                          text: 'People',
                          color: Colors.black.withOpacity(0.8),
                          size: 20,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        AppText(
                            text:
                                'This the description details of the products'),
                        const SizedBox(
                          height: 20,
                        ),
                        Wrap(
                          children: List.generate(5, (index) {
                            // gottenStars = 4;
                            return InkWell(
                              onTap: () {
                                setState(() {
                                  selectedItem = index;
                                });
                              },
                              child: Container(
                                margin: const EdgeInsets.only(right: 10),
                                child: AppButton(
                                    size: 15,
                                    color: selectedItem == index
                                        ? AppColors.buttonBackground
                                        : Colors.black.withOpacity(0.8),
                                    isIcon: false,
                                    text: (index + 1).toString(),
                                    backgroundColor: selectedItem == index
                                        ? Colors.black.withOpacity(0.8)
                                        : AppColors.buttonBackground,
                                    borderColor: AppColors.buttonBackground),
                              ),
                            );
                          }),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        AppLargeText(
                          text: 'Description',
                          color: Colors.black.withOpacity(0.8),
                          size: 20,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        AppText(
                            text:
                                'This the description, You must got to the travel and read the details of the products This the description details of the products This the description details of the products'),
                      ]),
                ),
              ),
            ),
            Positioned(
                bottom: 20,
                left: 20,
                right: 20,
                child: Row(
                  children: [
                    AppButton(
                        color: AppColors.textColor2,
                        backgroundColor: AppColors.buttonBackground,
                        borderColor: AppColors.buttonBackground,
                        icon: Icons.favorite_border,
                        isIcon: true,
                        size: 60),
                    const SizedBox(
                      width: 20,
                    ),
                    const ResponseButton(
                      isResponsive: true,
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
