public class ApexQuery {
    
    public static void Query() {
        List<Account> accounts = [SELECT Name, Phone FROM Account];
        
        for(Account account : accounts) {
            System.debug('Account Name => '+ account.Name);
            System.debug('Account Phone => '+ account.Phone);
        }
        
        // Como converter um List em um Map com uma Query
        Map<Id, Account> accountsMap = new Map<Id, Account>([SELECT Name, Phone FROM Account]);
        
        for(String key : accountsMap.keySet()) {
            System.debug('Account Name => '+ accountsMap.get(key).Name);
            System.debug('Account Phone => '+ accountsMap.get(key).Phone);
        }
    }
    
    public static void Relationship() {
        
        // use list of contact to store the query result
        // you cannot use list of case, or list of account as
        // our main object is contact
        List<Contact> contacts = [SELECT Account.Name, Account.Rating, Name, Department, Title, (SELECT CaseNumber, Subject FROM Cases) FROM Contact ORDER BY Name];
        List<Case> cases = new List<Case>();
        
        for(Contact contact : contacts) {
            System.debug('Contact Name: ' + contact.Name + ', Account Name: '+ contact.Account.Name);
            System.debug('Contact Cases: '+ contact.Cases);
            if(!contact.Cases.isEmpty()) {
                cases.addAll(contact.Cases);
            }
        }
        
        System.debug('Cases: ' + cases);
        
        for(Case caseObj : cases) {
            System.debug('Case Number: '+caseObj.CaseNumber + ', Case Subject: ' + caseObj.Subject);
        }
    }
}