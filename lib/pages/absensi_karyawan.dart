import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pbo_ems/pages/admin_dashboard.dart';
import 'package:pbo_ems/pages/login_page.dart';
import 'package:pbo_ems/models/karyawan.dart';

class AbsensiKaryawan extends StatelessWidget {
  const AbsensiKaryawan({Key? key}) : super(key: key);

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
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => AdminDashboard()),
                  );
                },
                child: SvgPicture.asset('assets/icons/home.svg'),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/vector.svg'),
              label: 'Document',
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  child: SvgPicture.asset('assets/icons/login.svg')),
              label: 'Logout',
            ),
          ],
        ),
        body: EmployeeList(),
      ),
    );
  }
}

class EmployeeList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Align(
          alignment: AlignmentDirectional.topStart,
          child: Container(
            margin: EdgeInsets.all(10.0),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Daftar Kehadiran ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.84,
                ),
              ),
            ),
          ),
        ),
        Karyawan.daftarKaryawan.any((karyawan) => karyawan.absensi.isNotEmpty)
            ? Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          ...Karyawan.daftarKaryawan.map((karyawan) {
                            List<Widget> daftar = [];
                            for (var absen in karyawan.absensi) {
                              daftar.addAll([
                                absenContainer(karyawan.nama, absen),
                                SizedBox(height: 20.0),
                              ]);
                            }
                            return Column(
                              children: daftar,
                            );
                          }).toList()
                        ],
                      ),
                    ],
                  ),
                ],
              )
            : Image.network(
                'https://firebasestorage.googleapis.com/v0/b/flutter-pbo.appspot.com/o/2.png?alt=media&token=f21998b1-0bfd-4a37-9862-fd99d1098334',
                height: 500,
                width: 500,
              ),
      ],
    );
  }

  Widget absenContainer(String nama, String absen) {
    return Container(
      width: 328,
      height: 113,
      decoration: ShapeDecoration(
        color: Color(0xf000000),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 20.0)),
          Container(
            width: 284,
            height: 30,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(11),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  nama,
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.26),
                ),
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Container(
            width: 284,
            height: 30,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(11),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  absen,
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.26),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
