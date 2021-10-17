public class AboutSets {

    public static void setsMethods() {
        // unorded collection of elements
        // doesnt allow repeated data
        
        Set<Integer> newSet = new Set<Integer>{1, 2, 3, 4, 5};
            
        // Adding duplicate values - Not Allowed
        newSet.add(13);
        newSet.add(13);
        System.debug(newSet);
        
        // Check If Set Has an item
        System.debug(newSet.contains(13));
        System.debug(newSet.contains(15));
        
        // delete an item
        newSet.remove(13);
        System.debug(newSet);
        
        // get set size
        System.debug(newSet.size());
        
        // check if set is empty
        System.debug(newSet.isEmpty());
        
        // remove all items
        newSet.clear();
        System.debug(newSet.isEmpty());
        
    }
}