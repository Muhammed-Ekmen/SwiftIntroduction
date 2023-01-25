import UIKit

//Variables

var firstName:String = "semih" //string
var surname:String? // nil value with typeSafety
var middleName:Any? // nil value with dynamic
var age:Int = 22 //integer
var isStudent:Bool = true //bool
let school:String = "medipol" // constant variable
var typeChange:String = "12" // create to type change with if let bloc
var modCalculate = 10

modCalculate.truncatingremainder(dividingby:2) // take mod oparations by alternative usage

//interpolation with \()
print("my name is \(firstName)")

//type change and also you can check nil variables with if let temp
if let temp=Int(typeChange){
    print("number is \(temp)")
}


//=========================================================================
//STANDART STRUCTURES

/*
 tuple is basic version of class and struct.
 it keeps different type values inside.
 you can think that it's mutli variable.
 tuple is special structure for only swift language.
 */
var tupleExa:(Bool,(String,Int))=(true,("semih",22))
var randomNumber:Int = Int.random(in: 0...10)// random number generate
print(randomNumber % 2 == 0 ? "even number \(randomNumber)" : "odd number \(randomNumber)") // lambda if else bloc and compretive operators

//switch case usage with certain interval
switch randomNumber{
case 0...5:
    print("number between zero and five")
case 6...10:
    print("number bigger than 5")
default:
    print("unknown")

}

 //for loop with range
for k in 0...10{
    print(k)
}

/*
    for loop with generate list.
    break and continue
 */

var exaList:[Int] = Array(0...5)

for k in exaList{
    if k == 5 {
        break
    }else if k==2 {
        print("continue has used \(k)")
        continue
    }
    print(k)
}

// while usage
var index:Int=5

while index > 0{
    print(index)
    index -= 1
}

//for loop with stride

for k in stride(from: 0, to: 5, by: 1){
    print(k)
}

print("year info \(Calendar.current.component(.month, from: Date()))") // date info usage

//=========================================================================
//COLLECTIONS

/*
 the difference between set and list:
 set colelctions don't keep same values many times but list can keep.
*/
var normalList:[String] = ["one","two","three"] //classic list
var emptyList:[Any]=[] //empty list
var listByRange:[Int] = Array(0...2) // list with arrange
var setCollection:Set = ["ankara","izmir","ankara"] // ankara will seem only once because of set collection.
emptyList.append(100) // add new item to list
emptyList.insert(200, at: 0) // add new item with certain index
emptyList.count // lenght of list
emptyList.isEmpty // check if it's empty
emptyList.remove(at: 0) //remove according to certain index
var newList:[String] = listByRange.map({String($0)}) // as you known from flutter, map usage.

//dictionary
var manuelDict:[String:Int] = ["semih":22,"mustafa":51]
var dictByTwoList:[String:Int] = Dictionary(uniqueKeysWithValues: zip(normalList, listByRange))
var emptyDict=[String:Any]() //empty Dict

//loop with dictionary
for (k,v) in manuelDict{
    print("key \(k) value \(v)")
}


manuelDict.updateValue(25, forKey: "semih") // value update with key
manuelDict.removeValue(forKey: "semih")// value delete with key
print(manuelDict)


//=========================================================================
// OOP

/*
classic class usage.
it has 2 variable and constructor
and basic function
static variable
self is refer to current instance within its class.
 */

class MathClass{
    static var message:String = "trial broadband"
    var numberOne:Int
    var numberTwo:Int

    init(numberOne:Int,numberTwo:Int) {
        self.numberOne=numberOne
        self.numberTwo=numberTwo
    }
    func total(){
        print(self.numberOne+self.numberTwo)
    }
}

MathClass(numberOne: 10, numberTwo: 20).total()

//composition is calling a class from class. I mean, classic model structues from API

/*
 enum usage
 simple usage is Cars.
 there are 2 alternative usage of case tag.
 if you wanna reach all enum values like list, you gotta add  value type and CaseIterable like CustomColors.
// */
enum CustomColors:String,CaseIterable{ // iterable usage
    case black,red,white
}
enum Cars{ //base usage
    case Ferrari
    case Lamborghini
    case Maserati
}
enum Countries:String{ //raw values. in swift,developer can add data to each enum case. BUT every raw value must be different from other ones.
    case Turkey="ankara"
    case Usa="washington"
    case Uk="london"
}

print(Countries.Turkey.rawValue) // you can reach raw value like this.


//functions
/*
mutatin functions. if you use the struct instead of the class, struct functions shoudl be mutating functions. it isn't hard.
you shoudl only add mutatuing begin of func.
*/
func sayHello(){      // base usage
    print("hellooo")
}


func total(numberOne:Int,numberTwo:Int)->Int{  // get 2 parameter and return total of them.
    return numberOne+numberTwo
}

func sayName(name:String?=nil){    // nullable parameter
    if name != nil{
        print(name ?? "none")
    }else{
        print("nil")
    }
}
sayName()


func greeting(name:String?=nil){   // double question mark usage ?? . its meaning same as Dart.
    print(name ?? "hello")
}

