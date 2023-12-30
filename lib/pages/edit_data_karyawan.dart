import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pbo_ems/pages/absensi_karyawan.dart';
import 'package:pbo_ems/pages/admin_dashboard.dart';
import 'package:pbo_ems/pages/daftar_karyawan.dart';
import 'package:pbo_ems/pages/login_page.dart';
import 'package:pbo_ems/models/karyawan.dart';

class EditDataKaryawan extends StatelessWidget {
  final Karyawan karyawan;
  EditDataKaryawan(this.karyawan, {super.key});

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
        body: PageEditKaryawan(karyawan),
      ),
    );
  }
}

class PageEditKaryawan extends StatefulWidget {
  final Karyawan karyawan;
  const PageEditKaryawan(this.karyawan, {super.key});

  @override
  State<PageEditKaryawan> createState() => _PageEditKaryawanState();
}

class _PageEditKaryawanState extends State<PageEditKaryawan> {
  TextEditingController namaController = TextEditingController();
  TextEditingController jamController = TextEditingController();
  String? jenisKelaminUpdate;
  String? jabatanUpdate;

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
                      height: 430,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 30.0, top: 30.0),
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
                                controller: namaController,
                                decoration: InputDecoration(
                                  labelText: 'Edit Nama Karyawan',
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
                                    jenisKelaminUpdate = 'Laki-laki';
                                  });
                                },
                                child: Text('Laki-laki'),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        jenisKelaminUpdate == 'Laki-laki'
                                            ? Colors.black
                                            : Colors.white,
                                    foregroundColor:
                                        jenisKelaminUpdate == 'Laki-laki'
                                            ? Colors.white
                                            : Colors.black,
                                    fixedSize: Size(125, 42),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      side: BorderSide(color: Colors.black),
                                    )),
                              ),
                              SizedBox(height: 16),
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    jenisKelaminUpdate = 'Perempuan';
                                  });
                                },
                                child: Text('Perempuan'),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      jenisKelaminUpdate == 'Perempuan'
                                          ? Colors.black
                                          : Colors.white,
                                  foregroundColor:
                                      jenisKelaminUpdate == 'Perempuan'
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
                                    jabatanUpdate = 'Tetap';
                                  });
                                },
                                child: Text(
                                  'Tetap',
                                  style: TextStyle(fontSize: 14),
                                ),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: jabatanUpdate == 'Tetap'
                                        ? Colors.black
                                        : Colors.white,
                                    foregroundColor: jabatanUpdate == 'Tetap'
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
                                    jabatanUpdate = 'Kontrak';
                                  });
                                },
                                child: Text(
                                  'Kontrak',
                                  style: TextStyle(fontSize: 13),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: jabatanUpdate == 'Kontrak'
                                      ? Colors.black
                                      : Colors.white,
                                  foregroundColor: jabatanUpdate == 'Kontrak'
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
                                    jabatanUpdate = 'Magang';
                                  });
                                },
                                child: Text(
                                  'Magang',
                                  style: TextStyle(fontSize: 12),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: jabatanUpdate == 'Magang'
                                      ? Colors.black
                                      : Colors.white,
                                  foregroundColor: jabatanUpdate == 'Magang'
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
                                if (namaController.text.isEmpty ||
                                    jenisKelaminUpdate == null ||
                                    jabatanUpdate == null) {
                                  // Show a snackbar or any other feedback to inform the user to fill in all data
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text('Silahkan isi data'),
                                    ),
                                  );
                                } else {
                                  // Data is filled, proceed with editing the employee
                                  late Karyawan newKaryawan;
                                  switch (jabatanUpdate) {
                                    case 'Tetap':
                                      newKaryawan = KaryawanTetap(
                                        widget.karyawan.getId,
                                        namaController.text,
                                        jenisKelaminUpdate!,
                                      );
                                      break;
                                    case 'Kontrak':
                                      newKaryawan = KaryawanKontrak(
                                        widget.karyawan.getId,
                                        namaController.text,
                                        jenisKelaminUpdate!,
                                      );
                                      break;
                                    case 'Magang':
                                      newKaryawan = KaryawanMagang(
                                        widget.karyawan.getId,
                                        namaController.text,
                                        jenisKelaminUpdate!,
                                      );
                                      break;
                                    default:
                                  }
                                  int index = Karyawan.daftarKaryawan
                                      .indexWhere((element) =>
                                          element.getId == newKaryawan.getId);
                                  Karyawan.daftarKaryawan[index] = newKaryawan;
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DaftarKaryawan()),
                                  );
                                }
                              },
                              child: Text('Edit Data Karyawan'),
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
