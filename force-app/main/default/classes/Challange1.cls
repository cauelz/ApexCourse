public class Challange1 {

    public static void  ChallangeSolution() {
        List<String> apexList = new List<String>();
        apexList.add('Demystifying Apex Collections');
        apexList.add('Datatypes and Variables in Apex');
        
        List<String> lightningList = new List<String>();
        lightningList.add('Events in Aura Framework');
        lightningList.add('Developing reusable components');
        
        Map<String, List<String>> categories = new Map<String, List<String>>();
        categories.put('Apex', apexList);
        categories.put('Lightning', lightningList);
        
        System.debug(categories);
        
    }
}