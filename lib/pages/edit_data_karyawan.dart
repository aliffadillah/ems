import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pbo_ems/pages/absensi_karyawan.dart';
import 'package:pbo_ems/pages/admin_dashboard.dart';
import 'package:pbo_ems/pages/login_page.dart';

class EditDataKaryawan extends StatelessWidget {
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
                  Navigator.pop(context);
                },
              ),
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
        body: PageEditKaryawan(),
      ),
    );
  }
}

class PageEditKaryawan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          // Wrap the Container with Center
          child: Container(
            margin: EdgeInsets.all(10.0),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Edit Data Karyawan',
                textAlign: TextAlign.center,
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
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  color: Colors.grey[200],
                  child: SizedBox(
                    width: 360,
                    height: 500,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0, top: 30.0),
                          child: Text(
                            'Masukan Nama Karyawan',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          width: 350,
                          height: 70,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: 'Edit Nama Karyawan',
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 30.0, top: 2.5),
                          child: Text(
                            'Jenis Kelamin',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                            height:
                                16), // Add some spacing between the image and buttons
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) =>
                                //             AdminDashboard()));
                              },
                              child: Text('Laki-laki'),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  foregroundColor: Colors.black,
                                  fixedSize: Size(125, 42),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    side: BorderSide(color: Colors.black),
                                  ) // Set the border radius here
                                  ),
                            ),

                            SizedBox(height: 16), // Add spacing between buttons
                            ElevatedButton(
                              onPressed: () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) =>
                                //             KaryawanDashboard()));
                              },
                              child: Text('Perempuan'),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors
                                    .black, // Set the background color to black
                                foregroundColor:
                                    Colors.white, // Set the text color to white
                                fixedSize: Size(125, 42),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  side: BorderSide(color: Colors.black),
                                ), // Set the size here
                                // Set the border color and width
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                            height:
                                16), // Add some spacing between the image and buttons
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0, top: 2.5),
                          child: Text(
                            'Jabatan',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                            height:
                                16), // Add some spacing between the image and buttons
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) =>
                                //             AdminDashboard()));
                              },
                              child: Text(
                                'Tetap',
                                style: TextStyle(fontSize: 14),
                              ),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  foregroundColor: Colors.black,
                                  fixedSize: Size(95, 42),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    side: BorderSide(
                                        color: Colors.black, width: 1.0),
                                  ) // Set the border radius here
                                  ),
                            ),
                            // Add spacing between buttons
                            ElevatedButton(
                              onPressed: () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) =>
                                //             KaryawanDashboard()));
                              },
                              child: Text(
                                'Kontrak',
                                style: TextStyle(fontSize: 13),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors
                                    .white, // Set the background color to black
                                foregroundColor:
                                    Colors.black, // Set the text color to white
                                fixedSize: Size(95, 42),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  side: BorderSide(
                                      color: Colors.black, width: 1.0),
                                ), // Set the size here
                                // Set the border color and width
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) =>
                                //             KaryawanDashboard()));
                              },
                              child: Text(
                                'Magang',
                                style: TextStyle(fontSize: 12),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors
                                    .white, // Set the background color to black
                                foregroundColor:
                                    Colors.black, // Set the text color to white
                                fixedSize: Size(95, 42),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  side: BorderSide(color: Colors.black),
                                ), // Set the size here
                                // Set the border color and width
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                            height:
                                20), // Add some spacing between the image and buttons
                        Center(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => AdminDashboard()));
                            },
                            child: Text('Edit Data Karyawan'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors
                                  .black, // Set the background color to black
                              foregroundColor:
                                  Colors.white, // Set the text color to white
                              fixedSize: Size(190, 42),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                                side: BorderSide(color: Colors.black),
                              ), // Set the size here
                              // Set the border color and width
                            ),
                          ),
                        ),
                        // Add more TextFields or other widgets as needed
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
