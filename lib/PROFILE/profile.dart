import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    List<String> dates = List.generate(5, (index) {
      DateTime date = DateTime.now().add(Duration(days: index));
      return DateFormat('d-MMM').format(date); // Format as "2-Feb"
    });

    String dateFormate = DateFormat('dd-MMM').format(DateTime.now());
    return Scaffold(
     
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/backg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.6,
              child: Card(
                elevation: 4.0,
                margin: EdgeInsets.all(20.0),
                child: Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Profile",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
