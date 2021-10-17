public class AboutMaps {

    public static void mapMehtods() {
        // key values pair based collection
        // keys nao podem ser iguais mas os valores podem!
		Map<Integer, String> class2020 = new Map<Integer, String>();
        
        // add a new student/item
        class2020.put(1, 'Cauê');
        class2020.put(2, 'Lucas');
        
        System.debug(class2020);
        
        class2020.put(3, 'Lucas');
        System.debug(class2020);
        
        // update/override value
        class2020.put(3, 'Skywalker');
        System.debug(class2020);
        
        // get a value
        System.debug(class2020.get(3));
        
        // remove and item from map
        class2020.remove(3);
        System.debug(class2020);
        
        // get all the keys
        Set<Integer> rollNumber = class2020.keySet();
        System.debug(rollNumber);
        
        // get all the values
        List<String> students = class2020.values();
        System.debug(students);
        
        // check if mal has the key
        System.debug(class2020.containsKey(2));
        System.debug(class2020.containsKey(3));
        
    }
}