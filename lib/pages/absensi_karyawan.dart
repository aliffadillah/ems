import 'package:flutter/material.dart';
import 'package:pbo_ems/pages/admin_dashboard.dart';

class AbsensiKaryawan extends StatelessWidget {
  const AbsensiKaryawan({Key? key}) : super(key: key);

  static const String _title = 'Absensi Karyawan';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(65.0),
          child: AppBar(
            backgroundColor: Colors.grey[400],
            leading: Container(
              margin: EdgeInsets.all(8.0),
              padding: EdgeInsets.all(0.0),
              width: 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(5.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios_outlined),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AdminDashboard()));
                },
              ),
            ),
          ),
        ),
        body: Center(
          // Add your widget for the body content here
          child: Text('Hello, Absensi Karyawan!'),
        ),
      ),
    );
  }
}
