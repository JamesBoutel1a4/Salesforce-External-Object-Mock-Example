/**
 * @description       : 
 * @author            : James Boutel
 * @group             : 
 * @last modified on  : 24-08-2021
 * @last modified by  : James Boutel
**/
public class ObjectManager {
    static MockInterface mockInstance = new MockInterface();
    public static List<sObject> records(List<sObject> records){
        return mockInstance.passThrough(records);   
    }
    
    @TestVisible static void setMock(MockInterface mock){
        mockInstance = mock;
    }
}