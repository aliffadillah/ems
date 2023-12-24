import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pbo_ems/pages/admin_dashboard.dart';
import 'package:pbo_ems/pages/edit_data_karyawan.dart';

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

class EmployeeList extends StatelessWidget {
  final BuildContext context;
  EmployeeList(this.context);
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
          buildEmployeeCard(),
          SizedBox(height: 16),
          // Add more widgets for your employee list here
        ],
      ),
    );
  }

  Widget buildEmployeeCard() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              color: Colors.grey[200],
              child: SizedBox(
                width: 330,
                height: 230,
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
                              ': Muhammad Alif',
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
                              ': 065122109',
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
                              ': Yang Mulia',
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
                              ': Laki-Laki',
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
                              ': 1 Jam',
                              style: _employeeDetailStyle,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              'Hari Kerja',
                              style: _employeeDetailStyle,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              ': 1 Hari',
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
                              ': Rp. 999.999.999.999',
                              style: _employeeDetailStyle,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      buildElevatedButtons(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget buildElevatedButtons() {
    return Row(
      children: [
        Expanded(
          child: Container(
            width: 200, // Set the fixed width
            child: ElevatedButton(
              onPressed: () {},
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
            width: 200, // Set the fixed width
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EditDataKaryawan()),
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
