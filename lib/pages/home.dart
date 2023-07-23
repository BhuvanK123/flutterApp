import 'package:flutter/material.dart';
import 'package:time_organizer_app/pages/add_hackathon.dart';
import 'package:time_organizer_app/pages/card_tile.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List cardItems = [];

  final _controller_name = TextEditingController();
  final _controller_1 = TextEditingController();
  final _controller_2 = TextEditingController();
  final _controller_3 = TextEditingController();
  final _controller_4 = TextEditingController();
  final _controller_5 = TextEditingController();

  void saveNewHackathon() {
    setState(() {
      cardItems.add([_controller_name.text, _controller_1.text, _controller_2.text, _controller_3.text, _controller_4.text, _controller_5.text]);
      _controller_name.clear();
      _controller_1.clear();
      _controller_2.clear();
      _controller_3.clear();
      _controller_4.clear();
      _controller_5.clear();
    });
    Navigator.of(context).pop();
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Row(
              children: [
                Icon(Icons.thumb_up_sharp, color: Colors.white),
                SizedBox(width: 20),
                Text('Added & Saved'),
              ],
            )
        )
    );
  }

  void addNewHackathon() {
    showDialog(context: context, builder: (context) {
      return AddHackathon(
        controller_name: _controller_name,
        controller_1: _controller_1,
        controller_2: _controller_2,
        controller_3: _controller_3,
        controller_4: _controller_4,
        controller_5: _controller_5,
        onSubmit: saveNewHackathon,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome Back, Bhuvan!"),
        centerTitle: false,
        backgroundColor: Colors.green[800],
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.add),
        label: Text("Add a new Hackathon"),
        backgroundColor: Colors.green[900],
        onPressed: addNewHackathon,
      ),
      body: ListView.builder(
        itemCount: cardItems.length,
        itemBuilder: (context, index) {
          return CardTile(hackathonTitle: cardItems[index][0], task1: cardItems[index][1], task2: cardItems[index][2], task3: cardItems[index][3], task4: cardItems[index][4], task5: cardItems[index][5]);
        },
      ),
    );
  }
}
