import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:multi_role/CRUD/NewData.dart'; // Make sure the import is correct

class AllData extends StatefulWidget {
  @override
  _DataState createState() => _DataState();
}

class _DataState extends State<AllData> {
  @override
  Widget build(BuildContext context) {
    List<String> dates = List.generate(5, (index) {
      DateTime date = DateTime.now().add(Duration(days: index));
      return DateFormat('d-MMM').format(date); // Format as "2-Feb"
    });

    String dateFormate = DateFormat('dd-MMM').format(DateTime.now());
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 60.0),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NewData()),
            );
          },
          backgroundColor: Colors.white,
          child: Icon(Icons.add),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      appBar: AppBar(
        title: Text("All data"),
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
            Container(
              width: double.infinity,
              height: 150,
              child: Card(
                elevation: 4.0,
                margin: EdgeInsets.only(top: 20.0),
                child: Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("$dateFormate"),
                      SizedBox(height: 10.0),
                      Text(
                        "ToDo List",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start, // Align items to the start
                      children: dates.map((date) {
                        return Container(
                          margin: EdgeInsets.symmetric(horizontal: 8.0), // Space between containers
                          padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0), // Padding inside each container
                          decoration: BoxDecoration(
                            color: Colors.blueAccent, // Background color for the container
                            borderRadius: BorderRadius.circular(20.0), // Rounded corners
                            border: Border.all(color: Colors.white), // Border color
                          ),
                          child: Text(
                            date,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 120,
              margin: EdgeInsets.all(20.0),
              child: Card(
                elevation: 4.0,
                margin: EdgeInsets.only(top: 20.0),
                child: Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("$dateFormate"),
                      SizedBox(height: 10.0),
                      Text(
                        "ToDo List",
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
