/// Class yang dibuat sebagai pintu dimana informasi constanta dideklarasikan

class AppConst {
  static String appName = "TFBBUS";
  static bool isDebuggable = true;
  static String _urlDev = "https://tfbapi-customer.radyalabs.id";
  static String _urlProd = "https://tfbapi-customer.radyalabs.id";

  static String getServerApi() =>
      (AppConst.isDebuggable ? _urlDev : _urlProd) + "/api/v1/";
  
  static String getServerImage() => "http://staging.radyalabs.id:7034/api/v1/";

  static List<String> monthName = [
      "Jan",
      "Feb",
      "Mar",
      "Apr",
      "May",
      "Jun",
      "Jul",
      "Aug",
      "Sep",
      "Oct",
      "Nov",
      "Dec"
    ];
}
