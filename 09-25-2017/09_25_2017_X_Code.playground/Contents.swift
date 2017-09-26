//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let π = 3.14159
let 你好 = "你好世界"
let 🐶🐮 = "dogcow"
var k = "Kalpana" + " Ramanan"

//Nil-Coalescing Operator
var x : String?// ="Kalpana" + " Ramanan"
var b = x ?? "Hello"

x != nil ? x! : "Say B"

print("---------WITH ONE FOR LOOP----------");

for index in 1...10 {
   print("\(5) * \(index) = \(index * 5)")
}

print("---------WITH TWO FOR LOOP----------");

for i in 1...10 {
    var sum = 0;
    for _ in 1...i {
        sum = i * 5;
    }
    print("\(5) * \(i) = \(sum)");
}

print("---------WITH TWO FOR LOOP----------");

for i in 1...10 {
    var sum = 0;
    for _ in 1...i {
        sum = sum + 5;
    }
    print("\(5) * \(i) = \(sum)");
}


print("---------Define Range----------");
let range = -1...5
range.contains(7);
range.contains(4);
range.contains(-1);
range.contains(5);
range.contains(0);
range.upperBound;
range.lowerBound;


for k in range {
    print (k);
}


let names = ["Anna", "Alex", "Brian", "Jack"]
for name in names {
    print("Hello, \(name)!")
}


let numberOfLegs = ["spider":8,"ant":4,"cat":2];
for (animalName,legCount) in numberOfLegs{
    print("\(animalName) have \(legCount) legs");
    print("\(numberOfLegs["spider"]!) " );
}

print("---- TICK MARK-------");
let minutes = 60
for tickMark in 0..<minutes {
    print(tickMark)
    
}


print("---- WHILE-------");
var nx = 10;
 while nx != 0 {
    print(nx);
    nx = nx - 1;
 }

print("---- repeat WHILE-------");
var ny = 10;
repeat{
    print(ny);
    ny = ny - 1;
}while (ny != 0)

let someCharacter: Character = "B"
switch someCharacter {
case "a":
    fallthrough
    //print("The first letter of the alphabet a")
case "A":
    print("The last letter of the alphabet A or a")
case "B":
    print("The first letter of the alphabet B")
    fallthrough
case "C":
    print("The last letter of the alphabet C")
    fallthrough
case "D":
    print("The last letter of the alphabet D")
default:
    print("Some other character")
}


let approximateCount = 55
let countedThings = "moons orbiting Saturn"
let naturalCount: String
switch approximateCount {
case 0:
    naturalCount = "no"
case 1..<5:
    naturalCount = "a few"
case 5..<12:
    naturalCount = "several"
case 12..<100:
    naturalCount = "dozens of"
case 100..<1000:
    naturalCount = "hundreds of"
default:
    naturalCount = "many"
}
print("There are \(naturalCount) \(countedThings).")
// Prints "There are dozens of moons orbiting Saturn."




let somePoint = (0,1)
switch somePoint {
case (0, 0):
    print("\(somePoint) is at the origin")
case (_, 0):
    print("\(somePoint) is on the x-axis")
case (0, _):
    print("\(somePoint) is on the y-axis")
case (-2...2, -2...2):
    print("\(somePoint) is inside the box")
default:
    print("\(somePoint) is outside of the box")
}
// Prints "(1, 1) is inside the box"



let anotherPoint = (3, 1)
switch anotherPoint {
case (let x1, 0):
    print("on the x-axis with an x1 value of \(x1)")
case (0, let y1):
    print("on the y-axis with a y1 value of \(y1)")
case let (x1, y1):
    print("somewhere else at (\(x1), \(y1))")
}
// Prints "on the x-axis with an x1 value of 2"




func greet(person: [String: String]) {
    guard let name = person["name"] else {
        return
    }
    
    print("Hello \(name)!")
    
    guard let location = person["location"] else {
        print("I hope the weather is nice near you.")
        return
    }
    
    print("I hope the weather is nice in \(location).")
}

greet(person: ["name": "John"])
// Prints "Hello John!"
// Prints "I hope the weather is nice near you."
greet(person: ["name": "Jane", "location": "Cupertino"])
// Prints "Hello Jane!"
// Prints "I hope the weather is nice in Cupertino."



let softWrappedQuotation = """
The White Rabbit put on his spectacles.  "Where shall I begin,\
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on \
till you come to the end; then stop."
"""

print(softWrappedQuotation)

let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"
// "Imagination is more important than knowledge" - Einstein
let dollarSign = "\u{24}"        // $,  Unicode scalar U+0024
let blackHeart = "\u{2665}"      // ♥,  Unicode scalar U+2665
let sparklingHeart = "\u{1F496}" // 💖, Unicode scalar U+1F496

print(wiseWords)
print(dollarSign)
print(blackHeart)
print(sparklingHeart)


var q = ""
var w = String()
// Emppty

if(w.isEmpty){
    print(" Nothing to se here")
}

//nil
var e : String?
//e = "hello"
//e = e! ?? "Hello World"
e = e ?? "Hello World"
if e!.isEmpty {
    print("Nothing to se here")
}else{
    print(e!)
}

var d = "kalpana ";
print(d.characters);
print(d.capitalized);
print(d.uppercased());
print(d.lowercased());
print(d.count);
print("Length : ",d.count)
print("First Index : ",d[d.startIndex])
print("Last Index : ",d[d.endIndex]) //Error











