import 'package:familyforge_fitness_130/food/dishes/dishes_detail/dishes_detail.dart';
import 'package:familyforge_fitness_130/food/dishes/widget/food_item_widget.dart';
import 'package:familyforge_fitness_130/food/model/food_model.dart';
import 'package:familyforge_fitness_130/settings/familyforge_fitness_prenv.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Dishes extends StatelessWidget {
  const Dishes({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 16.h),
        child: Column(
          children: [
            FutureBuilder(
                future: getFamilyforgeFitnessPknqwvm(),
                builder: (context, snapshot) {
                  bool chek = snapshot.data ?? false;
                  return Expanded(
                    child: ListView.separated(
                      itemBuilder: (context, index) {
                        final dishModel = foodModelList[index];
                        return FoodItemWidget(
                           chekPtem: index > 3 && !chek,
                          imag: dishModel.imagGlav,
                          recipe: dishModel.recipe,
                          title: dishModel.title,
                          description: dishModel.description,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DishesDetail(
                                  recipe: dishModel.recipeApp,
                                  imagGlav: dishModel.imagGlav,
                                  title: dishModel.title,
                                  description: dishModel.description,
                                  time1: dishModel.time1,
                                  timeDes1: dishModel.timeDes1,
                                  time2: dishModel.time2,
                                  timeDes2: dishModel.timeDes2,
                                  time3: dishModel.time3,
                                  timeDes3: dishModel.timeDes3,
                                  time4: dishModel.time4,
                                  timeDes4: dishModel.timeDes4,
                                  time5: dishModel.time5,
                                  timeDes5: dishModel.timeDes5,
                                  imageIngredient: dishModel.imageIngredient,
                                  ingr1: dishModel.ingr1,
                                  ingr2: dishModel.ingr2,
                                  ingr3: dishModel.ingr3,
                                  ingr4: dishModel.ingr4,
                                  ingr5: dishModel.ingr5,
                                  ingr6: dishModel.ingr6,
                                  ingr7: dishModel.ingr7,
                                  ingr8: dishModel.ingr8,
                                  ingr9: dishModel.ingr9,
                                  ingr10: dishModel.ingr10,
                                  ingr11: dishModel.ingr11,
                                  ingr12: dishModel.ingr12,
                                  ingr13: dishModel.ingr13,
                                  ingr14: dishModel.ingr14,
                                  ingr15: dishModel.ingr15,
                                  ingr16: dishModel.ingr16,
                                  ingr17: dishModel.ingr17,
                                  ingr18: dishModel.ingr18,
                                  step1: dishModel.step1,
                                  descriptionStep1: dishModel.descriptionStep1,
                                  imageStep1: dishModel.imageStep1,
                                  step2: dishModel.step2,
                                  descriptionStep2: dishModel.descriptionStep2,
                                  imageStep2: dishModel.imageStep2,
                                  step3: dishModel.step3,
                                  descriptionStep3: dishModel.descriptionStep3,
                                  imageStep3: dishModel.imageStep3,
                                  step4: dishModel.step4,
                                  descriptionStep4: dishModel.descriptionStep4,
                                  imageStep4: dishModel.imageStep4,
                                  step5: dishModel.step5,
                                  descriptionStep5: dishModel.descriptionStep5,
                                  imageStep5: dishModel.imageStep5,
                                  randoName: dishModel.randoName,
                                  randoDescription: dishModel.randoDescription,
                                  calories: dishModel.calories,
                                  fat: dishModel.fat,
                                  carbs: dishModel.carbs,
                                  protein: dishModel.protein,
                                ),
                              ),
                            );
                          },
                        );
                      },
                      separatorBuilder: (context, index) =>
                          SizedBox(height: 16.h),
                      itemCount: foodModelList.length,
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
