<h1>LAPORAN MODUL 1 SHELL SCRIPTING</h1>

<ol>
        <li><p align="justify">Anda diminta tolong oleh teman anda untuk mengembalikan filenya yang telah dienkripsi oleh seseorang menggunakan bash script, file yang dimaksud adalah nature.zip. Karena terlalu mudah kalian memberikan syarat akan membuka seluruh file tersebut jika pukul 14:14 pada tanggal 14 Februari atau hari tersebut adalah hari jumat pada bulan Februari.<br>
                <b>Hint: Base64, Hexdump</b>
        </p></li>
        <li><p align="justify">Anda merupakan pegawai magang pada sebuah perusahaan retail, dan anda diminta untuk memberikan laporan berdasarkan file WA_Sales_Products_2012-14.csv. Laporan yang diminta berupa:<br>
a. Tentukan negara dengan penjualan(quantity) terbanyak pada tahun 2012.<br>
b. Tentukan tiga product line yang memberikan penjualan(quantity)terbanyak pada soal poin a.<br>
c. Tentukan tiga product yang memberikan penjualan(quantity) terbanyak berdasarkan tiga product line yang didapatkan pada soal poin b.
        </p></li>
        <li><p align="justify">Buatlah sebuah script bash yang dapat menghasilkan password secara acak sebanyak 12 karakter yang terdapat huruf besar, huruf kecil, dan angka. Password acak tersebut disimpan pada file berekstensi .txt dengan ketentuan pemberian nama sebagai berikut: <br>
a. Jika tidak ditemukan file password1.txt maka password acak tersebut disimpan pada file bernama password1.txt<br>
b. Jika file password1.txt sudah ada maka password acak baru akan disimpan pada file bernama password2.txt dan begitu seterusnya.<br>
c. Urutan nama file tidak boleh ada yang terlewatkan meski filenya dihapus.<br>
d. Password yang dihasilkan tidak boleh sama.
</p></li>
<li>
<p align="justify">Lakukan backup file syslog setiap jam dengan format nama file “jam:menit tanggal-bulan-tahun”. Isi dari file backup terenkripsi dengan konversi huruf (string manipulation) yang disesuaikan dengan jam dilakukannya backup misalkan sebagai berikut:<br>
<ol><li>Huruf b adalah alfabet kedua, sedangkan saat ini waktu menunjukkan pukul 12, sehingga huruf b diganti dengan huruf alfabet yang      
         memiliki urutan ke 12+2 = 14.</li>
    <li>Hasilnya huruf b menjadi huruf n karena huruf n adalah huruf ke empat belas, dan seterusnya.</li>
    <li>setelah huruf z akan kembali ke huruf a</li>
    <li>Backup file syslog setiap jam</li>
    <li>dan buatkan juga bash script untuk dekripsinya.</li>
</ol></p>
<h5>Jawaban</h5>
<p></p>
<p>Untuk menyelesaikan soal nomor 4, berikut adalah langkah-langkahnya :
<ol><li>Buatlah shell script yang dapat melakukan enkripsi pada file syslog yang terletak pada <i>/var/log/syslog/</i><br>
        Berikut adalah langkah-langkah dalam membuat file berekstensi .sh untuk melakukan enkripsi:<br>
        <ul><li>Simpan jam yang didapat dari tanggal ke dalam sebuah variabel untuk keperluan enkripsi. Variabel ini nantinya sebagai           titik pergeseran huruf. Contoh sintaksnya: <code>`hr=date +"%H"`</code></li>
<li>Simpan waktu dan tanggal dalam sebuah variabel yang nantinya akan dipakai untuk penamaan file output setelah enkripsi.Contoh sintaksnya: <code>filename=`date +"%H:%M %d-%m%y"`</code></li>
<li>Deklarasikan sebuah variabel bertipe string yang berisi huruf, mulai dari a-z dan A-Z. Nilai string tersebut akan berulang kembali ke huruf awal  [a|A] setelah sampai pada abjad terakhir [z|Z]. Hal ini untuk memenuhi kebutuhan enkripsi dimana pergeseran hanya dimungkinkan sekali. </li>
                <li>Terjemahkan hasil dari <code>cat</code> pada var/log/syslog sesuai dengan format konversi enkripsi yaitu menggeser huruf yang sebenarnya menjadi huruf ke-n dari abjad. </li>
<li>Simpan hasil enkripsi ke dalam sebuah file sesuai format waktu dan tanggal</li></ul>
        <br>Berikut adalah contoh source code enkripsi <br>
        <pre>
#!/bin/bash
hr=`date +"%H"`
filename=`date +"%H:%M %d-%m-%y"`

lc="abcdefghijklmnopqrstuvwxyz"
uc="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
lc+=$lc
uc+=$uc

cat /var/log/syslog | tr "${lc:0:26}${uc:0:26}" "${lc:$hour:26}${uc:$hour:26}" > "$filename"
</pre>
    <li>Buatlah shell script yang dapat melakukan enkripsi pada file yang merupakan hasil dari enkripsi.<br>Berikut adalah langkah-langkah dalam membuat berekstensi .sh untuk melakukan dekripsi atau penerjemahan ulang:<br>
        <ul><li>Tentukan file mana yang akan dilakukan dekripsi. Masukkan nama file sesuai format yang telah ditentukan, yaitu: waktu tanggal.</li>
        <li>Simpan jam yang di dapat dari waktu ke dalam sebuah variabel. Variabel ini akan digunakan sebagai titik pergeseran huruf untuk melakukan dekripsi</li>
        <li>Deklarasikan sebuah variabel bertipe string yang berisi huruf, mulai dari a-z dan A-Z. Nilai string tersebut akan berulang kembali ke huruf awal  [a|A] setelah sampai pada abjad terakhir [z|Z]. Hal ini untuk memenuhi kebutuhan dekripsi dimana pergeseran hanya dimungkinkan sekali.</li>
       <li>Terjemahkan hasil dari <code>cat</code> pada file yang dipilih sesuai dengan format konversi dekripsi yaitu menggeser huruf huruf ke-n dari abjad agar di dapat huruf yang sesuai dengan urutan yang sebenarnya. </li>
<br>Berikut adalah contoh source code enkripsi <br>
 <pre>
#!/bin/bash
echo "Masukkan nama file yang akan didecrypt: "
read date_time
hr=${date_time:0:2}

lc="abcdefghijklmnopqrstuvwxyz"
uc="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
lc+=$lc
uc+=$uc

cat "$date_time" | tr "${lc:$hr:26}${uc:$hr:26}" "${lc:0:26}${uc:0:26}" | cat > "/home/bella/modul1/hasil_decrypt $data_time

</pre>
</li>
</ol></p>
</li>
<li><p align="justify">Buatlah sebuah script bash untuk menyimpan record dalam syslog yang memenuhi kriteria berikut:<br>
a. Tidak mengandung string “sudo”, tetapi mengandung string “cron”, serta buatlah pencarian stringnya tidak bersifat case sensitive,
sehingga huruf kapital atau tidak, tidak menjadi masalah.<br>
b. Jumlah field (number of field) pada baris tersebut berjumlah kurang dari 13.<br>
c. Masukkan record tadi ke dalam file logs yang berada pada direktori /home/[user]/modul1.
</p></li>
</ol>
