import UIKit


enum Cars{
    case Ferrari,Maserati
}


extension Cars{
//    var getInfo {get{"is it work?"}}
    
    func getInfo( )->String {
        return "is it work?"
    }
}


print(Cars.Ferrari.getInfo())
