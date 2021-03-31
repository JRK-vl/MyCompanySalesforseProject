trigger ClosedOpportunityTrigger on Opportunity (after insert, after update){ 
    
    List<Task> newTask = new List<Task>();
    
    for (Opportunity a : [SELECT ID FROM Opportunity
                          WHERE StageName LIKE 'Closed Won'
                          AND ID IN :Trigger.NEW]){
        Task t = new Task();
        t.Subject = 'Follow Up Test Task';
        t.WhatId = a.ID;
        newTask.add(t);
    }
    
    if (newTask.size() > 0){
        insert newTask;
    }
}