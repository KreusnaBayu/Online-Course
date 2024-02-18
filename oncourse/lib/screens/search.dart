import 'package:flutter/material.dart';
import 'package:oncourse/utils/emoticons_face.dart';
import 'package:oncourse/utils/exercise_tile.dart';
import '../theme/color.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.appBgColor,
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                //greeting row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hi,Bayu!',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          '20 Des, 2023',
                          style: TextStyle(color: AppColor.labelColor),
                        )
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColor.glassTextColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(
                        Icons.notifications_active_outlined,
                        color: AppColor.shadowColor,
                      ),
                    )
                  ],
                ),

                //Search Bar
                Container(
                    decoration: BoxDecoration(
                        color: AppColor.textBoxColor,
                        borderRadius: BorderRadius.circular(12)),
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: AppColor.labelColor,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Search',
                          style: TextStyle(
                            color: AppColor.labelColor,
                          ),
                        )
                      ],
                    )),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'How do you feel?',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.more_horiz,
                      color: AppColor.mainColor,
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // bad
                    Column(
                      children: [
                        EmoticonFace(emoticonFace: '😡'),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Bad',
                          style: TextStyle(color: AppColor.shadowColor),
                        ),
                      ],
                    ),

                    //fine
                    Column(
                      children: [
                        EmoticonFace(emoticonFace: '😐'),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Fine',
                          style: TextStyle(color: AppColor.shadowColor),
                        ),
                      ],
                    ),

                    //well
                    Column(
                      children: [
                        EmoticonFace(emoticonFace: '😃'),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Well',
                          style: TextStyle(color: AppColor.shadowColor),
                        ),
                      ],
                    ),

                    //excellent
                    Column(
                      children: [
                        EmoticonFace(emoticonFace: '🥳'),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Excellent',
                          style: TextStyle(color: AppColor.shadowColor),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Expanded(
              child: Container(
            padding: EdgeInsets.all(25),
            color: AppColor.textBoxColor,
            child: Center(
                child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Courses',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Icon(Icons.more_horiz)
                  ],
                ),

                //Listview
                Expanded(
                  child: ListView(
                    children: [
                      ExerciseTile(
                        icon: Icons.code,
                        exerciseName: 'Programming',
                        numberOfExercise: '12',
                        color: Colors.red,
                      ),
                      ExerciseTile(
                      icon: Icons.design_services,
                        exerciseName: 'UI/UX Design',
                        numberOfExercise: '6',
                        color: Colors.greenAccent,
                      ),
                      ExerciseTile(
                        icon: Icons.camera,
                        exerciseName: 'Photography',
                        numberOfExercise: '3',
                        color: Colors.lightBlueAccent,
                      ),
                    ],
                  ),
                )

                
              ],
            )),
          ))
        ],
      )),
    );
  }
}
