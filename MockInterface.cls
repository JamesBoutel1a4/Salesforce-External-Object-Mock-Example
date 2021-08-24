/**
 * @description       : 
 * @author            : James Boutel
 * @group             : 
 * @last modified on  : 24-08-2021
 * @last modified by  : James Boutel
 * Modifications Log 
 * Ver   Date         Author         Modification
 * 1.0   15-07-2021   James Boutel   Initial Version
**/
public virtual inherited sharing class MockInterface{

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