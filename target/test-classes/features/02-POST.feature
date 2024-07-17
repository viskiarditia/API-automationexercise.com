@POST
Feature: Testing API POST automation exercise.com

  Scenario: POSTING Semua Daftar Produk
    Given Pengguna POST Ke Semua Daftar Produk
    Then Kode Status Seharusnya 405 Metode permintaan ini tidak didukung
    And Validasi skema json POST Ke Semua Daftar Produk

  Scenario: POSTING untuk mencari Produk
    Given POST Untuk Mencari Produk
    Then Kode Status Seharusnya 200 OK
    And Validasi POST Untuk Mencari Produk

    Scenario: POST Untuk Mencari Produk tanpa parameter search_product
    Given POST Untuk Mencari Produk tanpa parameter search_product
    Then Kode Status Seharusnya 400 Permintaan buruk
    And Validasi POST Untuk Mencari Produk tanpa skema json parameter produk_pencarian

    Scenario: POST Untuk Memverifikasi Login dengan detail yang valid
    Given POST Untuk Memverifikasi Login dengan detail yang valid
    Then Kode Status Seharusnya 200 OK
    And Validasi POST Untuk Memverifikasi Login dengan detail skema json yang valid

    Scenario: POST Untuk Memverifikasi Login tanpa parameter email
    Given POST Pengguna Untuk Memverifikasi Login tanpa parameter email
    Then Kode Status Seharusnya 200 OK
    And Validasi POST Untuk Memverifikasi Login tanpa skema json parameter email

    Scenario: POST Untuk Memverifikasi Login dengan detail yang tidak valid
    Given POST Pengguna Untuk Memverifikasi Login dengan detail yang tidak valid
    Then Kode Status Seharusnya 404 Tidak Ditemukan
    And Validasi POST Untuk Memverifikasi Login dengan detail skema json yang tidak valid

    Scenario: POST Untuk Membuat/Mendaftarkan Akun Pengguna
    Given POST Pengguna Untuk Membuat/Mendaftarkan Akun Pengguna
    Then Kode Status Seharusnya Pengguna 201 dibuat
    And Validasi POST Untuk Membuat/Mendaftarkan skema json Akun Pengguna


