trigger DeleteTrigger on ContentDocument (after insert,after delete) {
    List <Id> caseIds = new List <Id>();
    if (Trigger.isinsert)
    {
        system.debug('!*!*ContentDocumentLink trigger is Insert');
        for (ContentDocument cdl : trigger.old) {
              caseIds.add(cdl.id);
        }
    }
    if (Trigger.isDelete)   // For delete need list of what was being deleted
        {
        system.debug('!*!*ContentDocumentLink trigger is Delete');
        for (ContentDocument cdl : trigger.old) {
              caseIds.add(cdl.id);
        }
        //System.debug('test');
        //trigger.old.addError('Overlap Session');
    }
}