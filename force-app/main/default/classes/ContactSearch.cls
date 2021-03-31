public class ContactSearch {
    public static List<Contact> searchForContacts (String lastName, String mail){
        
        List<Contact> contactList = [SELECT ID, Name
                                     FROM Contact
                                     WHERE LastName =: lastName
                                     AND MailingPostalCode =: mail];
        
        return contactList;
    }

}