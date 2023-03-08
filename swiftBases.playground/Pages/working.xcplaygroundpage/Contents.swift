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

PhoneContactApp{
SplitViewController
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



/*
phone Contact app tutortila temporary notes;

SPLITVIEWCONTROLLER

NOTE: on the old xcode versions, there is a master-detaild app choice in the menu. But apple have removed it. So, you shoudl create nomral singleViewApp
and create splitController from library.

[DESCRIPTION]
well, one more view. TabloView,collection and now, we gonna see the SplitViewController. this view similar to iphone's phone menu. in this reason
our example app will be Iphone contact app.

[USAGE]

    - firstly, create splitViewController from library. In default, splitController gives us 2 screen. These are UITableView(calls like masterView) and
    UIViewController(calls like detail screeen). But we can change them and we will already change it and create custom controller file.

    - for the master(UITableViewController), create new cocoaTouch file which it's subclass. we have created file nad its name was ContactViewController.
    After that do not forget the connect to master Screen on storyboard.
    
    - in same way, we have created cocoaTouchClass for detail screen and connected on the storyboard.
    
    - finally,we gotta setting up splitViewController in the sceneDelegate.swift file. So, go to sceneDelegate.swift file and find out the plain scene
    function. in this funtion (under the :guard let _ = (scene as? UIWindowScene) else{return}) write the these code lines which at the below:

    guard let splitViewController = window?.rootViewController as? UISplitViewController,
    let leftNavigationController = splitViewController.viewController.first as? UINavigationController,
    let masterViewController = leftNavigationController.viewController.first as? ContactViewController,  // at the last class refer to your master class.
    let detailViewController = splitViewController.viewControllers.last as? ContactDetailViewController else{fatalError()}//in same way, refer to your detail class.
    
    - now, we can set up the our viewControllers or view customization. but before the start, don't forget the table view cell reuseIdentifier code.
    In addionally, you can give reuseIdentifier from viewDidLoad function. in the this function:
    
    tableView.register(UITableViewCell.self,forCellReuseIdentifier: "any cell reuseIdentifier") // tableView object comes from inherited class that UITableViewController
   
    - if you want to change the cell, text without custom cell class, go to the tableView function which include the cellForRowAt. you have already
    reach the cell with guard let. call the "cell.textlabel?.text = "new Text" "


*/
