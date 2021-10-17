public class Challange2 {

    public static Integer challange2Solution(Integer numberSlices) {
        Integer total;
        
        if(numberSlices == 1) {
            total = 8;
        } else if( numberSlices >= 2 && numberSlices <= 3) {
            total = numberSlices*7;
        } else if(numberSlices > 3) {
            total = numberSlices*6;
        }
        
        return total;
    }
    
    public static void total() {
        Integer RossSlices = 3;
        Integer ChandlerSlices = 1;
        Integer JoeySlices = 4;
        
        System.debug(Challange2.challange2Solution(RossSlices));
        System.debug(Challange2.challange2Solution(ChandlerSlices));
        System.debug(Challange2.challange2Solution(JoeySlices));
    }
}