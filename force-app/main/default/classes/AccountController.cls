public class AccountController {
    
    public static List<Account> insertAccounts(List<Account> accountsToInsert) {
        insert accountsToInsert;
        return accountsToInsert;
    }
    
    public static Account insertAccount(Account accountToInsert) {
        insert accountToInsert;
        return accountToInsert;
    }
    
    public static List<Account> getAllAccounts() {
        List<Account> accounts = [SELECT Name, Phone FROM Account];
        
        return accounts;
    }
    
    public static void printAllAccounts() {
        List<Account> accounts = getAllAccounts();
        for(Account account: accounts) {
            System.debug('Account Name: ' + account.Name + ' Account phone: ' + account.Phone);
        }         
    }
    
    public static Integer getAccountSize() {
        List<Account> accounts = getAllAccounts();
        return accounts.size();
    }
    
    public static void updateAvgCaseResolutionDays(List<Id> accountIds){

        List<Account> accountsToUpdate = new List<Account>();
        Map<Id, Integer> accountTotalCaseMap = new Map<Id, Integer>();
        Map<Id, Integer> accountTotalCaseDaysMap = new Map<Id, Integer>();
        // retrive all the cases for this account
        // get resolution days for each account (ClosedDate - CreatedDate)
        for(Case caseObj : [SELECT Id, CreatedDate, ClosedDate, AccountId FROM Case WHERE IsClosed=true AND AccountId IN: accountIds]){
            // Primeiro, temos que checar se o Map já tem um account Id.
            // O Map nao pode ter dados duplicados nas chaves.
            // No caso deste for, o mesmo accountId pode repetir. E precisamos garantir que ele não vai ser sobrescrito.

            // if map does not have current account id, then add it.
            if(!accountTotalCaseMap.containsKey(caseObj.AccountId)) {
                accountTotalCaseMap.put(caseObj.AccountId, 0);
                accountTotalCaseDaysMap.put(caseObj.AccountId, 0);
            }

            // increase number of cases
            Integer totalCases = accountTotalCaseMap.get(caseObj.AccountId);
            totalCases++;
            accountTotalCaseMap.put(caseObj.AccountId, totalCases);

            // get duration in days and add it to totalDays
            Integer totalDays = accountTotalCaseDaysMap.get(caseObj.AccountId);
            totalDays += caseObj.CreatedDate.date().daysBetween(caseObj.ClosedDate.date());
            accountTotalCaseDaysMap.put(caseObj.AccountId, totalDays);
        }


        for(Id accountId : accountTotalCaseMap.keySet()) {

            Decimal resolutionDays = accountTotalCaseDaysMap.get(accountId)/accountTotalCaseMap.get(accountId);
            // update account object
            accountsToUpdate.add(new Account(Id=accountId, Avg_Case_Resolution_Days__c = resolutionDays));
        }

        update accountsToUpdate;
    }

    
}