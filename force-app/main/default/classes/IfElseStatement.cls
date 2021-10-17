public class IfElseStatement {

    public static void code1() {
        Boolean isItSunny = false;
        Boolean isItRaining = false;
        Boolean areYouWorking = false;
        
        if(isItRaining == true) {
            System.debug('Bring your umbrella');
        } else {
            System.debug('Leave your umbrella');
        }
           
    }
    
    public static void code2() {
        Boolean isItSunny = false;
        Boolean isItRaining = false;
        Boolean areYouWorking = false;
        
        if(isItSunny == false) {
            System.debug('Do not go to the party');
        } else if(isItRaining == true) {
            System.debug('Do not go to the party');
        } else if(areYouWorking == true) {
            System.debug('Do not go to the party');
        } else {
            System.debug('Yayy!! Its party time');
        }
    }
    
    
}