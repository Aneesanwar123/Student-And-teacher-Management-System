import 'package:flutter/material.dart';
import 'package:mobile_app/dept.dart';
import 'package:mobile_app/select.dart';

class Person {
  final String name;
  final int stars;
  final String profileImage;
  List<String> feedbackList;

  Person({required this.name, required this.stars, required this.profileImage, this.feedbackList = const []});
}

class it extends StatefulWidget {
  @override
  _PersonListState createState() => _PersonListState();
}

class _PersonListState extends State<it> {
  final List<Person> persons = [
    Person(name: "sir Basit Hasan", stars: 4, profileImage: "https://i.pinimg.com/564x/8b/16/7a/8b167af653c2399dd93b952a48740620.jpg"),
    Person(name: "Sir Ameen Khowaja", stars: 5, profileImage: "https://i.pinimg.com/564x/4e/5e/81/4e5e81d6cccf8211c2d689329ec88a79.jpg"),
    Person(name: "Sir Unain ansari", stars: 4, profileImage: "https://i.pinimg.com/564x/96/5b/f0/965bf0ffaa83d1a76d7bcaf9c30c9436.jpg"),
    Person(name: "maam Syeda sidra afsar", stars: 5, profileImage: "https://i.pinimg.com/564x/c1/6c/2a/c16c2a631e49da021d2f7590feb85526.jpg"),
    Person(name: "sir saeed", stars: 5, profileImage: "https://i.pinimg.com/564x/ad/4d/39/ad4d39691e21a7d805eaca3b90ab8554.jpg"),
  ];
  void _addFeedback(Person person, String feedback) {
    setState(() {
      person.feedbackList = List.from(person.feedbackList)..add(feedback);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(80),
            child:  AppBar(
              title: Text("Teachers profile",style: TextStyle(color: Colors.black,fontSize: 25),),
              elevation: 0,
              backgroundColor: Colors.white,
              centerTitle: true,
              leading: Padding(
                padding: const EdgeInsets.only(right: 25),
                child: IconButton(
                  icon: Icon(Icons.arrow_back_ios_new),
                  color: Colors.black,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Dept()));
                  },
                ),
              ),
              actions: [

                Padding(
                  padding: const EdgeInsets.only(
                      top: 8,
                      right: 10
                  ),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("images/illustrator.jpg"),
                  ),
                )
              ],
            )
        ),
        body: ListView.builder(
          itemCount: persons.length,
          itemBuilder: (context, index) {
            return PersonCard(person: persons[index], onAddFeedback: _addFeedback);
          },
        ),
      ),
    );
  }
}

class PersonCard extends StatelessWidget {
  final Person person;
  final Function(Person, String) onAddFeedback;

  PersonCard({required this.person, required this.onAddFeedback});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Color(0xfff5f7fa), Color(0xffc3cfe2)]),
          borderRadius: BorderRadius.circular(35),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(1),
              spreadRadius: 3,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(person.profileImage),
              ),
              SizedBox(height: 8),
              Text(
                "Name: ${person.name}",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Text(
                    "Stars: ${person.stars}",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(width: 8),
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 20,
                  ),
                ],
              ),
              SizedBox(height: 8),
              Text(
                "Feedback:",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: person.feedbackList.map((feedback) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text("- $feedback", style: TextStyle(fontSize: 16)),
                  );
                }).toList(),
              ),
              SizedBox(height: 8),
              FeedbackInput(onSubmit: (feedback) {
                onAddFeedback(person, feedback);
              }),
            ],
          ),
        ),
      ),
    );
  }
}

class FeedbackInput extends StatefulWidget {
  final Function(String) onSubmit;

  FeedbackInput({required this.onSubmit});

  @override
  _FeedbackInputState createState() => _FeedbackInputState();
}

class _FeedbackInputState extends State<FeedbackInput> {
  final TextEditingController _feedbackController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: _feedbackController,
            decoration: InputDecoration(hintText: "Add feedback"),
          ),
        ),
        IconButton(
          icon: Icon(Icons.add),
          onPressed: () {
            String feedback = _feedbackController.text.trim();
            if (feedback.isNotEmpty) {
              widget.onSubmit(feedback);
              _feedbackController.clear();
            }
          },
        ),
      ],
    );
  }
  @override
  void dispose() {
    _feedbackController.dispose();
    super.dispose();
  }
}