//: Playground - noun: a place where people can play

import UIKit

class Manufacturer{
    var mID:Int?;
    var mName:String?;
    var m = "Hello";
    var getManufacuter:String?{
        set{
            m = "Walmart";
        }
        get{
                return m;
            }
        }
        
    init(){
        mID = 0;
        mName = "Walmart";
    }
    init(manufacturerId mID:Int, manufacturerName mName:String){
        self.mID = mID;
        self.mName = mName;
    }
    

    func printData(){
       print(self.mID! , self,mName);
    }
}

class Product : Manufacturer {
    var pId:Int?;
    var pName:String?;
    var price:Double?;
    var quanity:Double?;
    
    init(productId pId:Int, productName pName:String, productPrice price:Double,productQuanity quanity:Double)
    {
        super.init();
        self.pId = pId;
        self.pName = pName;
        self.price = price;
        self.quanity = quanity;
    }
    
    override func printData(){
        print(self.pId!,self.pName!,self.price!,self.quanity!);
    }
    
    
}
class Order {
    var oID:Int?;
    var oDate:Date = Date();
    var pArray = [Product]() ;
    var oTotal:Double?
    
    init(orderID oID:Int, orderDate oDate:Date, productArray pArray:[Product],orderTotal oTotal:Double)
    {
        self.oID = oID;
        self.oDate = oDate;
        self.pArray = pArray;
        self.oTotal = oTotal;
    }
    
    
    func printData(){
      print("Order ID : \(self.oID!)     Order Date : \(self.oDate)");
       var count = pArray.count;
        var sum:Double = 0.0;
       // print("COUNT ",count);
         for i in 0..<count {
            print(pArray[i].pId! , pArray[i].pName!,(pArray[i].price! * pArray[i].quanity!));
            sum += (pArray[i].price! * pArray[i].quanity!);
         }
        print("Total Cost for the Order \(self.oID!) : \(sum)");
        print();
    }

    
    func getOrderById(oId:Int){
        var orders = [Int: AnyObject]();
        var orderDic = [String: AnyObject]()
        orderDic["Id"] = 500 as AnyObject;
        //print(oId);
        if(oID == self.oID!){
            printData();
        }
    }
}


var m1 = Manufacturer();
m1.getManufacuter = "Test";
print( "Manufacturer --- \(m1.m)");

var product1 = Product(productId:100, productName:"Hard Drive", productPrice :120.0,productQuanity:5.0);
var product2 = Product(productId:200, productName:"ZIP Drive", productPrice :90.0,productQuanity:2.0)
var product3 = Product(productId:300, productName:"Floppy Disk", productPrice :50.0,productQuanity:3.0)
var product4 = Product(productId:400, productName:"Monitor", productPrice :300.0,productQuanity:4.0)
var product5 = Product(productId:500, productName:"iPhone 7 Plus", productPrice :1200.0,productQuanity:8.0)

//product1.printData();

var order1 = Order(orderID :100, orderDate :Date(), productArray :[product1,product2,product4,product5],orderTotal :500);
//order1.printData();

var order2 = Order(orderID :200, orderDate :Date(), productArray :[product3,product4],orderTotal :1500);
//order2.printData();

var order3 = Order(orderID :300, orderDate :Date(), productArray :[product1,product3,product5],orderTotal :1300);
//order3.printData();

order1.getOrderById(oId:100);









