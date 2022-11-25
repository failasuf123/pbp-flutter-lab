==================  TUGAS 7 ==================
         Tugas 7 ada di commit tugas 7



==================  TUGAS 8 ==================
1. Perbedaan Navigator push dan Navigator.pushReplacement
   Navigator.push akan melakukan perpindahan halaman dan dapat kembali ke halaman sebelumnya, sedangakan        Navigator.pusReplacement tidak dapat kembali ke halaman sebelumnya

2. Widget yang ditambahkan dan fungsinya
   - Drawer
      Membuat Navigasi
   - ListView
      Menampilkan data dari list
   - ListTile
      Menampilkan leading, tittle dan hal lainya dengan mudah pada childer
   - Form
      Membukus form field
   - DropdownButton
      Widget untuk memimilih suatu nilai unik dari sekumpulan nilai
      
 

3. Jenis-jenis event pada flutter
   - onHover
   - onChanged
   - onFocusChanged
   - oSaved
   - onPressed
  

4. Cara kerja navigator
   Cara kerja naviator serupa dengan stack, dimana kita dapat nelakukan push dan pop, push akan mengarahkan    user ke halaman tertentu serta menambahkan suatu halaman di antrian atas, sedangkan pop akan mengembalikan ke halaman serta mengurangi halaman dari stack

5. Cara Implementasi Checklist
- Dari program tugas sebelumnya, saya menambahkan 3 file yaitu form.dart untuk mengisi form, dataBudget.dart menampilkan data, dan models.dart untuk membuat database
- Membuat Navigator, karena program ini terdiri dari tiga halaman, maka saya membuat navigator pada humberger menu dengan mengimplementasikan Drawer serta agar merapikan navigasi menggunakan listTile dan mengarahkan ke laman yang diinginkan. Navigator dibuat di 3 file yaitu main.dart, dataBUdeget.dart dan form.dart
- Pada form.dart sayang mengimplementasikan Widget form yang terdiri dari 3 input data , dua merupakan bentuk textform field dan satu lagi merupakan dropdown, data yang diinput user kemudian di submit untuk diteruskan ke models.py
- Pada models.py saya membuat sebuah class DataBudget yang terdiri dari judul, nominal, dan jenis, dan saya menyimpan data-data tersebut ke dalam list elem
- dataBudget.dart pada laman ini saya menampilkan data dari models.py menggunakan lisview yang akan menampilakan data secara vertikal didalamnya terdapat judul, nominal , dan jenis (pemasukan/pengeluaran)


==================  TUGAS 9 ==================
1. Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
Bisa, akan tetapi disarankan menggunakan model , karena informasi dari data akan lebih jelas dibanding mengambil secara langsung.

2. Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
   Dari widget yang telah digunakan sebelumnya saya menambahkan jenis widget yang belum terdelerasi sebelumnya
    - FutureBuilder 
      Untuk mengkontruksi widget berdasarkan snapshot.
   -  Column 
      Mempresentasikan kolom
   -  BoxDecoration 
      untuk mendekorasi elemen box flutter
   -  FutureBuilder 
      membuat widget berdasarkan snapshot terakhir

3. Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter.
   -  Melakukan dengan fetch pada method yang ada pada file
   -  Membuat file yang berfungsi untuk melakukan parse data hasil respn
   -  Data tersebut selanjutnya ditampilkan 
   
4. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
   - Membuat to_do.dart yang merupakan generator code dari data json
   - Menambahkan halaman watchlist pada Drawer,
   - Membuat halaman tampilan watchlist dan menghubungkannya dengan halaman detail dengan onTap(), Navigator.pushReplacement(), MaterialPageRoute()
   - Melakukan pengambilan field untuk menampilkan data












