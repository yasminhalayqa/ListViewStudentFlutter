import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Main(),
    );
  }
}

class Main extends StatelessWidget {
  const Main({Key? key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> cardData = [
      {
        'name': 'yasmin',
        'id': '201023',
        'rating': '100',
        'image':
            'https://w7.pngwing.com/pngs/4/736/png-transparent-female-avatar-girl-face-woman-user-flat-classy-users-icon.png'
      },
      {
        'name': 'john',
        'id': '102034',
        'rating' : '90',
        'image':
            'https://i.pinimg.com/736x/2a/4e/8d/2a4e8dab6791ed643d5180bc72167f6d.jpg'
      },
      {
        'name': 'jana',
        'id': '2010523',
        'rating' : '80',
        'image':
            'https://w7.pngwing.com/pngs/4/736/png-transparent-female-avatar-girl-face-woman-user-flat-classy-users-icon.png'
      },
      {
        'name': 'ahmad',
        'id': '102034',
        'rating' : '90',
        'image':
            'https://i.pinimg.com/736x/2a/4e/8d/2a4e8dab6791ed643d5180bc72167f6d.jpg'
      },
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('My Information'),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        toolbarHeight: 80.1,
      ),
      body: ListView.builder(
        itemCount: cardData.length,
        itemBuilder: (context, index) {
          final data = cardData[index];

          return Cards(
            name: data['name'] ?? '',
            id: data['id'] ?? '',
            image: data['image'] ?? '',
            rating: data['rating'] ?? '',
          );
        },
      ),
    );
  }
}

class Cards extends StatelessWidget {
  final String name;
  final String id;
  final String image;
  final String rating;

  const Cards(
      {required this.name,
      required this.id,
      required this.image,
      required this.rating,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        height: 100,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Text(
                      'Name : ',
                      style: TextStyle(color: Colors.pink, fontSize: 20),
                    ),
                    Text(name, style: TextStyle(fontSize: 20)),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'ID : ',
                      style: TextStyle(color: Colors.pink, fontSize: 20),
                    ),
                    Text(id, style: TextStyle(fontSize: 20)),
                  ],
                ),
                if (rating == '100')
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.amberAccent,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amberAccent,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amberAccent,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amberAccent,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amberAccent,
                      )
                    ],
                  ),
                   if (rating == '90')
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.amberAccent,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amberAccent,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amberAccent,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amberAccent,
                      )
                    ],
                  ),
                   if (rating == '80')
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.amberAccent,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amberAccent,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amberAccent,
                      )
                    ],
                  )
              ],
            ),
            Image.network(image),
          ],
        ),
      ),
    );
  }
}