greeting()

/*
 Struct
 it is similar to classes but there are features itself.
 -structs don't have inheritance.
 - structs are value type which keep values like variables but classes are reference type and they keep values with referance.
 */



var getterExample:Any {get {return "getter usage"}} //getter setter usage

print("check \(getterExample)")



// inheritance

class Person{
    var name:String
    var age:Int

    init(name:String,age:Int) {
        self.name=name
        self.age=age
    }

    func intro()  {
        print("I am \(name) and \(age) years old.")
    }
}

class Student:Person{
    var studentId:Int

    init(name:String,age:Int,studentId:Int) {
        self.studentId = studentId
        super.init(name:name,age:age)
    }

    override func intro(){
        super.intro()
    }
}

Student(name:"semih",age:22,studentId: 123).intro()


//Polymorphsim

/*
 extension
 it extends to alreay exist structres and they can have new features.
 generally, you should keep extensions outer file.
 let's see the default String class and extension
 */

extension String{
    func getTrial()->String{
        return "\(name) it's working..." // name property is string value comes from assigned.
    }
}

var name:String = "muhammed"
print(name.getTrial())



/*
protocol (abstract)
actually protocol is like an abstract class.
you can add more than one protocol to any class.
*/
protocol Animal{
    var genus : String { get set }
    var isMammal : Bool { get set }
    func getInfo()-> String
}

class Lion:Animal{
     var genus:String
     var isMammal:Bool

    init(genus:String,isMammal:Bool) {
        self.genus=genus
        self.isMammal=isMammal
    }

     func getInfo() -> String {
        return "the animal \(self.genus) mammal statue \(isMammal)"
    }
}

print(Lion(genus: "cat",isMammal: true).getInfo())

/*
closure
it's kind of lambda function. but in swift language,we gonna create own lambda function.
simple definition: unnamed and disposable functions
*/

var closureExa = {                 // closure which not take parameter
    print("closure has used")
}
closureExa()

var closureWithParameter = {        //with parameters
    (numberOne:Int,numberTwo:Int) in
        print(numberOne+numberTwo)
}
closureWithParameter(20,50)




/*
GUARD
 it is kind of optional binding (if let).
 fi you remember the if let usage, we have learned that we can use it for nil and type changing.Also guard can.
 Guard only focus negative circumstances. at the below, there are a few example for if let and guard usage.
 Guard should use within any fucntion and it must throw or retunr something.
 */

var brand:String?  // nil value for guard examples

if let temp=brand{               /// null value checking.
    print("brand \(brand)")
}else{
    print("nil value ")
}

func convert(){                     //Guard usage
    guard brand == nil else{
        print("guard has catched the nil value")
        return
    }
    print("brand \(brand)")
}

convert()



/*
 do try catch and throw
 classic error catchin and we gonna show you on the zeroDivison error from python.
 in dart lanuage we only use try catch but in swift there are 2 alternative.These are do/try or only try?
*/

enum CustomErrors:Error{      //custom error with enum and inheritance
    case SemihError
}

func divider(numOne:Int,numTwo:Int)throws {   // function. if you wants to cahtch error, your function must have throw tag.
    if numTwo == 0 {
        throw CustomErrors.SemihError
    }
    print(numOne/numTwo)
}


do {                                             // we can catch error do/catch blocs. but there is an alternative. try?
    try divider(numOne: 10, numTwo: 0)
}catch {
    print("there is an error \(error)")
}


var result = try? divider(numOne: 10, numTwo: 0)    // do/catch alternative
if result == nil {
    print("nillll value")
}else{
    print(result ?? "none")
}

/*
 thread and dispatch (async programming)
 
 Thread: simple definiton is multi tasking structures. there are previority levels. These are:

 -userinteractive (the highest)
 -userInitiated
 -default(main)
 -utility
 -background
 -unspecified (the lowest)
 
 Thread are similar to LIFE CYCLE and  apart from these, there is main thread. programme always start main thread.
*/
let queueOne=DispatchQueue(label: "queueOne",qos: DispatchQoS.background)
let queueTwo=DispatchQueue(label: "queueTwo",qos: DispatchQoS.utility)

queueOne.async {                       //theread: background and async
    for k in 0...3{
        print("queue one thread: backgorund")
    }
}

queueTwo.async {                        //theread: userINtereaction and async
    for k in 0...3{
        print("queue two thread: userInteractive")
    }
}


for k in 0...3{              //main thread that is default
    print("main thread" )
}


func delayedExa(){                                             // Future.delayed similar
    var intervalSecond:DispatchTimeInterval = .seconds(3)
    DispatchQueue(label: "delay").asyncAfter(deadline: .now()+intervalSecond){
        print("RUN")
    }
}

delayedExa()


/*
 private usage
 access levels: private and filePrivate.
 private same as _ underscore from dart.
 filePrivate is same. the only difference is filePriveate priavete for only current file.
*/

struct BaseDatas{
    private static var password:Int=123
    static var username:String = "user"
}

print(BaseDatas.password) // it cannot access password variable.

