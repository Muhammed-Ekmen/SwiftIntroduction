import UIKit

/*

RollingDiceApp{
setBackground
motionEnded
DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+2)
}


GuessWhatNumberGame{
UIAlertController
}


SimpleLoginScreen{
Delegate Usage
ShakeAnimation
ErrorHandling
Extention Usage
}


SimpleTextShareApp{
Switch
ProgressBar with TextField
Share Property
Indicator
}


OsWarsApp{
Slider
perform with afterDelay
Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block:)
}


SuperHeroApp{
ViewController
CollectionView
Segue
NavigatorController
Init Screen
Cell
}
*/
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
