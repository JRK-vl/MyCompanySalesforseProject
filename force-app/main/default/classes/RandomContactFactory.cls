public class RandomContactFactory {
    public static List<Contact> generateRandomContacts(Integer numContacts, String lName){
        
        List<Contact> newContacts = new List<Contact>();
        
        for(Integer i = 0; i < numContacts; i++){
            newContacts.add(new Contact(FirstName = 'Test' + i, LastName = lName));
            System.debug('');
        }
        
        return newContacts;
    }
}