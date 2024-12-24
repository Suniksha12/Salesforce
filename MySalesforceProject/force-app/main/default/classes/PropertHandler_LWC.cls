public class PropertHandler_LWC {
    @AuraEnabled(cacheable=true)
    public static List<Property__c> getProperty(String type, Boolean verified) {
        // Use 'true' or 'false' strings for comparison if Verified__c is a String
        String verifiedString = verified ? 'true' : 'false';
        return [SELECT Id, Location__c, Property_Name__c, Type__c, Verified__c 
                FROM Property__c 
                WHERE Type__c = :type AND Verified__c = :verifiedString];
    }
}
