// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../theme/color.dart';

class ExerciseTile extends StatelessWidget {
  final icon;
  final String exerciseName;
  final String numberOfExercise;
  final color;

  const ExerciseTile({
    Key? key,
    required this.icon,
    required this.exerciseName,
    required this.numberOfExercise, 
    this.color,
  }) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: AppColor.appBgColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      padding: EdgeInsets.all(16),
                      color: color,
                      child: Icon(
                        icon,
                        color: AppColor.appBgColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  // ignore: prefer_const_constructors
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //tittle
                      Text(
                        exerciseName,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      //subti
                      Text(
                        numberOfExercise.toString() + ' Lesson',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColor.labelColor,
                          fontSize: 14,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Icon(Icons.more_horiz),
            ],
          )),
    );
  }
}
