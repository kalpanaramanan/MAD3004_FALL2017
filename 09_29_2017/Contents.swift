//: Playground - noun: a place where people can play

import UIKit

class Employee{
    var eID:Int?
    var eName:String?
    var salary:Double?
    
    //Default Constructor
    init(){
        eID = 0;
        eName = String();
        salary = 0.0;
    }
    //Parametrized  Constructor
    init(employeeID eID:Int,employeeName eName:String,employeeSalary salary:Double){
        self.eID = eID;
        self.eName = eName;
        self.salary = salary;
    }
    
    init(emp:Employee) {
        self.eID = emp.eID;
        self.eName = emp.eName;
        self.salary = emp.salary;
    }
    func displayEmployee(){
        print(self.eID!,self.eName!,self.salary!);
    }
    
    //Destructor
    deinit {
        print("Employee Object Destrictor");
    }
}

class   fullTimeEmployee : Employee{
    var noOfPaidLeaves = Int();
    
    /*  override init(emp: Employee) {
        super.init(employeeID: 3, employeeName: "Sai Praveen", employeeSalary: 55);
    }
    init() {
        super.init(employeeID: 3, employeeName: "Sai Praveen", employeeSalary: 55);
    } */
    override init() {
        print ("Full time employer");
        noOfPaidLeaves = 0;
        super.init();
    }
    
    //Parametrized  Constructor
    init(employeeID eID:Int,employeeName eName:String,employeeSalary salary:Double,noOfPaidLeaves:Int){
        /*self.eID = eID;
        self.eName = eName;
        self.salary = salary; */
        super.init(employeeID :eID,employeeName :eName,employeeSalary :salary);
        self.noOfPaidLeaves = noOfPaidLeaves;
    }
    
    func displayEmployee(Welcome:String) {
        print("\(Welcome),Welcome to Fulltime family")
    }
    /*override func displayEmployee() {
        print("Welcome to full-time family");
    }*/
}

class partTimeEmployee : Employee{
    
    var startTime = Int();
    var endTime = Int();
    var noOfHours = Int();
    
    override init() {
        print ("part time employer");
        startTime = 0;
        endTime = 0;
        noOfHours = 0;
        super.init();
    }
    
    //Parametrized  Constructor
    init(employeeID eID:Int,employeeName eName:String,employeeSalary salary:Double,startTime:Int,endTime:Int,noOfHours:Int){
        super.init(employeeID :eID,employeeName :eName,employeeSalary :salary);
        self.startTime = startTime;
        self.endTime = endTime;
        self.noOfHours = noOfHours;
    }
    
    
    func displayEmployee(Welcome:String) {
        print("\(Welcome),Welcome to Parttime family")
    }
}

var f1 = fullTimeEmployee(employeeID : 11,employeeName :"Kalpana R",employeeSalary : 78,noOfPaidLeaves:3);
f1.displayEmployee(Welcome: "Kalpan");

var f2 = partTimeEmployee(employeeID :45,employeeName :"Omika",employeeSalary :96,startTime:5,endTime:10,noOfHours:5)
f2.displayEmployee(Welcome: "Sai Praveen");

//var e1 = Employee();
//Employee.displayEmployee(e1); //-- Direct way to call the method of the class with constructor object
//print(e1.eID,e1.eName,e1.salary);
//e1.displayEmployee();

/* var e2 = Employee(employeeID :1,employeeName :"Kalpana",employeeSalary :100.87);
e2.displayEmployee();

e1 = e2;
e2 = e1;
var e3 = e2;
e3.displayEmployee();

var e4 = Employee(emp: e1);
e4.displayEmployee();

e3.displayEmployee();
 */

//var e6 = fullTimeEmployee();
//e6.displayEmployee();

/*
    var eID = Int();
    var gender = Bool();
    var eName = String();
    var salary = Double();
    print(eID,eName,salary,gender);
 */


