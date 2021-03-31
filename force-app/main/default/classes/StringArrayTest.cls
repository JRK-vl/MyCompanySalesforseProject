public class StringArrayTest {
    
    public static List<String> generateStringArray(Integer n){
        
        List<String> testList = new List<String>();
        
        for (Integer i = 0; i < n; i++){
            testList.add('Test ' + i);
        }
        System.debug(testList);
        return testList;
    }
}