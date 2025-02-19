import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:multi_role/CRUD/all.dart';

class NewData extends StatefulWidget {

  @override

  _New  createState() => _New();

}

class _New extends State<NewData> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 60.0),
          child: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AllData()),
              );
            },
            backgroundColor: Colors.white,
            child: Icon(Icons.cancel),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      appBar: AppBar(
        title: Text("New Data", style: TextStyle(fontWeight: FontWeight.bold))
      ),

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/backg.jpg'),
          fit: BoxFit.cover
          )
        ),
        child: SafeArea(
          child: Column(
          children: [
          Container(
          width: double.infinity,
          height: 300,
          margin: EdgeInsets.all(20.0), // O
          child : Card(

              child: Column(
                children: [
                  Text("Title"),
                  SizedBox(height: 20.0),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                      border: Border.all(), borderRadius:BorderRadius.circular(6.0),),
                    child: TextField(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Text("Notes"),
                  SizedBox(height: 20.0,),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                      border: Border.all(), borderRadius:BorderRadius.circular(6.0),),
                    child:    Container(
                      margin: EdgeInsets.symmetric(horizontal: 16.0),
                      child:  TextField(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                    )
                  ),
                  SizedBox(height: 10.0),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => AllData()));
                        print("Added");
                  },
                      child: Text("Add")

                  )
          ],
        ))


          ),
          ]
        ),

        )
      )
    );

  }
}