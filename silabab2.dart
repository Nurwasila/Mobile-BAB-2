class ProdukDigital {
  String namaProduk;
  double harga;
  String kategori;

  ProdukDigital({
    required this.namaProduk,
    required this.harga,
    required this.kategori,
  });

  void terapkanDiskon() {
    if (kategori == 'NetworkAutomation' && harga > 200000) {
      harga *= 0.85;
      if (harga < 200000) {
        harga = 200000;
      }
    }
  }

  @override
  String toString() {
    return 'Produk: $namaProduk, Harga: $harga, Kategori: $kategori';
  }
}

abstract class Karyawan {
  String nama;
  int umur;

  Karyawan(this.nama, this.umur);

  void bekerja();
}

class KaryawanTetap extends Karyawan {
  KaryawanTetap(String nama, int umur) : super(nama, umur);

  @override
  void bekerja() {
    print(
        '$nama, yang berumur $umur tahun, sedang bekerja sebagai karyawan tetap.');
  }
}

class KaryawanKontrak extends Karyawan {
  KaryawanKontrak(String nama, int umur) : super(nama, umur);

  @override
  void bekerja() {
    print(
        '$nama, yang berumur $umur tahun, sedang bekerja sebagai karyawan kontrak.');
  }
}

void main() {
  ProdukDigital produk1 = ProdukDigital(
    namaProduk: 'Router',
    harga: 250000,
    kategori: 'NetworkAutomation',
  );

  print(produk1);
  produk1.terapkanDiskon();
  print(produk1);

  KaryawanTetap karyawanTetap = KaryawanTetap('sila', 20);
  karyawanTetap.bekerja();

  KaryawanKontrak karyawanKontrak = KaryawanKontrak('nuu', 20);
  karyawanKontrak.bekerja();
}
