// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:familyforge_fitness_130/core/ff_colors.dart';
import 'package:familyforge_fitness_130/core/ff_motin.dart';
import 'package:familyforge_fitness_130/food/dishes/dishes_detail/widget/food_detail_item_widget.dart';
import 'package:familyforge_fitness_130/food/dishes/dishes_detail/widget/ingre_widget.dart';

class DishesDetail extends StatelessWidget {
  const DishesDetail({
    super.key,
    required this.recipe,
    required this.imagGlav,
    required this.title,
    required this.description,
    required this.time1,
    required this.timeDes1,
    required this.time2,
    required this.timeDes2,
    required this.time3,
    required this.timeDes3,
    required this.time4,
    required this.timeDes4,
    required this.time5,
    required this.timeDes5,
    required this.imageIngredient,
    required this.ingr1,
    required this.ingr2,
    required this.ingr3,
    required this.ingr4,
    required this.ingr5,
    required this.ingr6,
    required this.ingr7,
    required this.ingr8,
    required this.ingr9,
    required this.ingr10,
    required this.ingr11,
    required this.ingr12,
    required this.ingr13,
    required this.ingr14,
    required this.ingr15,
    required this.ingr16,
    required this.ingr17,
    required this.ingr18,
    required this.step1,
    required this.descriptionStep1,
    required this.imageStep1,
    required this.step2,
    required this.descriptionStep2,
    required this.imageStep2,
    required this.step3,
    required this.descriptionStep3,
    required this.imageStep3,
    required this.step4,
    required this.descriptionStep4,
    required this.imageStep4,
    required this.step5,
    required this.descriptionStep5,
    required this.imageStep5,
    required this.randoName,
    required this.randoDescription,
    required this.calories,
    required this.fat,
    required this.carbs,
    required this.protein,
  });
  final String recipe;
  final String imagGlav;
  final String title;
  final String description;
  final String time1;
  final String timeDes1;
  final String time2;
  final String timeDes2;
  final String time3;
  final String timeDes3;
  final String? time4;
  final String? timeDes4;
  final String? time5;
  final String? timeDes5;
  final String? imageIngredient;
  final String ingr1;
  final String ingr2;
  final String ingr3;
  final String ingr4;
  final String ingr5;
  final String? ingr6;
  final String? ingr7;
  final String? ingr8;
  final String? ingr9;
  final String? ingr10;
  final String? ingr11;
  final String? ingr12;
  final String? ingr13;
  final String? ingr14;
  final String? ingr15;
  final String? ingr16;
  final String? ingr17;
  final String? ingr18;
  final String step1;
  final String descriptionStep1;
  final String? imageStep1;
  final String? step2;
  final String? descriptionStep2;
  final String? imageStep2;
  final String? step3;
  final String? descriptionStep3;
  final String? imageStep3;
  final String? step4;
  final String? descriptionStep4;
  final String? imageStep4;
  final String? step5;
  final String? descriptionStep5;
  final String? imageStep5;
  final String? randoName;
  final String? randoDescription;
  final String? calories;
  final String? fat;
  final String? carbs;
  final String? protein;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          recipe,
          style: TextStyle(
            fontSize: 24.h,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
        leading: FFMotion(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios_rounded,
            size: 22.2.h,
            color: FFColors.grey555555,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 30.h),
        child: Column(
          children: [
            SizedBox(height: 5.h),
            Image.asset(
              imagGlav,
              width: MediaQuery.of(context).size.width,
              height: 250.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18.h,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      height: 1.1,
                    ),
                  ),
                  SizedBox(height: 9.h),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 14.h,
                      fontWeight: FontWeight.w500,
                      color: FFColors.grey555555,
                      height: 1.1,
                    ),
                  ),
                  FoodDetailItemWidget(
                    time: time1,
                    min: timeDes1,
                  ),
                  FoodDetailItemWidget(
                    time: time2,
                    min: timeDes2,
                  ),
                  FoodDetailItemWidget(
                    time: time3,
                    min: timeDes3,
                  ),
                  time4 == null
                      ? const SizedBox()
                      : FoodDetailItemWidget(
                          time: time4!,
                          min: timeDes4!,
                        ),
                  time5 == null
                      ? const SizedBox()
                      : FoodDetailItemWidget(
                          time: time5!,
                          min: timeDes5!,
                        ),
                ],
              ),
            ),
            Divider(color: FFColors.black222222, height: 2.h, thickness: 1),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 15.h),
                  imageIngredient == null
                      ? const SizedBox()
                      : Image.asset(
                          imageIngredient!,
                          width: MediaQuery.of(context).size.width,
                          height: 250.h,
                        ),
                  SizedBox(height: 16.h),
                  Text(
                    'Ingredients',
                    style: TextStyle(
                      fontSize: 18.h,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      height: 1.1,
                    ),
                  ),
                  SizedBox(height: 9.h),
                  IngredientWidget(textIngr: ingr1),
                  IngredientWidget(textIngr: ingr2),
                  IngredientWidget(textIngr: ingr3),
                  IngredientWidget(textIngr: ingr4),
                  IngredientWidget(textIngr: ingr5),
                  ingr6 == null
                      ? const SizedBox()
                      : IngredientWidget(textIngr: ingr6!),
                  ingr7 == null
                      ? const SizedBox()
                      : IngredientWidget(textIngr: ingr7!),
                  ingr8 == null
                      ? const SizedBox()
                      : IngredientWidget(textIngr: ingr8!),
                  ingr9 == null
                      ? const SizedBox()
                      : IngredientWidget(textIngr: ingr9!),
                  ingr10 == null
                      ? const SizedBox()
                      : IngredientWidget(textIngr: ingr10!),
                  ingr11 == null
                      ? const SizedBox()
                      : IngredientWidget(textIngr: ingr11!),
                  ingr12 == null
                      ? const SizedBox()
                      : IngredientWidget(textIngr: ingr12!),
                  ingr13 == null
                      ? const SizedBox()
                      : IngredientWidget(textIngr: ingr13!),
                  ingr14 == null
                      ? const SizedBox()
                      : IngredientWidget(textIngr: ingr14!),
                  ingr15 == null
                      ? const SizedBox()
                      : IngredientWidget(textIngr: ingr15!),
                  ingr16 == null
                      ? const SizedBox()
                      : IngredientWidget(textIngr: ingr16!),
                  ingr17 == null
                      ? const SizedBox()
                      : IngredientWidget(textIngr: ingr17!),
                  ingr18 == null
                      ? const SizedBox()
                      : IngredientWidget(textIngr: ingr18!),
                  SizedBox(height: 16.h),
                  StepWidgwt(
                    step: step1,
                    des: descriptionStep1,
                    imag: imageStep1,
                  ),
                  step2 == null
                      ? const SizedBox()
                      : StepWidgwt(
                          step: step2!,
                          des: descriptionStep2!,
                          imag: imageStep2,
                        ),
                  SizedBox(height: 16.h),
                  step3 == null
                      ? const SizedBox()
                      : StepWidgwt(
                          step: step3!,
                          des: descriptionStep3!,
                          imag: imageStep3,
                        ),
                  step4 == null
                      ? const SizedBox()
                      : StepWidgwt(
                          step: step4!,
                          des: descriptionStep4!,
                          imag: imageStep4,
                        ),
                  step5 == null
                      ? const SizedBox()
                      : StepWidgwt(
                          step: step5!,
                          des: descriptionStep5!,
                          imag: imageStep5,
                        ),
                  Divider(
                    color: FFColors.black222222,
                    height: 2.h,
                    thickness: 1.5,
                  ),
                  SizedBox(height: 16.h),
                  randoName == null
                      ? const SizedBox()
                      : Text(
                          randoName!,
                          style: TextStyle(
                            fontSize: 18.h,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            height: 1.1,
                          ),
                        ),
                  randoName == null ? const SizedBox() : SizedBox(height: 6.h),
                  randoDescription == null
                      ? const SizedBox()
                      : Text(
                          randoDescription!,
                          style: TextStyle(
                            fontSize: 14.h,
                            fontWeight: FontWeight.w500,
                            color: FFColors.grey555555,
                            height: 1.1,
                          ),
                        ),
                  randoName == null ? const SizedBox() : SizedBox(height: 16.h),
                  calories == null
                      ? const SizedBox()
                      : randoName == null
                          ? const SizedBox()
                          : Divider(
                              color: FFColors.black222222,
                              height: 2.h,
                              thickness: 1.5,
                            ),
                  calories == null
                      ? const SizedBox()
                      : randoName == null
                          ? const SizedBox()
                          : SizedBox(height: 16.h),
                  calories == null
                      ? const SizedBox()
                      : Text(
                          'Nutrition Facts (per serving)',
                          style: TextStyle(
                            fontSize: 18.h,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            height: 1.1,
                          ),
                        ),
                  calories == null
                      ? const SizedBox()
                      : FoodDetailItemWidget(
                          time: 'calories'.toUpperCase(),
                          min: calories!,
                        ),
                  fat == null
                      ? const SizedBox()
                      : FoodDetailItemWidget(
                          time: 'Fat'.toUpperCase(),
                          min: fat!,
                        ),
                  carbs == null
                      ? const SizedBox()
                      : FoodDetailItemWidget(
                          time: 'Carbs'.toUpperCase(),
                          min: carbs!,
                        ),
                  protein == null
                      ? const SizedBox()
                      : FoodDetailItemWidget(
                          time: 'Protein'.toUpperCase(),
                          min: protein!,
                        ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
