import UIKit

//Variables
//
//var name:String = "semih" //string
//var surname:String? // nil value with typeSafety
//var middleName:Any? // nil value with dynamic
//var age:Int = 22 //integer
//var isStudent:Bool = true //bool
//let school:String = "medipol" // constant variable
//var typeChange:String = "12" // create to type change with if let bloc

//interpolation with \()
//print("my name is \(name)")

//type change and also you can check nil variables with if let temp
//if let temp=Int(typeChange){
//    print("number is \(temp)")
//}


//=========================================================================
//STANDART STRUCTURES

/*
 tuple is basic version of class and struct.
 it keeps different type values inside.
 you can think that it's mutli variable.
 tuple is special structure for only swift language.
 */
//var tupleExa:(Bool,(String,Int))=(true,("semih",22))


//var randomNumber:Int = Int.random(in: 0...10)// random number generate

//print(randomNumber % 2 == 0 ? "even number \(randomNumber)" : "odd number \(randomNumber)") // lambda if else bloc and compretive operators

//switch case usage with certain interval
//switch randomNumber{
//case 0...5:
//    print("number between zero and five")
//case 6...10:
//    print("number bigger than 5")
//default:
//    print("unknown")
//
//}

// for loop with range
//for k in 0...10{
//    print(k)
//}

/*
    for loop with generate list.
    break and continue
 */
//
//var exaList:[Int] = Array(0...5)
//
//for k in exaList{
//    if k == 5 {
//        break
//    }else if k==2 {
//        print("continue has used \(k)")
//        continue
//    }
//    print(k)
//}

//// while usage
//var index:Int=5
//
//while index > 0{
//    print(index)
//    index -= 1
//}

//for loop with stride
//
//for k in stride(from: 0, to: 5, by: 1){
//    print(k)
//}

//print("year info \(Calendar.current.component(.month, from: Date()))") // date info usage

//=========================================================================
//COLLECTIONS

/*
 the difference between set and list:
 set colelctions don't keep same values many times but list can keep.
*/
//var normalList:[String] = ["one","two","three"] //classic list
//var emptyList:[Any]=[] //empty list
//var listByRange:[Int] = Array(0...2) // list with arrange
//var setCollection:Set = ["ankara","izmir","ankara"] // ankara will seem only once because of set collection.
//emptyList.append(100) // add new item to list
//emptyList.insert(200, at: 0) // add new item with certain index
//emptyList.count // lenght of list
//emptyList.isEmpty // check if it's empty
//emptyList.remove(at: 0) //remove according to certain index
//var newList:[String] = listByRange.map({String($0)}) // as you known from flutter, map usage.

//dictionary
//var manuelDict:[String:Int] = ["semih":22,"mustafa":51]
//var dictByTwoList:[String:Int] = Dictionary(uniqueKeysWithValues: zip(normalList, listByRange))
//var emptyDict=[String:Any]() //empty Dict
//
////loop with dictionary
//for (k,v) in manuelDict{
//    print("key \(k) value \(v)")
//}

//
//manuelDict.updateValue(25, forKey: "semih") // value update with key
//manuelDict.removeValue(forKey: "semih")// value delete with key
//print(manuelDict)


//=========================================================================
// OOP

/*
classic class usage.
it has 2 variable and constructor
and basic function
static variable
self is refer to current instance within its class.
 */
//
//class MathClass{
//    static var message:String = "trial broadband"
//    var numberOne:Int
//    var numberTwo:Int
//
//    init(numberOne:Int,numberTwo:Int) {
//        self.numberOne=numberOne
//        self.numberTwo=numberTwo
//    }
//    func total(){
//        print(self.numberOne+self.numberTwo)
//    }
//}
//
//MathClass(numberOne: 10, numberTwo: 20).total()

//composition is calling a class from class. I mean, classic model structues from API

/*
 enum usage
 simple usage is Cars.
 there are 2 alternative usage of case tag.
 if you wanna reach all enum values like list, you gotta add  value type and CaseIterable like CustomColors.
// */
//enum CustomColors:String,CaseIterable{ // iterable usage
//    case black,red,white
//}
//enum Cars{ //base usage
//    case Ferrari
//    case Lamborghini
//    case Maserati
//}
//enum Countries:String{ //raw values. in swift,developer can add data to each enum case. BUT every raw value must be different from other ones.
//    case Turkey="ankara"
//    case Usa="washington"
//    case Uk="london"
//}

//print(Countries.Turkey.rawValue) // you can reach raw value like this.


//functions
//
//func sayHello(){      // base usage
//    print("hellooo")
//}
//
//
//func total(numberOne:Int,numberTwo:Int)->Int{  // get 2 parameter and return total of them.
//    return numberOne+numberTwo
//}
//
//func sayName(name:String?=nil){    // nullable parameter
//    if name != nil{
//        print(name)
//    }else{
//        print("nil")
//    }
//}
//sayName()

//structure

//getter setter usage

// inheritance

//polymorphsim

//extension

//protocol (abstract)

//async programing

//closure

//guard

//do try catch

//throw

//thread dispatch
