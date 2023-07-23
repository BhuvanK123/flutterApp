import 'package:flutter/material.dart';

class AddHackathon extends StatefulWidget {

  final controller_name, controller_1, controller_2, controller_3, controller_4, controller_5;
  VoidCallback onSubmit;

  AddHackathon({super.key, required this.controller_name, required this.controller_1, required this.controller_2, required this.controller_3, required this.controller_4, required this.controller_5, required this.onSubmit});
  @override
  State<AddHackathon> createState() => _AddHackathonState();
}

class _AddHackathonState extends State<AddHackathon> {

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.grey,
      content: SizedBox(
        height: 400,
        width: double.maxFinite,
        child: ListView(
          children: [
            // name of the hackathon
            Text("Name of the Hackathon", style: TextStyle(fontSize: 20)),

            SizedBox(height: 12,),

            TextField(
              controller: widget.controller_name,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Insert name here",
                prefixIcon: IconButton(
                  icon: Icon(Icons.calendar_month),
                  onPressed: () {
                    showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2027),
                    );
                  },
                ),
                suffixIcon: IconButton(
                  icon: Icon(Icons.clear),
                  onPressed: () {
                    widget.controller_name.clear();
                  },
                )
              ),
            ),

            SizedBox(height: 5),
            Divider(color: Colors.grey[600], thickness: 5, ),
            SizedBox(height: 12),

            Text("Tasks To Accomplish", style: TextStyle(fontSize: 20)),

            SizedBox(height: 12,),

            TextField(
              controller: widget.controller_1,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Task #1",
                  suffixIcon: IconButton(
                    icon: Icon(Icons.clear),
                    onPressed: () {
                      widget.controller_1.clear();
                    },                  )
              ),
            ),

            SizedBox(height: 15),

            TextField(
              controller: widget.controller_2,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Task #2",
                  suffixIcon: IconButton(
                    icon: Icon(Icons.clear),
                    onPressed: () {
                      widget.controller_2.clear();
                    },                   )
              ),
            ),

            SizedBox(height: 15),

            TextField(
              controller: widget.controller_3,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Task #3",
                  suffixIcon: IconButton(
                    icon: Icon(Icons.clear),
                    onPressed: () {
                      widget.controller_3.clear();
                    },
                  )
              ),
            ),

            SizedBox(height: 15),

            TextField(
              controller: widget.controller_4,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Task #4",
                  suffixIcon: IconButton(
                    icon: Icon(Icons.clear),
                    onPressed: () {
                      widget.controller_4.clear();
                    },
                  )
              ),
            ),

            SizedBox(height: 15),

            TextField(
              controller: widget.controller_5,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Task #5",
                  suffixIcon: IconButton(
                    icon: Icon(Icons.clear),
                    onPressed: () {
                      widget.controller_5.clear();
                    },
                  )
              ),
            ),

            SizedBox(height: 5),
            Divider(color: Colors.grey[600], thickness: 5, ),
            SizedBox(height: 5),

            // submit button
            Center(
              child: TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.green[800],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
                child: Text("Add", style: TextStyle(fontSize: 25),),
                onPressed: widget.onSubmit,
              ),
            )
          ],
        ),
      ),
    );
  }
}
