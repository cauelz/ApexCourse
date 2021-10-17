public class AboutLists {

    public static void listMethods() {
        
        List<Integer> rollNumbers = new List<Integer>{123,321,456};
            for(Integer nbers : rollNumbers) {
                System.debug(nbers);
            }
        rollNumbers.add(9876);
        rollNumbers.add(345234);
        rollNumbers.add(34512345);
        
        System.debug(rollNumbers);
        
        System.debug('Item 1 =>' + rollNumbers.get(0));
        System.debug('Item 2 =>' + rollNumbers.get(1));
        System.debug('Item 3 =>' + rollNumbers.get(2));
        
        // add item on index 4
        rollNumbers.add(4, 1232345);
        System.debug(rollNumbers);
        
        // update item on index 2
        rollNumbers.set(1, 4444);
        System.debug(rollNumbers);
        
        //get the list size
        System.debug(rollNumbers.size());
        
        //remove the item on index 3
        rollNumbers.remove(3);
        System.debug(rollNumbers.size());
        
        // clear the list
        rollNumbers.clear();
        System.debug(rollNumbers.size());
        
    }
}