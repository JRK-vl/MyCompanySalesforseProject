@isTest
public class TestRestrictContactByName {
    @isTest static void TestContactLastNameIsValid(){
        Contact cont = new Contact();
        cont.LastName = 'INVALIDNAME';
        
        Test.startTest();
        Database.SaveResult result = Database.Insert(cont, false);
        Test.stopTest();
        System.assert(!result.isSuccess());
        System.assert(result.getErrors().size() > 0);
        System.assertEquals('The Last Name '+ cont.LastName +' is not allowed for DML',
                             result.getErrors()[0].getMessage());
	}
}