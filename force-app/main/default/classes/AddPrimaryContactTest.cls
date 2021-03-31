@isTest
public class AddPrimaryContactTest 
{
     @isTest static void TestList()
     {
         List<Account> Teste = new List <Account>();
         for(Integer i=0;i<50;i++)
         {
             Teste.add(new Account(BillingState = 'CA', name = 'TestCA'+i));
             Teste.add(new Account(BillingState = 'NY', name = 'TestNY'+i));
         }
         insert Teste;

         Contact co = new Contact(FirstName = 'demo', LastName = 'Demo');
         insert co;
         String state = 'CA';
         AddPrimaryContact apc = new AddPrimaryContact(co, state);
         
         Test.startTest();
         System.enqueueJob(apc);
         Test.stopTest();
      }
 }