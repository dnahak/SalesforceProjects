trigger AppleWatch on Opportunity (after insert) {
    for (Opportunity Opty : Trigger.new){
    Task t = new Task();
    t.Subject = 'Apple Watch Promo';
    t.Description = 'Send them one ASAP';
    t.Priority = 'High';
    t.WhatID = Opty.ID;
    insert t;
    }
}