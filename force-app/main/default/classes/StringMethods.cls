public with sharing class StringMethods {

    public static void methods() {
        String name = 'i am a string variable';
        System.debug('Actual String: ' + name);
        System.debug('Capitalize string: ' + name.capitalize());

        System.debug('----------------');
        System.debug('A variavel name contem string? ' + name.contains('string'));

        System.debug('-----------------');
        System.debug('Deixar tudo maiusculo: ' + name.toUpperCase());
        System.debug('Deixar tudo minuscolo: ' + name.toLowerCase());
        
        // equals
        System.debug('Método equals: ' + name.equals('string'));
        String name1 = 'Cauê';
        String name2 = 'Caue';

        String name3 = 'caue';
        String name4 = 'Caue';
        System.debug('Cauê é igual Caue? ' + name1.equals(name2));
        System.debug('Como deixar Caue igual caue? ' + name3.toLowerCase().equals(name3.toLowerCase()));
        

        // Escape characters in Strings
        String team = 'My team\'s name is \'SFDCFacts Academy\'.';
        System.debug(team);
        // \b One backspace character
        // \n new line
        // \r carriage return
        // \t tab
        // \\ one backslash character
        // \o one ascii null character
    }
}