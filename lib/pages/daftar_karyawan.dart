import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pbo_ems/pages/admin_dashboard.dart';
import 'package:pbo_ems/pages/edit_data_karyawan.dart';
import 'package:pbo_ems/models/karyawan.dart';

class DaftarKaryawan extends StatelessWidget {
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
                    MaterialPageRoute(builder: (context) => AdminDashboard()),
                  );
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
                    MaterialPageRoute(builder: (context) => AdminDashboard()),
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
                    MaterialPageRoute(builder: (context) => AdminDashboard()),
                  );
                },
                child: SvgPicture.asset('assets/icons/login.svg'),
              ),
              label: 'Logout',
            ),
          ],
        ),
        body: EmployeeList(context),
      ),
    );
  }
}

class EmployeeList extends StatefulWidget {
  final BuildContext context;
  EmployeeList(this.context);

  @override
  State<EmployeeList> createState() => _EmployeeListState();
}

class _EmployeeListState extends State<EmployeeList> {
  final TextStyle _employeeDetailStyle = TextStyle(
    fontWeight: FontWeight.w600,
    fontFamily: 'Poppins',
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.all(10.0),
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Daftar Karyawan Hotel',
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
          // Check if the list is empty, display an image
          Karyawan.daftarKaryawan.isEmpty
              ? Image.network(
                  'https://res.cloudinary.com/dwm0tvqar/image/upload/v1704040791/pbo-ta/71EB65FF-5F13-4EBE-88B6-D40CDE5798C5_xotzvj.jpg',
                  height: 500,
                  width: 500,
                ) // Replace 'path_to_your_image' with the actual path
              : Column(
                  children: Karyawan.daftarKaryawan
                      .map((karyawan) => buildEmployeeCard(karyawan))
                      .toList(),
                ),
          SizedBox(height: 16),
        ],
      ),
    );
  }

  Widget buildEmployeeCard(Karyawan karyawan) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              color: Colors.grey[200],
              child: SizedBox(
                width: 330,
                height: 205,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              'Nama',
                              style: _employeeDetailStyle,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              ': ${karyawan.nama}',
                              style: _employeeDetailStyle,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              'ID',
                              style: _employeeDetailStyle,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              ': ${karyawan.getId}',
                              style: _employeeDetailStyle,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              'Jabatan',
                              style: _employeeDetailStyle,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              ': ${karyawan is KaryawanKontrak ? "Kontrak" : karyawan is KaryawanMagang ? "Magang" : karyawan is KaryawanTetap ? "Tetap" : ""}',
                              style: _employeeDetailStyle,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              'Jenis Kelamin',
                              style: _employeeDetailStyle,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              ': ${karyawan.jenisKelamin}',
                              style: _employeeDetailStyle,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              'Jam Kerja',
                              style: _employeeDetailStyle,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              ': ${karyawan.jamKerja}',
                              style: _employeeDetailStyle,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              'Total Gaji',
                              style: _employeeDetailStyle,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              ': Rp. ${karyawan.gajiPerjam * karyawan.jamKerja}',
                              style: _employeeDetailStyle,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      buildElevatedButtons(karyawan),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 19),
      ],
    );
  }

  Widget buildElevatedButtons(Karyawan karyawan) {
    return Row(
      children: [
        Expanded(
          child: Container(
            width: 200, // Set the fixed width
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  Karyawan.daftarKaryawan
                      .removeWhere((k) => k.getId == karyawan.getId);
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/icons/clipboard-fail.svg',
                    width: 24,
                    height: 24,
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Hapus',
                    style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'Poppins',
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              style: ElevatedButton.styleFrom(),
            ),
          ),
        ),
        SizedBox(width: 5.0),
        Expanded(
          child: Container(
            width: 200,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  widget.context,
                  MaterialPageRoute(
                      builder: (context) => EditDataKaryawan(karyawan)),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/icons/edit.svg',
                    width: 24,
                    height: 24,
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Edit',
                    style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'Poppins',
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
