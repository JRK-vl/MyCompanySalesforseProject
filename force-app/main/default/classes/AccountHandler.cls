public class AccountHandler {
    public static Account insertNewAccount(String param){        
        try {
    		Account acct = new Account(Name = param);
    		insert acct;
            return acct;
		} catch (DmlException e) {
    		return null;
		}
	}
}