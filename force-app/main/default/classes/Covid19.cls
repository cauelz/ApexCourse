public class Covid19 {

    public Integer recoveredInArea = 0;
    public static Integer recoveredInCountry = 0;
    
    
    // initialization block
    {
        recoveredInArea = 5;
    }
    
    
    //Constructor1
    public Covid19() {
        System.debug('Constructor Called');
    }
    
    //Constructor2
    public Covid19(Integer recoveredInArea) {
        // se chamarmos um construtor dentro de outro, temos que chama-lo primeiro.
        this();
        this.recoveredInArea = recoveredInArea;
        recoveredInCountry = recoveredInArea;
    }
    
    public void treatPatient() {
        recoveredInArea++;
        recoveredInCountry++;
    }
    
    public static void printTreated(){
        System.debug('Recovered in country: ' + recoveredInCountry);
    }
    
    // Static block
    static{
        
    }
    
}