public class ApexConstants {

    public static void constants() {
        Decimal pi = 3.14159;
        System.debug(pi);
        
        pi = 2.14159;
        System.debug(pi);
        
        Final Integer pizinho = (Integer) 3.14159;
        System.debug(pizinho);
        
        // vai dar ruim pq declaramos anteriormente e já inicializamos um valor
        pizinho = 5;
        
    }
    
}