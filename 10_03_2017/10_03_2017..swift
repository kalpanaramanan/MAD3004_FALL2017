//: Playground - noun: a place where people can play

import UIKit

protocol IDisplay{
    init();
    func display();
}

protocol IGreetings{
    func greet() -> String;
}

class Fruits : IDisplay,IGreetings{
    
    var name:String?;
    
    required init(){
        
    }
    
    init(name:String){
        self.name = name;
    }
    //IDisplay Protocol
    func display() {
        print("Protocol Display()");
    }
    
    //IGreetings Protocol
    func greet() -> String {
        return "Welocme to protocol Programming";
    }
    
    //OVERLOADED METHOD WITHING THIS SAME CLASS
    func greet(name : String){
        print("I ill fire the error \(name)");
    }
}

class Apple : Fruits{
    required init(){
        super.init(name: "Kalpana Mac iOS")
    }
    override init(name:String){
        super.init();
    }
}
var fruits = Fruits();
fruits.display();
print(fruits.greet());
fruits.greet(name: "Kalpana");

// CREATINGOBJECT FOR INTERFACE DISPLAY AND CASTING TO CLASS
var fruits1:IDisplay;
fruits1 = fruits;
fruits1.display();

var apple = Apple();
apple.display();
print(apple.greet());


