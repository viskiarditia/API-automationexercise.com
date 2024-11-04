@GET
Feature: Testing API GET automationexercise.com

  Scenario: Dapatkan Semua Daftar Produk pengguna
    Given Dapatkan Semua Daftar Produk
    Then Kode Status Seharusnya 200 OK
    And Validasi skema json Daftar Produk GET

  Scenario: Dapatkan Daftar Semua Merek
    Given Tetapkan Parameter Semua Daftar Merek
    Then Kode Status Seharusnya 200 OK
    And Validasi skema json GET All Brands

    Scenario: Get user account detail by email
    Given Set Parameter user account detail by email
    Then Kode Status Seharusnya 200 OK
    And Validasi detail akun pengguna GET melalui skema json email

