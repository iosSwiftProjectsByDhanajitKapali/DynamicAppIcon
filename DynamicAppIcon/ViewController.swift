//
//  ViewController.swift
//  DynamicAppIcon
//
//  Created by unthinkable-mac-0025 on 10/08/21.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeAppIconButtonPressed1(_ sender: UIButton) {
        print("Changing the App Icon")
        if UIApplication.shared.supportsAlternateIcons{
            //"AppIcon-2" is a reference name for the Icon file name, its defined in info.plist.
            UIApplication.shared.setAlternateIconName("AppIcon-2") { error in
                if let error = error {
                    print(error.localizedDescription)
                    //getting the name of the current alternate icon 
                    print(UIApplication.shared.alternateIconName ?? "Primary")
                } else {
                    print("Successfully Changed the App Icon")
                    print(UIApplication.shared.alternateIconName ?? "Primary")
                }
            }
        }else{
            print("App doesn't support alternate icon")
            print(UIApplication.shared.alternateIconName ?? "Primary")
        }
        
    } //:changeAppIconButtonPressed1
    
    @IBAction func changeAppIconButtonPressed2(_ sender: UIButton) {
        print("Changing the App Icon")
        if UIApplication.shared.supportsAlternateIcons{
            //"AppIcon-2" is a reference name for the Icon file name, its defined in info.plist.
            UIApplication.shared.setAlternateIconName("AppIcon-3") { error in
                if let error = error {
                    print(error.localizedDescription)
                    //getting the name of the current alternate icon
                    print(UIApplication.shared.alternateIconName ?? "Primary")
                } else {
                    print("Successfully Changed the App Icon")
                    print(UIApplication.shared.alternateIconName ?? "Primary")
                }
            }
        }else{
            print("App doesn't support alternate icon")
            print(UIApplication.shared.alternateIconName ?? "Primary")
        }
        
    } //:changeAppIconButtonPressed2
    
}

