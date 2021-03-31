@isTest
public class AccountProcessorTest {
    static testMethod void AccountProcessorTestData(){
        List <Id> id = new List<Id>();
        Test.setMock(HttpCalloutMock.class, new SMSCalloutMock());
        Account a = new Account();
        a.Name = 'Test';
        insert a;
        id.add(a.ID);
		List<Contact> cList = new List<Contact>();
        
        for(Integer i = 0; i <= 100; i++){
            Contact c = new Contact();
            c.LastName = 'TestNewContact';
            c.AccountId = a.ID;
            cList.add(c);
        }
        insert cList;
       	
		Test.startTest();
        	AccountProcessor.countContacts(id);
		Test.stopTest();        
    }

}