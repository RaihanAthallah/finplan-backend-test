# Finplan Backend Engineering Test
Assignment for Finplan internship backend test

## BIODATA
### Nama  : Muhammad Raihan Athallah
### Email :rraihan1947@gmail.com


## FILES
1. Untuk assignment point tes logika semua ada di file main.go
2. Untuk assignment point backend test ada di folder 'TestBackend'


## HOW TO RUN GOLANG 
1. Open the folder
2. Use this command in terminal
  ```
  go run main.go
  ```


## TES LOGIKA

1. Buat fungsi dengan menampilkan bilangan cacah kelipatan 3 atau 7 sebanyak N, serta menampilkan huruf Z saat bilangan tersebut kelipatan 3 dan 7. Contoh

        Input	: N = 13.
        Output	: 3, 6, 7, 9, 12, 14, 15, 18, Z, 24, 27, 28, 30
 
     ![image](https://github.com/RaihanAthallah/finplan-backend-test/assets/72775603/f6af2fd4-407c-4144-88d4-60641f469f5e)

2. Buat fungsi pencarian ‘sang gajah’, ‘serigala’, ‘harimau’.
Dengan contoh masukan dan keluaran sebagai berikut :

        Input	: Berikut adalah kisah sang gajah. Sang gajah memiliki teman serigala bernama DoeSang. Gajah sering dibela oleh serigala ketika harimau mendekati gajah.
        Output	: sang gajah - sang gajah - serigala - serigala - harimau
 
     ![image](https://github.com/RaihanAthallah/finplan-backend-test/assets/72775603/ea76bcc5-9725-4a9f-8a30-9a094de8c8e9)
     
3. Buatlah fungsi pengecekan kata sandi, dengan ketentuan sebagai 

    a. Kata sandi minimal 8 karakter
    b. Kata sandi maksimal 32 karakter
    c. Karakter awal tidak boleh angka
    d. Harus memiliki angka
    e. Harus memiliki huruf kapital dan huruf kecil


        Input	: 5andiwara
        Output	: Karakter awal tidak boleh angka
        Input	: sandiwar4
        Output	: Harus memiliki huruf kapital dan huruf kecil
        Input	: Sandiwar4
        Output	: Kata sandi valid
 
     ![image](https://github.com/RaihanAthallah/finplan-backend-test/assets/72775603/124eb06e-2a5f-4004-be75-6759313ccd2a)
     
     
4. Buat fungsi pengecekan bilangan cacah terkecil yang tidak ada dari data yang diinputkan. Dengan contoh input dan output sebagai berikut : 

        Input	: [5, 2, 8, 4, 3, 10]
        Output	: 6
        Input	: [2, 3, 4, 6]
        Output	: 5
        Input	: [8, 6, 7, 12]
        Output	: 9
 
    ![image](https://github.com/RaihanAthallah/finplan-backend-test/assets/72775603/2a9e4ef6-04f1-405e-b28d-395dc10d805c)
     
     
5. Buat pola berikut sesuai inputan N, dengan N adalah bilangan ganjil : 

      ![image](https://github.com/RaihanAthallah/finplan-backend-test/assets/72775603/5d930026-cc38-4fa7-a568-e98633ad6aa0)
 
    ![image](https://github.com/RaihanAthallah/finplan-backend-test/assets/72775603/f5df9496-de55-4a54-b56a-a107fb3d8869)

## TES BACKEND (MySQL Query)

![image](https://github.com/RaihanAthallah/finplan-backend-test/assets/72775603/839bbc58-9506-4459-b2a5-5a171b0214ba)

1. Buat query untuk membuat tabel di atas dengan indexing.

     ![image](https://github.com/RaihanAthallah/finplan-backend-test/assets/72775603/140875a2-a11d-41d6-a804-aa5a200edf04)
     ![image](https://github.com/RaihanAthallah/finplan-backend-test/assets/72775603/70552b25-3caa-4f6f-adbb-473c221492b5)
     ![image](https://github.com/RaihanAthallah/finplan-backend-test/assets/72775603/3fd6e96c-6a94-4217-be7c-06952771e5ac)


2. Buat query untuk menghitung jumlah user masing masing gender pada suatu hobby tertentu

        Input	: skipping
        Output	: 
      ![image](https://github.com/RaihanAthallah/finplan-backend-test/assets/72775603/3c5ee06e-e6e9-4b0c-9459-b69088f82875)

 
     ![image](https://github.com/RaihanAthallah/finplan-backend-test/assets/72775603/973f72e7-ae38-4d91-bc95-dbce1ec98d87)
     
3. Buat query untuk menghitung jumlah hobby dari setiap user yang masih aktif

        Output kolom : name_user, total
 
     ![image](https://github.com/RaihanAthallah/finplan-backend-test/assets/72775603/51df53a5-2ccc-4c1f-94b8-a20763a3e9ae)
     
     
4. Hitung level rata - rata tiap user dari hobi yang dimiliki, ketika user memiliki hobi lebih dari 1 

        Output kolom : name, level_avg
 
   ![image](https://github.com/RaihanAthallah/finplan-backend-test/assets/72775603/1cb86bfe-46b2-4568-944e-337db953a7cb)
     
