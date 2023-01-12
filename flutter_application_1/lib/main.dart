import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My First Flutter App"),
      ),
      body: GridView.count(
        crossAxisCount: 1,
        children: [
          Card(
              context: context,
              color: Colors.red,
              blocktext: "NAM",
              imPath: "asset/image/num.jpg",
              text: "ศิรดา ประวัดศรี"),
          Card(
              context: context,
              color: Colors.green,
              blocktext: "POP",
              imPath: "asset/image/pop.jpg",
              text: "อมรเทพ มุงธิสาร"),
          Card(
              context: context,
              color: Colors.blue,
              blocktext: "TAR",
              imPath: "asset/image/tra.jpg",
              text: "สนธยา ช่วยบุญเทียม"),
          Card(
              context: context,
              color: Colors.yellow,
              blocktext: "TIW",
              imPath: "asset/image/tiw.jpg",
              text: "อรุณ ปัญญาจา"),
        ],
      ),
    );
  }

  Widget Card(
      {required BuildContext context,
      required Color color,
      required String blocktext,
      required String imPath,
      required String text}) {
    return Container(
      width: 250,
      color: Colors.black12,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailScreen(
                        name: blocktext,
                        img: imPath,
                        text: text,
                      )));
        },
        child: Column(
          children: [
            Image.asset(
              imPath,
              width: 160,
              fit: BoxFit.cover,
            ),
            Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                //margin: EdgeInsets.all(10),
                color: color,
                child: Text(blocktext)),
          ],
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  DetailScreen({required this.name, required this.img, required this.text});
  String name;
  String img;
  String text;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My First Flutter App"),
        ),
        body: Column(
          children: [Image.asset(img), Text(name), Text(text)],
        ));
  }
}
