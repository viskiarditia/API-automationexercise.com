package Initial;

import java.net.URI;

public class InitialAPI {
    public URI URL = URI.create("https://automationexercise.com/");
    public static final String DIR = System.getProperty("user.dir") + "/";
    public URI JSON_REQ_BODY = URI.create(DIR + "/src/test/resources/JSON/JSONReqBody/");
    public static final String JSON_SCHEMA_VALIDATOR = (DIR + "src/test/resources/JSON/JSONSchemaValidator/");

    public URI getUserDetailByEmail = URI.create(URL+"api/getUserDetailByEmail");
    public URI getListProduct = URI.create(URL+"api/productsList");
    public URI brandsList = URI.create(URL+"api/searchProduct");
    public URI searchProduct = URI.create(URL + "api/searchProduct");
    public URI login = URI.create(URL + "api/verifyLogin");
    public URI createAccount = URI.create(URL + "api/createAccount");
    public URI deleteAccount = URI.create(URL + "api/deleteAccount");
    public URI updateAccount = URI.create(URL + "api/updateAccount");

}
