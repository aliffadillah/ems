import 'package:flutter/material.dart';


class KaryawanDashboard extends StatelessWidget {
  const KaryawanDashboard({Key? key}) : super(key: key);

  static const String _title = 'Karyawan Dashboard';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(_title),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal, // Make the content horizontally scrollable
        child: SafeArea(
          child: Container(
            width: MediaQuery.of(context).size.width, // Set the width to the screen width
            padding: const EdgeInsets.all(50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Karyawan Dashboard',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Image.network(
                  'https://res.cloudinary.com/dwm0tvqar/image/upload/v1702996494/pbo-ta/hibfzogkfzkjtgs7eytz.png',
                  width: 300,
                  height: 300,
                ),
                SizedBox(
                  height: 20,
                ), // Add some spacing between the image and buttons
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Add functionality for the first button
                      },
                      child: Text('Admin'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        fixedSize: Size(336, 42), // Set the size here
                        side: BorderSide(color: Colors.black), // Set the border color and width
                      ),
                    ),
                    SizedBox(height: 16), // Add spacing between buttons
                    ElevatedButton(
                      onPressed: () {
                        // Add functionality for the second button
                      },
                      child: Text('Karyawan'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black, // Set the background color to black
                        foregroundColor: Colors.white, // Set the text color to white
                        fixedSize: Size(336, 42), // Set the size here
                        side: BorderSide(color: Colors.black), // Set the border color and width
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}