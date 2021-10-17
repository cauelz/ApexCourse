public with sharing class HelloWorld {
    
    private String greeting = 'Hello World';
    public String publicGreeting = 'My public greeting variable';
    
    
    public void printMessage(String message) {
        System.debug(message);
    }
    
    public void printPublicGreeting() {
        System.debug(publicGreeting);
    }
    
    public String getDay(Integer dayNumber){
        String dayString = '';

        switch on dayNumber {
            when 0 {
                dayString = 'Sunday';
            }
            when 1 {
                dayString = 'Monday';
            }
            when 2 {
                dayString = 'Tuesday';
            }
            when 3 {
                dayString = 'Wednesday';
            }
            when 4 {
                dayString = 'Thursday';
            }
            when 5 {
                dayString = 'Friday';
            }
            when 6 {
                dayString = 'Saturday';
            }
            when else {
                dayString = 'Invalid day number';
            }
        }

        return dayString;
    }
}