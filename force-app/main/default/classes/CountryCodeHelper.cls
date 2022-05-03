public class CountryCodeHelper {
  public static string getCountryCode(String country) {     
    Country_Code__mdt mc = Country_Code__mdt.getInstance('CAN');
    System.debug('MC:'+mc);

      return mc.Country_Code__c;
  }
}