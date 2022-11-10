1. Perbedaan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.
   Stateless widget
   Merupakan sebuah widget yang statis, artinya seluruh konfigurasi dan tampilan telah dibentuk sejak  awal Widget jenis ini tidak dapat dirubah dan dibuat agar tidak pernah berubah. Stateless widget dapat    diinisiasikan pada sebuah class dengan menuliskan class NameClass extends StatelessWidget {}
   
   Statefull widget
   Merupakan sebuah widget yang dinamis, artinya widget dapat berubah / diperbaharui berdasarkan user          actions atau ketika terjadi perubahan data. Stateful widget dapat diinisiasikan pada sebuah class dengan    menuliskan class NameClass extends StatefulWidget {}
   
2. Widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
  - Widget Coloumn
    Mengurutkan dan menata children widget untuk mengisi ruang vertikal
  - WidgetScaffold
    Memberikan tema material yang akan menjadi dasar dari tampilan
  - Widget Stack
    Dapat memungkinkan untuk menempatkan widget satu sama lain
    
3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
   Memberitahu framework bahwa terdapat suatu object yang berbah pada sate yang kemudian dilakukan build     ulang pada widget tersebut, variaberl int, boolean

4. Jelaskan perbedaan antara const dengan final.
   Final
   - variabel final dapat di inialisasi pada saat runtime dan hanya dapat di tuliskan untuk satu waktu
   - Dapat menginisiasi final di class maupun fungsi
   - Ketika state diupdate semuanya yang dibuat akan diinisiasi lagi termasukuk seluru variabel final
   
   Const
   - variabel const di inisialisasi pada saat compile-time dan telah di tetapkan pada saat runtime
   - dapat di inisialisasi di fungsi tapi tidak bisa pada class
   - tidak berubah ketika runtime
   
5. Pertama saya menggunakan default code dari flutter karena programnya mirip dengan tugas kali ini, tapi saya mengganti judul menjadi 'Program counter', kemudian untuk membuat tombol decrement saya membuat function _decrementCounter() di dalamnya saya membuat conditional satetement apabila variabel counter bernilai 0, maaka fungsi ini ketika di click akan tetap membuat variabel _counter tetap bernilai 0, dan conditional yang kedua apa bila counter tidak 0, maka tombol decrement akan mengurangi _count

Saya mengimplementasikan kedua fungsi tersebut didalam floationActionButton dengan widget stack yang berisi tombol increment yang memanggil fungsi incrementCounter, dan tombol decrement yang memanggil decrementCounter. Saya merapikan tombol tersebut dengan menyesuaikan paddingnnya

Saya ingin agar terdapat kata genap juka counter genap dan kata ganjil jika counter bernila ganjil, saya melakukan operasi kondisional kembali pada widget coloum dimana apabila bernilai genap (modulo 2 === 0) maka kata akan berubah menjadi genap dan warnanya merah, jika tidak kata berubah menjadi ganjil dan warana kata menjadi biru, dibawahnya sata menginisasi counter yang sedang berlangsung
   
