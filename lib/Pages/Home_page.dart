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
          icon: Icon(Icons.home),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
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
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
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
            height: 25,
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
            height: 25,
          ),
          Expanded(
            child: Container(
              color: Colors.grey[100],
              child: Center(
                child: Column(
                  children: [
                    Text('Exercises'),
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
