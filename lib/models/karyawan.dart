abstract class Karyawan {
  final int _id;
  String nama;
  String jabatan;
  int jamKerja;
  final List<String> absensi = [];
  String jenisKelamin;
  int _gajiPerjam;

  int get gajiPerjam => _gajiPerjam;
  int get getId => _id;

  Karyawan(this._id, this.nama, this.jabatan, this.jamKerja, this.jenisKelamin,
      this._gajiPerjam);

  int hitungGaji() {
    return _gajiPerjam * jamKerja;
  }

  static List<Karyawan> daftarKaryawan = [];
  static int id = 1;
}

class KaryawanTetap extends Karyawan {
  KaryawanTetap(int id, String nama, String jenisKelamin)
      : super(id, nama, 'Karyawan Tetap', 40, jenisKelamin, 300000);
  @override
  int hitungGaji() {
    return _gajiPerjam * 40;
  }
}

class KaryawanKontrak extends Karyawan {
  static const int _jamKerjaPerMinggu = 30;

  KaryawanKontrak(int id, String nama, String jenisKelamin)
      : super(id, nama, 'Karyawan Kontrak', _jamKerjaPerMinggu, jenisKelamin,
            200000);
  @override
  int hitungGaji() {
    return _gajiPerjam * 30;
  }
}

class KaryawanMagang extends Karyawan {
  static const int _jamKerjaPerMinggu = 20;

  KaryawanMagang(int id, String nama, String jenisKelamin)
      : super(id, nama, 'Karyawan Magang', _jamKerjaPerMinggu, jenisKelamin,
            100000);
  @override
  int hitungGaji() {
    return _gajiPerjam * 20;
  }
}
