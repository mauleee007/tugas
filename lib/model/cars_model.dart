import 'package:flutter/material.dart';

class CarsModel {
  final String name, images, description, price;

  CarsModel({
    required this.name,
    required this.images,
    required this.description,
    required this.price,
  });
}

class Company {
  final String image, name;

  Company({required this.image, required this.name});
}

List<Company> company = [
  Company(image: "assets/images/bmwlogo.jpg", name: "BMW"),
  Company(image: "assets/images/toyotalogo.jpg", name: "Toyota"),
  Company(image: "assets/images/mazdalogo.jpg", name: "Mazda"),
  Company(image: "assets/images/hondalogo.jpg", name: "Honda"),
];

List<CarsModel> carsModel = [
  CarsModel(
    name: "Supra Sport Car GTR",
    images: "assets/images/supra.jpg",
    description:
        "Toyota mencoba memberikan opsi mobil sport untuk masyarakat yang memimpikan mobil dengan performa tinggi namun cocok digunakan sehari-hari. Untuk itulah telah hadir Toyota Supra generasi terbaru yang kemunculannya sempat membuat heboh dunia. Auto2000 telah menghadirkan Toyota GR Supra untuk Anda. Penasaran dengan mobil sport ini? Mari berkenalan lebih dalam.",
    price: "Rp.2.147.100.000",
  ),
  CarsModel(
    name: "Subaru Sport Car 2020",
    images: "assets/images/subaru.jpg",
    description:
        "Subaru BRZ adalah mobil sport murni yang menampilkan mesin depan serta tata letak penggerak roda belakang dengan dukungan mesin Subaru Boxer horizontal.Subaru BRZ anyar telah dirancang untuk memberikan lebih banyak kesenangan berkendara, identitas mobil sport sejati, dan lebih banyak ketenangan pikiran sebagai nilai tambahan",
    price: "Rp.450.000.000",
  ),
  CarsModel(
    name: "Mustang FORD Sport Car",
    images: "assets/images/mustang.jpg",
    description:
        "Ford Mustang adalah mobil sport coupe yang diproduksi oleh Ford Motor Company di Amerika Serikat dari tahun 1964 sampai sekarang. Mobil ini pada awalnya diambil dari Ford Falcon generasi kedua.Diperkenalkan tanggal 17 April 1964, pada tahun 1965 Mustang mencatatkan diri sebagai mobil tersukses Ford setelah Model A. Saat ini, Mustang telah mencapai generasi kelimanya.",
    price: "Rp.502.000.000",
  ),
  CarsModel(
    name: "Mazda 8 Sport Car",
    images: "assets/images/mazda.jpg",
    description:
        "Mazda RX-8 adalah mobil sport yang diproduksi Mazda Motor Corporation. Diperkenalkan tahun 2001 di North American International Auto Show. Merupakan penerus dari RX-7 dan seperti pendahulunya, mobil ini menggunakan mesin Wankel.",
    price: "Rp.292.000.000",
  ),
  CarsModel(
    name: "Civic Type R Sport Car",
    images: "assets/images/civic.png",
    description:
        "New Honda Civic Type R adalah salah satu mobil yang laris di dunia, termasuk Indonesia. Para pecinta kecepatan menyukai mobil ini berkat pengendaliannya, dan kini berkat mesin 2.0 turbo yang baru.dengan hadirnya sistem multimedia yang berpusat di head unit berukuran tujuh inci. Layar ini berbasis operasi Android dan mampu menampilkan navigasi yang didukung oleh Garmin.",
    price: "Rp.1.108.000.000",
  ),
  CarsModel(
    name: "BMW i8 Sport Car",
    images: "assets/images/bmw.jpg",
    description:
        "BMW i8 mengusung dapur pacu bertipe mesin 3 silinder 1.5 liter turbocharged yang bisa menghasilkan tenaga sebesar 228 hp dengan torsi 320 Nm. Kedua dengan motor listrik bertenaga 141 hp dan memiliki torsi 250 Nm yang langsung tersalur ke roda depan.",
    price: "Rp.4.200.000.000",
  )
];
