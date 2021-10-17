public class CustomException extends Exception {
    

    public static void exceptionMethods() {
        /* Let check the most Commom Excpetion Methods
         * 
         * getCause() -> Return the cause of the excpetion as an object
         * getLineNumber() ->Return the line number from where the excpetion was thrown
         * getMessage() -> Return the error message that displays for the User.
         * getStackTraceString() -> Return the stack trace as string
         * 
         * setMessage() -> set the message sent to the User.
         * 
		*/
        
        try {
            Double result = 10/0;
        } catch(Exception e) {
            System.debug('Cause: ' + e.getCause());
            System.debug('LineNumber: ' + e.getLineNumber());
            System.debug('Message : ' + e.getMessage());
            e.setMessage('Não pode dividir por zero caralho!!!!');
            System.debug('New Message: ' + e.getMessage());
        }
    }
    
}