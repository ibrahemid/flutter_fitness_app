import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class NutritionWidget extends StatelessWidget {
  final String amount;
  final String nutritionType;
  final String goal;

  NutritionWidget({Key key, this.amount, this.nutritionType, this.goal})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(amount, style: Theme.of(context).textTheme.display4),
                Text(
                  " " + nutritionType,
                  style: Theme.of(context).textTheme.display1,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4, bottom: 4),
              child: Text(
                goal,
                style: Theme.of(context).textTheme.display1,
              ),
            ),
            SizedBox(
              width: 70,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(55),
                child: StepProgressIndicator(
                  totalSteps: 10,
                  currentStep: 3,
                  padding: 0,
                  size: 2.5,
                  selectedColor: Theme.of(context).primaryColor,
                  unselectedColor: Theme.of(context).accentColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
