//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//STRUCTURE IS VALUE TYPE
print("************* STRUCTURE IS VALUE TYPE ***************");

struct s {
    var x = 100;
}

var s1 = s();
print("s1 (x) \(s1.x)");
var s2 = s1;
print("s2 (x) \(s2.x)");
s1.x = 200;
print("s1 (x) \(s1.x)");
print("s2 (x) \(s2.x)");


//CLASS IS REFRENCE TYPE
print("************* CLASS IS REFRENCE TYPE ***************");
class c{
    var x = 100
}
var c1 = c();
print("c1 (x) \(c1.x)");
var c2 = c1;
print("c2 (x) \(c2.x)");
c1.x = 200;
print("c1 (x) \(c1.x)");
print("c2 (x) \(c2.x)");

if c1 === c2 {
    print("Value of c1.x \(c1.x) is equal to Value of c2.x\(c2.x)")
}
class f{
    lazy var c0 = c();
    var y = 1000;
}
print("**********************");
var f1 = f();
print("f1 (y) \(f1.y)");
print("f1 (c0) \(f1.c0.x)");
print("**********************");
var f2 = f1;
//print("c2 (x) \(c2.x)");
//c1.x = 200;
print("f2 (y) \(f2.y)");
print("f2 (c0) \(f2.c0.x)");
f1.c0.x = 2000;
print("**********************");
print("f1 (c0) \(f1.c0.x)");
print("f2 (c0) \(f2.c0.x)");




















