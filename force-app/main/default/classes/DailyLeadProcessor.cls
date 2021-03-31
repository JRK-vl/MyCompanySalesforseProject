public class DailyLeadProcessor implements Schedulable{
    
    public void execute(SchedulableContext ctx){
        List<Lead> blankLeadSourse = [SELECT ID, Name FROM Lead WHERE LeadSource = '' LIMIT 200];
        List<Lead> l = new List<Lead>();
        for (Lead leads : blankLeadSourse){
            leads.LeadSource = 'Dreamforce';
            l.add(leads);
        }
        update l;
    }   
}