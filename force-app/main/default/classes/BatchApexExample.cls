global class BatchApexExample implements Database.Batchable<sObject> {
    global Database.QueryLocator start(Database.BatchableContext BC) {
        // collect the batches of records or objects to be passed to execute
         
        String query = 'SELECT Id, Name FROM Contact';
        return Database.getQueryLocator(query);
    }
     
    global void execute(Database.BatchableContext BC, List<Contact> contactList) {
        
        // process each batch of records default size is 200
        for(Contact contactItem : contactList) {        
            // Update the Account Name 
            contactItem.Email =  'yanming123.li@cool-tech.cn';
        }
        try {
            // Update the Account Record
            update contactList;
         
        } catch(Exception e) {
            System.debug(e);
        }
         
    }   
     
    global void finish(Database.BatchableContext BC) {
        // execute any post-processing operations like sending email
    }
}