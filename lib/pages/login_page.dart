import 'package:flutter/material.dart';
import 'package:pbo_ems/pages/admin_dashboard.dart';
import 'package:pbo_ems/pages/karyawan_dashboard.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  static const String _title = 'Login Page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal, // Make the content horizontally scrollable
        child: SafeArea(
          child: Container(
            width: MediaQuery.of(context).size.width, // Set the width to the screen width
            padding: const EdgeInsets.fromLTRB(50.0, 5.0, 50.0, 0.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'LOGIN',
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
                Text(
                  'WELCOME',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w600,
                    height: 0,
                    letterSpacing: 2.30,
                  ),
                ),
                SizedBox(
                  height: 20,
                ), // Add some spacing between the image and buttons
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => AdminDashboard()));
                      },
                      child: Text('Admin'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        fixedSize: Size(336, 42),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide(color: Colors.black),
                        ) // Set the border radius here
                      ),
                    ),

                    SizedBox(height: 16), // Add spacing between buttons
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => KaryawanDashboard()));
                      },
                      child: Text('Karyawan'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black, // Set the background color to black
                        foregroundColor: Colors.white, // Set the text color to white
                        fixedSize: Size(336, 42),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide(color: Colors.black),
                        ),// Set the size here
                        // Set the border color and width
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
