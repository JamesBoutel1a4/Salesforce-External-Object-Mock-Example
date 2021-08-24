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
public class OrdersService{
    
    public static List<Orders__x> getOrders(){        

        //Query Orders
        List<Orders__x> orders = ObjectManager.records([SELECT Id, OrderNumber__c FROM Orders__x]);
        
        return orders;
    }

}
