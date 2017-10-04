//: Playground - noun: a place where people can play

import UIKit

protocol ICalculation{
    //static var MAX:Int {get};
    var a:Double{get set};
    var b:Double{get};
    func calculate() -> Double;
}


class Addition : ICalculation{
    var a :Double
    var b:Double = 200;
    
    init(){
        a = 10.0;
        b = 89.0;
    }
    
    init(a:Double,b:Double){
        self.a = a;
        self.b = b;
    }
    func calculate() -> Double {
        return a + b;
    }
}

class Subtraction: ICalculation{
    var a :Double
    var b:Double = 200;
    
    init(){
        a = 10.0;
        b = 89.0;
    }
    func calculate() -> Double {
        return a - b;
    }
}
class Multiplication: ICalculation{
    var a :Double
    var b:Double = 200;
    
    init(){
        a = 10.0;
        b = 89.0;
    }
    func calculate() -> Double {
        return a * b;
    }
}
class Division: ICalculation{
    var a :Double
    var b:Double = 200;
    
    init(){
        a = 10.0;
        b = 89.0;
    }
    func calculate() -> Double {
        return a / b;
    }
}

var addition = Addition();
print("SUM : ",addition.calculate());

//WITH TWO ARGUMENT CONSTRUTOR
var addition1 = Addition(a:10,b:20);
print("SUM : ",addition1.calculate());

var subtraction = Subtraction();
print("SUBTRACT : ",subtraction.calculate());

var multiplication = Multiplication();
print("MULTIPLE : ",multiplication.calculate());

var division = Division();
print("DIVISION : ",division.calculate());



