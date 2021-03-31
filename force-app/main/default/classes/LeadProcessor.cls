public class LeadProcessor implements Database.Batchable<sObject> {
    public Database.QueryLocator start(Database.BatchableContext bc) {
        return Database.getQueryLocator('SELECT ID, Name, LeadSource FROM Lead');
    }
    public void execute(Database.BatchableContext bc, List<Lead> records){
        List<Lead> leads = new List<Lead>();
        for (Lead lead : records){
            lead.LeadSource = 'Dreamforce';
            leads.add(lead);
        }
        update leads;
    }
    public void finish(Database.BatchableContext bc){
        // execute any post-processing operations
    }
}