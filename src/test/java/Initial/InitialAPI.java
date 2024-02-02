package Initial;

public class InitialAPI {
    public static final String URL = "https://automationexercise.com/";
    public static final String DIR = System.getProperty("user.dir");
    public static final String JSON_REQ_BODY = DIR+"/src/test/resources/JSON/JSONReqBody/";

    public static final String JSON_SCHEMA_VALIDATOR = DIR + "src/test/resources/JSON/JSONSchemaValidator/";

    public static final String productsList = URL + "api/productsList";
    public static final String BrandsList = URL + "api/brandsList";
    public static final String searchProduct = URL + "api/searchProduct";
    public static final String login = URL + "api/verifyLogin";
    public static final String createAccount = URL + "api/createAccount";
    public static final String deleteAccount = URL + "api/deleteAccount";
    public static final String updateAccount = URL + "api/updateAccount";
    public static final String getUserDetailByEmail = URL + "api/getUserDetailByEmail";




}
