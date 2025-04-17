void main() {
  // print('Hello, Dart!');
  
  var number = 60;
  number = 30; // bisa diubah nilainya
  // number = 'Hello'; // error, karena var hanya bisa diisi dengan satu tipe data
  // number = 20.5; // error, karena var hanya bisa diisi dengan satu tipe data
  // number = true; // error, karena var hanya bisa diisi dengan satu tipe data
  // number = null; // error, karena var tidak bisa diisi dengan null

  final number2 = 7; // bisa juga number2 = number; (final bisa mengambil nilai dari variabel lain)
  // number2 = 20; // error, karena final tidak bisa diubah setelah diinisialisasi

  const number3 = 2; // const tidak bisa diubah setelah diinisialisasi
  // const number3 = number; // error, karena const tidak bisa mengambil nilai dari variabel lain
  // number3 = 20; // error, karena const tidak bisa diubah setelah diinisialisasi

  final result = number + number2 / number3; // final bisa diisi dengan hasil operasi
  final result2 = number2 + number3 * number; // final bisa diisi dengan hasil operasi
  number += 1;

  print('Number: $number');
  print('Number2: $number2');
  print('Number3: $number3');
  print('Result: $result');
  print('Result2: $result2');

  final age = 18;
  if (age > 40) {
    print('Orang Tua');
  } else if (age >= 18) {
    print('Orang Dewasa');
  } else if (age >= 10) {
    print('Remaja');
  } else {
      print('Anak-anak');
    }

    final day = 1;
  switch (day) {
    case 1:
      print('Senin');
      break;
    case 2:
      print('Selasa');
      break;
    case 3:
      print('Rabu');
      break;
    case 4:
      print('Kamis');
      break;
    case 5:
      print('Jumat');
      break;
    case 6:
      print('Sabtu');
      break;
    case 7:
      print('Minggu');
      break;
    default:
      print('Hari tidak valid');
  }

  for (var i = 0; i < 10; i++) {
    if (i == 2) {
      continue; } // skip the rest of the loop when i is 2
    if (i == 8) {
      break; } // exit the loop when i is 8
    if (i % 2 == 0) { // i modulus 2 == 0
      print('Index: $i'); }
  }

  var i = 20;
  while (i < 10) {
    print('While Index: $i');
    i++;
  }
  var b = 20;
  do {
    print('Do While Index: $b');
    b++;
  } while (b < 10);

  hello ('Thomas');
  hai ('Thomas', 27);

  final sisi = 4;
  final luas = luasPersegi(sisi);
  print('Luas Persegi = $sisi x $sisi = $luas');

  hello2 ('Erwan', 27);
  hello3 (name: 'Erwan', );

}

void hello(String name) {
  print('Hello, my name is $name!');
}

void hai(String name, int age) {
  print('Hai, namaku $name dan umurku $age');
}

int luasPersegi(int sisi) {
    return sisi * sisi; // Function with optional parameters
}

// Positional parameters
void hello2(String name, int age) {
  print('Hello, namaku $name dan umurku $age');
}
// Named parameters
void hello3({required String name, int? age}) {
  print('Hello, namaku $name dan umurku ${age ?? 'rahasia donk ya'}');
}

