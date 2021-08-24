/**
 * @description       : 
 * @author            : James Boutel
 * @group             : 
 * @last modified on  : 24-08-2021
 * @last modified by  : James Boutel
**/
public class MockInterfaceOverride extends MockInterface{
    final List<SObject> objectList;

    MockInterfaceOverride(List<SObject> mockRecords){
        this.objectList = mockRecords;
    }

    public override List<SObject> passThrough(List<SObject> records){
        return objectList;
    }
}
