import 'package:VSS/Backend.dart';
import 'package:flutter/material.dart';

class MyBatches extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Batch Change '),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text("Select Your Batch", style:TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
             ),
            ),
            SizedBox(height: 20,),
            Text("Current Batch ${UserData.User_data["Batch"]}", style:TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
             ),
            ),
            SizedBox(height: 20,),

            ElevatedButton(
              onPressed: () {
                if(UserData.User_data["Batch"] !="B1")
                {
                  Batches.set_batch("B1");
                  popups.showMessage(context, "Batch Changed to 'B1' Successfully");
                }
                else
                {
                  popups.showMessage(context, "You are already in B1 this Batch");

                }
              },
              child: Text('Batch 1'),
              style: TextButton.styleFrom(minimumSize: Size(250,40)),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                if(UserData.User_data["Batch"] !="B2")
                {
                  Batches.set_batch("B2");
                  popups.showMessage(context, "Batch Changed to 'B2' Successfully");
                }
                else
                {
                  popups.showMessage(context, "You are already in B2 this Batch");

                }
              },
              child: Text('Batch 2'),
              style: TextButton.styleFrom(minimumSize: Size(250,40)),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                if(UserData.User_data["Batch"] !="B3")
                {
                  Batches.set_batch("B3");
                  popups.showMessage(context, "Batch Changed to 'B3' Successfully");
                }
                else
                {
                  popups.showMessage(context, "You are already in B3 this Batch");

                }
              },
              child: Text('Batch 3'),
              style: TextButton.styleFrom(minimumSize: Size(250,40)),
            ),
          ],
        ),
      ),
    );
  }
}