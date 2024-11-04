package step_definitions.GET;

import Initial.InitialAPI;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.restassured.module.jsv.JsonSchemaValidator;
import net.serenitybdd.annotations.Steps;
import net.serenitybdd.rest.SerenityRest;

import java.io.File;
import java.net.URI;

public class GETstepdefs {
 @Steps
 InitialAPI initialAPI;

    @Given("Dapatkan Semua Daftar Produk")
    public void DapatkanSemuaDaftarProduk() {
     SerenityRest.given().get(initialAPI.getListProduct);
    }


    @Given("Tetapkan Parameter Semua Daftar Merek")
    public void TetapkanParameterSemuaDaftarMerek() {
       SerenityRest.given().get(initialAPI.brandsList);
    }

    @Given("Set Parameter user account detail by email")
    public void setParameterUserAccountDetailByEmail() {
       SerenityRest.given().get(initialAPI.getUserDetailByEmail);
    }

    @Then("Kode Status Seharusnya {int} OK")
    public void KodeStatusSeharusnyaOK(int data) {
       SerenityRest.then().statusCode(data);
    }

    @And("Validasi skema json Daftar Produk GET")
    public void ValidasiskemajsonDaftarProdukGET() {
       File JsonValidate = new File(InitialAPI.JSON_SCHEMA_VALIDATOR +"GET/getProductList.json");
      SerenityRest.then().assertThat().body(JsonSchemaValidator.matchesJsonSchema(JsonValidate));
    }


    @And("Validasi skema json GET All Brands")
    public void ValidasiskemajsonGETAllBrands() {
       File JsonValidate = new File(InitialAPI.JSON_SCHEMA_VALIDATOR +"GET/getBrandsList.json");
       SerenityRest.then().assertThat().body(JsonSchemaValidator.matchesJsonSchema(JsonValidate));
    }


    @And("Validasi detail akun pengguna GET melalui skema json email")
    public void ValidasidetailakunpenggunaGETmelaluiskemajsonemail() {
       File JsonValidate = new File(InitialAPI.JSON_SCHEMA_VALIDATOR +"GET/getUserAccountDetailByEmail.json");
       SerenityRest.then().assertThat().body(JsonSchemaValidator.matchesJsonSchema(JsonValidate));
    }

}
