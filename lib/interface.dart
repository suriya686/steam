import 'package:flutter/material.dart';
import 'package:steam/post.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isFavourite = true;
  final _controller1 = TextEditingController();
  final List<post> valenList = [
    post(
      name: 'ojo',
      pos: 'terraria  ',
      com: 'yes,It is so fun',
      pro: 'assets/images/terraria-icon.png',
      img: 'assets/images/terraria.jpg',
      com2: 'Good game',
      name2: 'bunbun',
    ),
    post(
      name: 'bunbun',
      pos: 'wow this game so hard.',
      com: 'this is dark game',
      pro: 'assets/images/yugi-icon.png',
      img: 'assets/images/master-duel.jpg',
      com2: "i thing so.",
      name2: 'kajong',
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(
          'Steam',
        ),),
        body: ListView.builder(
            itemCount: valenList.length,
            itemBuilder: (context, index) => buildCard(valenList[index])));
  }

  Card buildCard(post thread) {
    return Card(
      elevation: 5.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: CircleAvatar(
                      backgroundImage:
                      AssetImage(thread.pro),
                      radius: 20,
                    ),
                  ),
                  Text(thread.name),
                  Expanded(
                    child: Container(),
                  ),
                  IconButton(
                    icon: Icon(Icons.more_vert),
                    onPressed: () {},
                  ),
                ],
              ),
              Image.asset(thread.img),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(thread.pos),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  children: [
                    Text(
                      '${thread.name2} ',
                      style: TextStyle(color: Colors.cyanAccent),
                    ),
                    Text(thread.com2),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  children: [
                    Text(
                      '${thread.name} ',
                      style: TextStyle(color: Colors.yellow),
                    ),
                    Text(thread.com),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: IconButton(
                      icon: Icon(Icons.favorite,
                          color: isFavourite
                              ? Colors.black26
                              : Colors.blue),
                      onPressed: () {
                        setState(() {
                          isFavourite = !isFavourite;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: TextField(
                        controller: _controller1,
                        decoration: InputDecoration(
                          hintText: 'Add a comment',
                        ),
                        onChanged: (String value) async {
                          setState(() {});
                        }),
                  ),
                ],
              ),
            ]),
      ),
    );
  }
}