import 'package:flutter/material.dart';
import 'package:pbo_ems/pages/login_page.dart';
import 'package:pbo_ems/pages/admin_dashboard.dart';
import 'package:flutter/src/material/bottom_navigation_bar.dart';
import 'package:pbo_ems/pages/tambah_karyawan.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      home: const LoginPage(),
    );
  }
}
