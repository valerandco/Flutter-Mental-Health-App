import 'package:dribbbleapp/util/exercise_tile.dart';
import 'package:flutter/material.dart';

import '../util/emoticon_face.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}
  
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.message),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: '',
        ),
      ],),

      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi, Jared',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        '23 Oct, 2022',
                        style: TextStyle(color: Colors.blue[200]),

                      ),
                    ],
                  ),
                ),

                Container(
                  decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(12),
                  ) ,
                  padding: EdgeInsets.all(12),
                  child: Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                )



            ],
            ),

          SizedBox(
            height: 25,
          ),

          Container(
            decoration: BoxDecoration(
              color: Colors.blue[600],
              borderRadius: BorderRadius.circular(12),
            ),
            padding: EdgeInsets.all(12),
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Search',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
            ],),
          ),

          SizedBox(
            height: 30,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'How do you feel?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Icon(
                Icons.more_horiz,
                color: Colors.white,
              ),
            ],
          ),

          SizedBox(
            height: 25,
          ),

          // 4 faces

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  EmoticonFace(
                    emticonFace: '😩',
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Bad',
                    style: TextStyle(color: Colors.white),

                  ),
                ],
              ),

              //fine

              Column(
                children: [
                  EmoticonFace(
                    emticonFace: '🙂',
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Fine',
                    style: TextStyle(color: Colors.white),

                  ),
                ],
              ),

              // well

              Column(
                children: [
                  EmoticonFace(
                    emticonFace: '😄',
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Well',
                    style: TextStyle(color: Colors.white),

                  ),
                ],
              ),

              //excelent

              Column(
                children: [
                  EmoticonFace(
                    emticonFace: '🥳',
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Excelent',
                    style: TextStyle(color: Colors.white),

                  ),
                ],
              ),



            ],
          ),


          SizedBox(
            height: 30,
          ),

          Expanded(
            child: Container(
              padding: EdgeInsets.all(25),
              color: Colors.grey[200],
              child: Center(
                child: Column(
                  children: [
                    // exercise heading
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Exercise',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),

                        Icon(Icons.more_horiz),
                      ],
                    ),

                    SizedBox(
                      height: 20,
                    ),

                    Expanded(
                      child: ListView(
                        children: [
                          ExerciseTile(
                            icon: Icons.favorite,
                            exerciseName: 'Speaking Skills',
                            numberOfExercises: 15,
                            color: Colors.redAccent,
                          ),
                          ExerciseTile(
                            icon: Icons.person,
                            exerciseName: 'Reading Skills',
                            numberOfExercises: 8,
                            color: Colors.yellow,
                          ),
                          ExerciseTile(
                            icon: Icons.star,
                            exerciseName: 'Writing Skills',
                            numberOfExercises: 19,
                            color: Colors.blue,
                          ),
                          ExerciseTile(
                            icon: Icons.favorite,
                            exerciseName: 'Flutter Skills',
                            numberOfExercises: 21,
                            color: Colors.green,
                          ),
                          ExerciseTile(
                            icon: Icons.music_note,
                            exerciseName: 'Listening Skills',
                            numberOfExercises: 10,
                            color: Colors.orange,
                          ),


                        ],
                      ),
                    ),






                  ],
                ),
              ),
                ),
              ),

          


        ],),
      ) ,
    );
  }
}
