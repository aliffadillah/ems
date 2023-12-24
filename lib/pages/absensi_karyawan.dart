import 'package:flutter/material.dart';
import 'package:pbo_ems/pages/admin_dashboard.dart';

class AbsensiKaryawan extends StatelessWidget {
  const AbsensiKaryawan({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[400],
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_outlined),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AdminDashboard()),
              );
            },
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
