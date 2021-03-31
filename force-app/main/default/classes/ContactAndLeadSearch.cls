public class ContactAndLeadSearch {
    public static List<List<sObject>> searchContactsAndLeads(String name){
        List<List<sObject>> searchList = [FIND :name IN NAME FIELDS
                                         RETURNING Contact(Name), Lead(Name)];
        return searchList;
	}

}