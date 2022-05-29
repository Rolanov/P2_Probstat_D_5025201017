# P2_Probstat_D_5025201017
Praktikum Modul 2 Probabilitas dan Statistik

## Nomor 1
a) Standar deviasi didapat senilai 6.35959468
<br> ![1_sd](https://user-images.githubusercontent.com/99122278/170871450-b72d7837-95d5-4190-ab43-585abeec725f.png) </br>
b) mencari p-value
<br>
![1_ttest](https://user-images.githubusercontent.com/99122278/170870347-bfcffc93-4e81-42ab-8934-722c23088c1b.png)
</br>
ditemukan nilai p-valuenya adalah 6.003e-5 atau 0.00006003
c) karena nilai t lebih besar dari nilai kritis t dengan tingkat signifikasi 5%, maka dapat disimpulkan bahwa H0 ditolak dan H1 diterima, yaitu terdapat pengaruh signifikan secara statistika dalam hal kadar saturasi oksigen sebelum dans esuah melakuan aktivitas A

## Nomor 2
Melakukan uji z
<br>
![2_ztest](https://user-images.githubusercontent.com/99122278/170870482-97beef20-a8fc-470b-adad-c043ce33aa0a.png)
</br>
a) Setuju, karena kesimpulan dari uji z menolak H0, sehingga mobil dikemudikan rata-rata lebih dari 20000 kilometer per tahun

b) Output dari z test adalah, hipotesis alternatif alternative hypothesis: true mean is greater than 20000 atau H1 diterima sehingga klaim benar. 

c) P-value dari uji tes z adalah 2.2e-16 atau mendekati 0, dari hasil p-value tersebut hipotesis awal dapat ditolak dan H1 diterima.

## Nomor 3
a) H0 = rata-rata saham di Bandung sama dengan rata-rata saham di Bali, H1 = rata-rata saham di Bandung tidak sama dengan rata-rata saham di Bali 
b) Sampel statistik menggunakan uji t
<br>
![3_ttest](https://user-images.githubusercontent.com/99122278/170870657-0d72408d-0a7f-4cac-8acf-6237d2f4c279.png)
</br>
c) Uji statistik dengan df = 2
<br>
![3_plotDist](https://user-images.githubusercontent.com/99122278/170870697-b35c12bf-9510-42e3-9ae9-eaa1066d4ce3.png)
</br>

d) Nilai kritikal
```
qt(p = 0.05, df = 2, lower.tail = FALSE)
```
Didapat nilai kritikalnya 2.919986

e) Karena p-value < a, maka hipotesis pertama ditolak. Atau disimpulkan bahwa rata-rata saham di Bandung tidak sama dengan rata-rata saham di Bali
## Nomor 4
a) Plot 3 subjek grup
<br>![4_plotgrup1](https://user-images.githubusercontent.com/99122278/170871024-176f8dda-e00b-4a7d-b884-2c656d3f5eeb.png) </br> Grup 1
<br>![4_plotgrup2](https://user-images.githubusercontent.com/99122278/170871022-23ee72c8-faac-4d1e-b6ec-de0f4aef87a0.png) </br> Grup 2
<br>![4_plotgrup3](https://user-images.githubusercontent.com/99122278/170871018-d0eefa5f-430d-4634-b80e-4afef20c4b87.png) </br> Grup 3

poin b hingga e:
<br>![4_bcde](https://user-images.githubusercontent.com/99122278/170871139-7f6ded22-e17f-4dda-84ae-9de888e7af26.png)</br>
sehingga dapat disimpulkan hasil dari test post-hoc model 1 adalah grup 1 lebih panjang dari grup yang lain

## Nomor 5
a) Plot sederhana
<br> ![5_plot](https://user-images.githubusercontent.com/99122278/170871178-8af95a2e-b18a-462c-9a7d-16b3dce1276a.png) </br>
b) Uji Anova dua arah dan c) Tabel dengan mean dan standar deviasi cahaya
<br> ![5_bc](https://user-images.githubusercontent.com/99122278/170871265-16049286-6c09-44aa-9e7e-78ce36e651ea.png) </br>
d) Uji Tukey
<br> ![5d](https://user-images.githubusercontent.com/99122278/170871293-bbc129dd-1aa8-45af-adff-700a6d94bfd9.png) </br>
e) Compact Letter Display
<br> ![5_e](https://user-images.githubusercontent.com/99122278/170871321-a01e3ea7-70a8-4d24-a58a-14c39610a8ef.png) </br>

