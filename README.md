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
   Cara kerja naviator serupa dengan stack, dimana kita dapat nelakukan push dan pop, push akan mengarahkan    user ke halaman tertentu serta menambahkan suatu halaman di antrian atas, sedangkan pop akan                mengembalikan ke halaman serta mengurangi halaman dari stack

5. Cara Implementasi Checklist
- Dari program tugas sebelumnya, saya menambahkan 3 file yaitu form.dart untuk mengisi form, dataBudget.dart menampilkan data, dan models.dart untuk membuat database
- Membuat Navigator, karena program ini terdiri dari tiga halaman, maka saya membuat navigator pada humberger menu dengan mengimplementasikan Drawer serta agar merapikan navigasi menggunakan listTile dan mengarahkan ke laman yang diinginkan. Navigator dibuat di 3 file yaitu main.dart, dataBUdeget.dart dan form.dart
- Pada form.dart sayang mengimplementasikan Widget form yang terdiri dari 3 input data , dua merupakan bentuk textform field dan satu lagi merupakan dropdown, data yang diinput user kemudian di submit untuk diteruskan ke models.py
- Pada models.py saya membuat sebuah class DataBudget yang terdiri dari judul, nominal, dan jenis, dan saya menyimpan data-data tersebut ke dalam list elem
- dataBudget.dart pada laman ini saya menampilkan data dari models.py menggunakan lisview yang akan menampilakan data secara vertikal didalamnya terdapat judul, nominal , dan jenis (pemasukan/pengeluaran)

