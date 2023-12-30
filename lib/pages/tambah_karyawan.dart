import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pbo_ems/models/karyawan.dart';
import 'package:pbo_ems/pages/absensi_karyawan.dart';
import 'package:pbo_ems/pages/admin_dashboard.dart';
import 'package:pbo_ems/pages/login_page.dart';

class TambahKaryawan extends StatelessWidget {
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
        body: MenambahkanKaryawan(),
      ),
    );
  }
}

class MenambahkanKaryawan extends StatefulWidget {
  const MenambahkanKaryawan({super.key});

  @override
  State<MenambahkanKaryawan> createState() => _MenambahkanKaryawanState();
}

class _MenambahkanKaryawanState extends State<MenambahkanKaryawan> {
  TextEditingController namaController = TextEditingController();
  TextEditingController jamController = TextEditingController();
  String? jenisKelaminValue;
  String? jabatanValue;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.all(10.0),
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Tambahkan Karyawan Baru',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
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
                            padding:
                                const EdgeInsets.only(left: 30.0, top: 30.0),
                            child: Text(
                              'Menambahkan Karyawan Baru',
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
                                controller: namaController,
                                decoration: InputDecoration(
                                  labelText: 'Masukkan Nama Karyawan',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30.0),
                            child: Text(
                              'Total Jam Kerja',
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
                                controller: jamController,
                                decoration: InputDecoration(
                                  labelText: 'Masukkan Jam Kerja',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 30.0, top: 2.5),
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
                          SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    jenisKelaminValue = 'Laki-laki';
                                  });
                                },
                                child: const Text('Laki-laki'),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      jenisKelaminValue == 'Laki-laki'
                                          ? Colors.black
                                          : Colors.white,
                                  foregroundColor:
                                      jenisKelaminValue == 'Laki-laki'
                                          ? Colors.white
                                          : Colors.black,
                                  fixedSize: Size(125, 42),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    side: BorderSide(color: Colors.black),
                                  ),
                                ),
                              ),
                              SizedBox(height: 16),
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    jenisKelaminValue = 'Perempuan';
                                  });
                                },
                                child: const Text('Perempuan'),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      jenisKelaminValue == 'Perempuan'
                                          ? Colors.black
                                          : Colors.white,
                                  foregroundColor:
                                      jenisKelaminValue == 'Perempuan'
                                          ? Colors.white
                                          : Colors.black,
                                  fixedSize: Size(125, 42),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    side: BorderSide(color: Colors.black),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 16),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 30.0, top: 2.5),
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
                          SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    jabatanValue = 'Tetap';
                                  });
                                },
                                child: Text(
                                  'Tetap',
                                  style: TextStyle(fontSize: 14),
                                ),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: jabatanValue == 'Tetap'
                                        ? Colors.black
                                        : Colors.white,
                                    foregroundColor: jabatanValue == 'Tetap'
                                        ? Colors.white
                                        : Colors.black,
                                    fixedSize: Size(95, 42),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      side: BorderSide(
                                          color: Colors.black, width: 1.0),
                                    )),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    jabatanValue = 'Kontrak';
                                  });
                                },
                                child: Text(
                                  'Kontrak',
                                  style: TextStyle(fontSize: 13),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: jabatanValue == 'Kontrak'
                                      ? Colors.black
                                      : Colors.white,
                                  foregroundColor: jabatanValue == 'Kontrak'
                                      ? Colors.white
                                      : Colors.black,
                                  fixedSize: Size(95, 42),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    side: BorderSide(
                                        color: Colors.black, width: 1.0),
                                  ),
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    jabatanValue = 'Magang';
                                  });
                                },
                                child: Text(
                                  'Magang',
                                  style: TextStyle(fontSize: 12),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: jabatanValue == 'Magang'
                                      ? Colors.black
                                      : Colors.white,
                                  foregroundColor: jabatanValue == 'Magang'
                                      ? Colors.white
                                      : Colors.black,
                                  fixedSize: Size(95, 42),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    side: BorderSide(color: Colors.black),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Center(
                            child: ElevatedButton(
                              onPressed: () {
                                late Karyawan karyawan;
                                switch (jabatanValue) {
                                  case 'Tetap':
                                    karyawan = KaryawanTetap(
                                      Karyawan.id,
                                      namaController.text,
                                      jenisKelaminValue!,
                                    );
                                    break;
                                  case 'Kontrak':
                                    karyawan = KaryawanKontrak(
                                      Karyawan.id,
                                      namaController.text,
                                      jenisKelaminValue!,
                                    );
                                    break;
                                  case 'Magang':
                                    karyawan = KaryawanMagang(
                                      Karyawan.id,
                                      namaController.text,
                                      jenisKelaminValue!,
                                    );
                                    break;
                                  default:
                                }
                                Karyawan.daftarKaryawan.add(karyawan);
                                Karyawan.id++;
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            AdminDashboard()));
                              },
                              child: Text('Tambahkan Data'),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                foregroundColor: Colors.white,
                                fixedSize: Size(190, 42),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  side: BorderSide(color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
