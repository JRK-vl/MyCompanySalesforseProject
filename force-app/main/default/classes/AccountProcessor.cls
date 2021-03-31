public class AccountProcessor {
    @future
    public static void countContacts(List<ID> accountIDs){
        List<Account> accounts = [select ID, Name, Number_of_Contacts__c 
                                  from Account where Id IN :accountIDs];
        
        for (Account acct : accounts){
            List<Contact> contacts = [select ID 
                                      from Contact where AccountId =:acct.Id];
            acct.Number_of_Contacts__c = contacts.size();
        }
        update accounts;
    }

}