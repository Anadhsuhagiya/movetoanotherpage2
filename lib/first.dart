import 'package:flutter/material.dart';
import 'package:movetoanotherpage2/second.dart';

class first extends StatefulWidget {
  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  List photo = [
    'photos/dhoni.png',
    'photos/kohi.png',
    'photos/rohit.png',
    'photos/pandya.png',
    'photos/sachin.png'
  ];

  List<String> name = [
    'M.S.Dhoni',
    'Virat Kohli',
    'Rohit Sharma',
    'Hardik Pandya',
    'Sahin Tendulkar',
  ];

  List<String> nickname = [
    'Captain Cool',
    'Chickoo',
    'The Ro-Hitman Sharma',
    'Kunfoo Pandya',
    'The God of Cricket'
  ];

  List<String> Game = [
    'Wickect Keeper',
    'Batsman',
    'Batsman',
    'All Rounder',
    'Batsman'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Page : Data Transfer"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              child: ListView.builder(
                itemCount: name.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: Image.asset(
                        photo[index],
                        height: 50,
                        width: 70,
                        fit: BoxFit.fill,
                      ),
                      title: Text(name[index]),
                      subtitle: Text(nickname[index]),
                      trailing: Text(Game[index]),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return second(name[index],nickname[index],photo[index],Game[index]);
                        },));
                      },
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
