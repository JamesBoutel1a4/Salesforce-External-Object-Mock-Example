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
@isTest
public with sharing class TestClass {

    @isTest
    static void testOrdersApexClass(){

    List<Orders__x> orders = new List<Orders__x>();

    orders__x order = new orders__x(OrderNumber__c = '1234567890');

    orders.add(order);

    ObjectManager.setMock(new MockInterfaceOverride(orders));

    Test.startTest();
    getOrders();
    Test.stopTest();

    //do assertions
}