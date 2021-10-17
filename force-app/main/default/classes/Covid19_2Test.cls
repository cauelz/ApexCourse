@isTest
public class Covid19_2Test {

    @isTest
    public static void treatPatientTest() {
        //create the instance of the class
        Covid19_2 jaipur = new Covid19_2(10);
        
        // check if the count is 10 or not
        System.assertEquals(10, jaipur.getTreated(), 'Treated count doest not match');
        
        
        //create the instance of the class
        Covid19_2 hyd = new Covid19_2(112);
        
        // check if the count is 112 or not
        System.assertEquals(112, hyd.getTreated(), 'Treated count doest not match');
        
        // check the count of recoveredInCountry, it should be 122
        System.assertEquals(122, Covid19_2.recoveredInCountry, 'Treated count does not match');
        
        jaipur.treatPatient();
        
        System.assert(jaipur.getTreated() == 11, 'Treated count does not match');
        System.assert(Covid19_2.recoveredInCountry == 123, 'Treated count doest not match');
        
        Covid19_2.printTreated();
        
    }
    
    @isTest
    public static void treatPatientTestNegative() {
        //create the instance of the class
        Covid19_2 jaipur = new Covid19_2(-10);
        
        // check if the count is 10 or not
        System.assertEquals(0, jaipur.getTreated(), 'Treated count doest not match');
        
    }
    
}