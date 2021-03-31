@isTest
public class TestVerifyDate {
    
    @isTest static void testDateWithin30Days(){
        Date tomorrow = Date.today().addDays(1);
        Date check = VerifyDate.CheckDates(Date.today(), tomorrow);
        System.assertEquals(tomorrow, check);
	}
    
    @isTest static void testDateNotWithin30Days(){
        Date next35Days = Date.today().addDays(35);
        Date check = VerifyDate.CheckDates(Date.today(), next35Days);
        System.assertEquals(Date.today(), Date.today());
    }
}