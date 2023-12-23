import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pbo_ems/pages/absensi_karyawan.dart';
import 'package:pbo_ems/pages/login_page.dart';
import 'package:pbo_ems/pages/tambah_karyawan.dart';
import 'package:pbo_ems/pages/edit_data_karyawan.dart';

void main() {
  runApp(AdminDashboard());
}

class AdminDashboard extends StatelessWidget {
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
              icon: SvgPicture.asset('assets/icons/home.svg'),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => AbsensiKaryawan()),
                  );
                },
                child: SvgPicture.asset('assets/icons/vector.svg'),
              ),
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
        body: YourWidget(),
      ),
    );
  }
}

class YourWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.all(16.0),
          child: Padding(
            padding: EdgeInsets.all(2.0),
            child: Text(
              'Analisis Kehadiran',
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
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Card(
                  child: SizedBox(
                    width: 150,
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Column(
                        children: [
                          Text(
                            'Total Kehadiran',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1.84,
                            ),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Text(
                                  '30',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1.84,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  child: SizedBox(
                    height: 100,
                    width: 150,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Text(
                            'Total Karyawan',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1.84,
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 10.0),
                              child: Text(
                                '10',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1.84,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Card(
                  child: SizedBox(
                    width: 160,
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Column(
                        children: [
                          Text(
                            'Karyawan Magang',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1.84,
                            ),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Text(
                                  '12',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1.84,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  child: SizedBox(
                    height: 100,
                    width: 150,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Column(
                        children: [
                          Text(
                            'Karyawan Kontrak',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1.84,
                            ),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Text(
                                  '21',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1.84,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.all(16.0),
          child: Padding(
            padding: EdgeInsets.all(2.0),
            child: Text(
              'Manajemen Karyawan Hotel',
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
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
              child: Container(
                width: 328, // Set the desired width for the ListTile container
                height: 55, // Set the desired height for the ListTile container
                child: ListTile(
                  leading: Container(
                    padding: EdgeInsets.all(10.0),
                    width:
                        55, // Set the desired width for the leading Container
                    height:
                        55, // Set the desired height for the leading Container
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(
                          8.0), // Set the desired border radius
                    ),
                    child: SvgPicture.asset(
                      'assets/icons/paper-add.svg',
                      width: 1.0, // Set the desired width for the Image
                      height: 1.0, // Set the desired height for the Image
                    ),
                  ),
                  title: Container(
                      child: Text(
                    'Tambahkan Karyawan',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w300,
                    ),
                  )),
                  trailing: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TambahKaryawan()),
                      );
                    },
                    child: Icon(Icons.arrow_forward_ios_outlined),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Card(
              child: Container(
                width: 328, // Set the desired width for the ListTile container
                height: 55, // Set the desired height for the ListTile container
                child: ListTile(
                  leading: Container(
                    padding: EdgeInsets.all(10.0),
                    width:
                        55, // Set the desired width for the leading Container
                    height:
                        55, // Set the desired height for the leading Container
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(
                          8.0), // Set the desired border radius
                    ),
                    child: SvgPicture.asset(
                      'assets/icons/drawer-add.svg',
                      width: 13, // Set the desired width for the Image
                      height: 13, // Set the desired height for the Image
                    ),
                  ),
                  title: Container(
                      child: Text(
                    'Tampilkan Data Karyawan',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12.5,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w300,
                    ),
                  )),
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
          ],
        ),
      ],
    );
  }
}
