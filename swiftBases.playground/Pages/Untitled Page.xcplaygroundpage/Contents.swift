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

//for loop with different usage
var message =  "Swift"

for k in 1...message.count {
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

// While and Repeat Usage
var numberOne:Int = 0

repeat {
  print(numberOne)
  numberOne += 1
} while numberOne < 10 

print("Exit the Loop")



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

// Examine Map structures in detail.

let numbers:[Int] = [1,2,3,4]    // we have a list for map usage.

var doubleNumbers:[Int] = numbers.map {            // we have created doubleNumber list from number and map. use 2 bracket and assing name of every list item, we have said that number
    number in
       return number*2  
               }

print(doubleNumbers)     // check doubleNumbers list


func getDouble(_ number:Int)->Int{          // other usage is send only function into map.
  return number * 2
}

var exaList:[Int] = numbers.map(getDouble)      // we have just sent the getDouble function.

print("exaList \(exaList)")


var movies:[String:Int] = [            // we have created a dictionary for use with map.
  "Transformers":2007,
  "Iron Man":2008,
  "Avengers":2012
]

var movieNames:[String] = movies.map {
  (key,value) in                                      //MOst of things are similar to List(Arrays :))
  return key.uppercased()
}

print("movie names \(movieNames)")


//CompactMap Usage
let exaList:[Int] = [1,2,3,4,5] 

var evenNumbers:[Int] = exaList.compactMap{               // Compact map can use for filtering
  number in 
  if number % 2 == 0{
    return number
  }else{
    return nil
  }
}

print(evenNumbers)

//ForEach and recude usage
let exaList:[Int] = [1,2,3,4,5]
var total:Int = 0
exaList.forEach {total += $0}       //ForEach you must remember from other languages.

print(total)


let numbers = [1, 2, 3, 4]
let numberSum = numbers.reduce(0, { x, y in       //reduce is alternative of forEach. The difference is you must enter first init value
    return x + y                                  // is 0.
})
print(numberSum)


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
Computed properties with class. we have an class and there are 2 variable. These are number and doubleNumber. what I want is when the number variable
change, doubleNumber will change according to number variable. That processing name is computed property. These 2 variable connected each other.
*/
struct ComputedExa{
  var diameter:Int {
    get{
      // it runs when the diameter calls.
      return halfDiameter*2
    }
    set{
      // it runs when the diameter value has changed.
      halfDiameter = newValue / 2
    }
  }
  var halfDiameter:Int = 10
}


var example = ComputedExa()
example.diameter = 50
print(example.diameter)
print(example.halfDiameter)

/*
PROTOCOL USAGE

weh vae alredy known protocol but what I want show you is optional parameter. You know, we have learned that when we have inheritanced the protocol,
we gotta use all theri supper class parameters. Now, we will see the optioanl usage so we don't have to use all of them.
*/
 
@objc protocol Person{                //we gotta use the @objc because of swift. it still conntected objective-c
  var name:String {get set}
  @objc optional var age:Int {get set}       // we should use again objc tag and add the optinal tag.
}

class Students:Person{             /// From here on,we don't have to use age parameter.
  var name:String = "Semih"
}

print(Students().name)

/*
Protocol and Delegate usage. mind is very simple. connect the strucytures. I Have written onthe Dog.
*/ 
protocol Duty{                             // that is our abstarct class. there is an command function.
  func command(command:String)
}

class Doberman:Duty{                        /// Doberman class and it has inheritanced from Duty
  func command(command:String){
    print("Doberman// GET READY TO \(command)")
  }
}

class Rottweiller:Duty{                               // similar to Doberman
  func command(command:String){
    print("Rottweiller// GET READY TO \(command)")
  }
}

class Doctor{                                // that is Center class that connect the Doberman and Rottbeiller. It has 2 delegate.
  var dobermanDelegate:Duty?
  var rottweillerDelegate:Duty?
}

var doctor:Doctor = Doctor()    // create a base instance.
var rott = Rottweiller()       // created a Rott instance
var doberman = Doberman()   // created doberman instance.
doctor.dobermanDelegate = doberman        // we have delegated navy delegate to base_one.,
doctor.rottweillerDelegate = rott  // similar to above
doctor.dobermanDelegate?.command(command:"Stand Up")   // we can use commmand function on the base_one instance. I didnot understand to much, in this reason 
doctor.rottweillerDelegate?.command(command: "Catch it")  // we should revise and check the swift 



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

/*
ADVANCED ENUM USAGE

- we can use enum for class for type safety.
- enums can use protocol.
*/
protocol Togglable {
    mutating func toggle()
}

enum OnOffSwitch: Togglable {
    case off, on
    mutating func toggle() {
        switch self {
        case .off:
            self = .on
        case .on:
            self = .off
        }
    }
}


var lightSwitch = OnOffSwitch.off
print(lightSwitch)   // swift is off
lightSwitch.toggle()
print(lightSwitch)  // now it is on.

// lightSwitch is now equal to .on

//IN ADDITION, enums can keeps some properties like model class. Look at the below.
enum Student{
  case preSchool(name:String,age:Int)
}

var student_one = Student.preSchool(name:"Semih",age:22)
print(student_one)

//NOTE: if you remember we were creating extention for enum class on Flutter. But here, it is not reqired. enums can keep function. I mean, you don't have to
//create extention.
enum CallTools:String{
  case car,home

  func call()->String{
    return "The image is \(self.rawValue)"
  }
}

// NESTED Enum Usage

enum CallImages{
  enum Png{
    case google,flutter
  }
  enum Jpg{
    case apple,facebook
  }
}

print(CallImages.Png.google)

// You can change the enum rawValue after that. but you shoudl check the nil situation. In this reason, please use double question mark and give default value.
enum Cars:String{
  case ferrari,lamborghini,maserati
}

var car_one:Cars = Cars.init(rawValue:"lamborghini") ?? Cars.maserati
print(car_one.rawValue)

/*
we can assing variable in the enum. when you fill the that value and wants to use it, you shoudl an checking. 
*/
enum DataWareHouse{
  case exaNumber(number:Int)
}

var numberOne = DataWareHouse.exaNumber(number:10)

print(numberOne)   /// UNCheck and use it. Output is like "exaNumber(number:10)

if case let .exaNumber(value) = numberOne {
  print("The number is \(value)")          // its output is just "the number is 10"
}


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

/*
Convenience init usage. Actually that is default object creater, think about the any class and its 2 required parameters with init.
if you create an object and do not enter related values, you will encounter the error about the required parameters.(parameters are not nullable).
in here, we can use convenience init. it avaible only class not include the structs. So, we can set up default value. Just look at the below codes.
*/

class ConvenienceInitExa{
  var name:String
  var age:Int

  init(name:String,age:Int){
    self.name = name
    self.age = age
  }
  convenience init(){                     // That is our default object.
    self.init(name:"Unknown",age:00)
  }
  func getInfo(){
    print("Name : \(self.name) Age: \(self.age)")
  }
}


var userOne:ConvenienceInitExa = ConvenienceInitExa()
userOne.getInfo()    // when  you calls, you will see name unknown and age is double zero.


/*
property observers provide intervention when variable assigned before and after. it would be very usefull. we can do thanks to 2 functions.
These are didSet and willSet. as you can see, I think you can understand which one what are doing but I guess didSet is more usefull. Becasuse
it include old and newvalue.
*/



struct PropertyObserverExa{
  var number:Int {
    willSet(newValue){
      print("new Value is \(newValue)")
    }
    didSet(oldValue){
      print("old value is \(oldValue) new value \(number)")   // you can reach previous value with oldValue and newValue is alredy current number.
    }
  }

  init(number:Int){
    self.number = number
  }
}

var exa:PropertyObserverExa = PropertyObserverExa(number:12)
exa.number = 24


/*
FINAL and class 
think about an class. we supposed that class include 2 variable static and class tag. And what we want is use inheritance and encounter static value 
override problem.
Summary is if we want the static value inheritance, we should use class tag instead of the static.
*/

// What is the difference between. override.

class Trial{
  static var name:String = "Semih"    // that is static variable example
  class func call(){                  // we have seen new but that is kind of static usage. we can reach call function like static.
    print("is it work?")
  }
}

// but we want inherinca, we cannot inherit name variable because of static tag.
class TrialTwo:Trial{
  //override var name:String = "Muhammed"        // WE CANNOT USE
  override class func call(){                 
    print("override is it work?")
  }
}

print("name is \(Trial.name)")
Trial.call()
TrialTwo.call()


/*
DEINIT USAGE

what is that? basically it's similar to dispose method. when any object has deleted, that function runs. But you can ask the which situatioins does 
object remove? 2 type. These are assing nil value and outside the scope from stream. In this example, we have assinged the nil value. So, object has removed.
*/

class DeInitExa{
  init(){
    print("An Object has created")
  }

  deinit{
    print("The Object has deleted")
  }
}

var exaOne:DeInitExa? = DeInitExa()    // when we create the object, init function has run.
exaOne = nil                           //as we has writted at the above, nil value assigned and deinit function has run.


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
 Guard should use within any fucntion and it must throw or return something.
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
 ACCESS LEVES
-private
-filePrivate
-internal(default)
-public 
-open
NOTE: we can use underscore with private values. That is not obligation but that is developer terminology.
Most of time, private and filePrivate using. Internal is already default. Public and open are the most accessbility levels. They can use when working
on library.
 private same as _ underscore from dart.
structs can usew with protocols.
 filePrivate is same. the only difference is filePriveate priavete for only current file.
*/

struct BaseDatas{
    private static var password:Int=123
    static var username:String = "user"
}

print(BaseDatas.password) // it cannot access password variable.


/*
Generic Usage

Generic is creating general structures for easy usage. So, developer can revise code lines more easy. Let's look at the below example. We have an
function that take 2 parameter and change them. it can be integer or double. first step, we have craeted 2 function integer and obuel but when we wanted
go on only one function, we have need to use generic types. on the Flutter, T usage :)
*/


func swapInteger(numberOne: inout Int,numberTwo: inout Int){      //that function takes 2 parameters and change them, you can see the inout tag,
  (numberOne,numberTwo) = (numberTwo,numberOne)                   //this tag provide us change the datas, and when we use the inout parameter,we should use &
}


var numOne:Int = 10                    // we have 4 variables that half integer half double.
var numTwo:Int = 20
var numThree:Double = 2.41
var numFour:Double = 7.26

print("numberOne is \(numOne) numberTwo is \(numTwo)")    // checking first values.
swapInteger(numberOne:&numOne,numberTwo:&numTwo)           // call method and change them
print("numberOne is \(numOne) numberTwo is \(numTwo)")      // check did they change? Yes, they did but when we wants to use numThree and numFour, we 
                                                            // will encounter the a problem. The problem comes because of double type. Function has written for integer types.  

func genericSwap<T>(valueOne: inout T,valueTwo: inout T){   // that is generic usage. Whatever type comes, there is no matter, it will work.
  (valueOne,valueTwo) = (valueTwo,valueOne)
}

//at the below, we have used genericSwap function for both integer and double variables.
print("first value \(numThree) second value \(numFour)")             
genericSwap(valueOne:&numThree,valueTwo:&numFour)
print("first value \(numThree) second value \(numFour)")
print("numberOne is \(numOne) numberTwo is \(numTwo)")
genericSwap(valueOne:&numOne,valueTwo:&numTwo)
print("numberOne is \(numOne) numberTwo is \(numTwo)")


//Continue Generic Usage for Type Safety. 

func swapValues<T : Numeric> (valueOne: inout T,valueTwo: inout T){           //we have assinged type to T. So, function type only will accept the interger,double,float etc.
  (valueOne,valueTwo) = (valueTwo,valueOne)
}

var numOne:Int = 10
var numTwo:Int = 20
var messageOne:String = "Open"
var messageTwo:String = "Door"

swapValues(valueOne:&numOne,valueTwo:&numTwo) 
swapValues(valueOne:&messageOne,valueTwo:&messageTwo)  // when you wants the use string values with funtion, you will encounter the error.



//Generic Type Usage With Equetable

func isEquel<T:Equatable>(val_one: T,val_two: T)->Bool{
        
  print(type(of: T.self))  // we can learn what is the type like that. Also, we can check certain type processing with if else block.For example, if tpye is string bla bla bla...
    
  if val_one == val_two{
    return true
  }else{
    return false
  }
}

var result:Bool = isEquel(val_one:21,val_two:20)
print(result)

// Generic type usage with Comparable

  func findBiggerOne<T:Comparable>(val_one:T,val_two:T)->T{
  if val_one > val_two {
    return val_one
  }else{
    return val_two
  }
}

var numberOne:Int = 10
var numberTwo:Int = 20
var biggerOne:Int = findBiggerOne(val_one:10,val_two:20)
print(biggerOne)

/*
Generic Protocols. That is amazing. think about it, when we new on flutter, we have learned the REST api usage. at here, I was tring to create one abstarct clas for all
serices. In the swift language, we will do it. There is an protocl class and we will wait type.
*/

protocol Person{
  var name:String {get set}
  associatedtype type    // that is any type. So, we can use it other parts
  var age:type {get set}   // for example,we have used expecting type.
}

class Teachers:Person{
  typealias type = Int      // we have assinged the type.
  var name:String = "Semih"
  var age = 22                // When we wants to assing double value, it will throw error.
}




/*
XCode First projects:

productName=> you should start with capital letter unlike flutter. I mean, camelCase
team=> you can select null or your account.
Interface=> now, you should select the storyboard instead of swiftUI



*/
