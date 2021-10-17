public class Fitness {

    public Integer bodyWeight;
    public Integer bodyHeight;
    
    public static Decimal calculateBMI(Decimal bodyWeight, Decimal bodyHeight) {
        if(bodyHeight <= 0 || bodyWeight < 0) {
            return -1;
        }
        return bodyWeight/(bodyHeight*bodyHeight);
    }
    

    public static decimal calculatePace(Decimal distance, Decimal minutes) {
        
        if(distance < 0 || minutes <= 0) {
            return -1;
        }
        
        Decimal hr = minutes/60;
        Decimal pace = distance/hr;
        return pace;
    }    
}