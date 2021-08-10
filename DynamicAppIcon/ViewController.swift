//
//  ViewController.swift
//  DynamicAppIcon
//
//  Created by unthinkable-mac-0025 on 10/08/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var changeAppIconButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeAppIconButtonPressed(_ sender: UIButton) {
        print("Changing the App Icon")
        if UIApplication.shared.supportsAlternateIcons{
            UIApplication.shared.setAlternateIconName("AppIcon-3") { error in
                if let error = error {
                    print(error.localizedDescription)
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
        
    }
    
}

