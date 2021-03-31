@isTest
private class LeadProcessorTest {
    @testSetup
    static void setup(){
        List<Lead> leads = new List<Lead>();
        for (Integer i = 0; i < 200; i++){
            leads.add(new Lead(LastName='Test ' + i, Company = 'TestCompany ' + i));
        }
        insert leads;
    }
    @isTest
    static void test(){
        Test.startTest();
        LeadProcessor lp = new LeadProcessor();
        Database.executeBatch(lp);
        Test.stopTest();
        System.assertEquals(200, [select count() from Lead where LeadSource LIKE 'Dreamforce']);
    }
}