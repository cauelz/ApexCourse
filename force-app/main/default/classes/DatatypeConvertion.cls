public class DatatypeConvertion {

    public static void methods() {
        // Exemplo de como converter String para Integer
        Integer myMarks = Integer.valueOf('85');
        
        String mark1 = '72';
        String mark2 = '67';
        String mark3 = '98';
        
        // Concatenação
        String total = mark1 + mark2 + mark3;
        System.debug(total);
        
        Integer exemple1 =  Integer.valueOf(mark1);
        System.debug(exemple1);
    }
}