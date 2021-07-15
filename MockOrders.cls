/**
 * @description       : 
 * @author            : James Boutel
 * @group             : 
 * @last modified on  : 15-07-2021
 * @last modified by  : James Boutel
 * Modifications Log 
 * Ver   Date         Author         Modification
 * 1.0   15-07-2021   James Boutel   Initial Version
**/
public virtual inherited sharing class MockOrders{

    //We create a static instance of the class that can be overriden
    static MockOrders instance = new MockOrders();

    /*
    @description  		Method that returns the records that are passed to it
    **********************************************************************************************/
    public static List<SObject> records(List<SObject> records){
        return instance.passThrough(records);
    }

  /*
    @description  		Method that is usable in a test class. Used to set the mock (SObject type) that this class will return.
    **********************************************************************************************/
    @TestVisible static void setMock(MockOrders mock){
        instance = mock; 
    }

    /*
    @description  		A method that is overriden in the test class. When used outside of a test,
                        returns the records. When used in a test class, will return the overriden
                        method in the class that is defined in the test class, this overidden method
                        returns a list of the external object (Orders__x)
    **********************************************************************************************/
    protected virtual List<SObject> passThrough(List<SObject> records){
        return records;
    } 
}