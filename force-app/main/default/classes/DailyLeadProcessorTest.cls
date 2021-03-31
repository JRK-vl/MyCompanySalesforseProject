@isTest
public class DailyLeadProcessorTest {
    
    public static testmethod void testScheduledJob(){
        List<Lead> leads = new List<Lead>();
        for (Integer i=0; i<200; i++){
            Lead l = new Lead(LastName = 'Test' + i, Company = 'Test' + i, Status = 'Open - Not Contacted');
            leads.add(l);
        }
        insert leads;
        
        Test.startTest();
        String jobID = System.schedule('ScheduledApexTest', '0 1 * * * ?', new DailyLeadProcessor());
        Test.stopTest();
    }

}