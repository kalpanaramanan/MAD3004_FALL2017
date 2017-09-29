//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Student {
    var sid:Int = 0;
    var snm:String? = nil;
    var total:Double = 0.0;
    var per:Double = 0.0;
    var result:String?
    var getResult:String?{
         set{
            if per >= 80.00{
                result = "First";
            }else if per >= 70.00{
                result = "Second";
            }else if per >= 60.00{
                result = "Third";
            }else if per >= 50.00{
                result = "Pass";
            }else{
                 result = "Fail";
            }
        }
        get{
            if let x = result {
                return x;
            }
            return "unknown";
        }
    }
    
    func setStudentData(sid:Int,snm:String,marks:Double){
        self.sid = sid;
        self.snm = snm;
        self.total = marks;
    }
    
    func  displayStudentData() {
        print("Student ID : \(sid)");
        print("Student Name : \(snm!)");
        print("Student Total Marks : \(total)");
        print("Student Percentage : \(per)");
       // print("Student Percentage : \(getResult!)");

    }
}

var s1 = Student();
s1.setStudentData(sid:1, snm:"Kalpana", marks:98.75);
s1.per = 90.00;
s1.getResult = "Test";
s1.displayStudentData();
print(s1.result!);
