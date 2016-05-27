//
//  ViewController.swift
//  devapp-showcase
//
//  Created by Bartosz Odrzywołek on 25/05/16.
//  Copyright © 2016 Bartosz. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit
import Firebase

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func fbBtnPressed(sender: UIButton!) {
        let facebookLogin = FBSDKLoginManager()
        
//        let ref = Farebase(url: "https://devapp-showcase.firebaseio.com/")
        facebookLogin.logInWithReadPermissions(["email"]) { (facebookResult: FBSDKLoginManagerLoginResult!, facebookError: NSError!) -> Void in
            
            if facebookError != nil {
                print("Facebook login failed. Error: \(facebookError)")
            } else if facebookResult.isCancelled {
                print("Facebook login was cancelled")
            } else {
                let accessToken = FBSDKAccessToken.currentAccessToken().tokenString
                print("Successfuly logged in with Facebook. Access token: \(accessToken)")
                
//                ref.authWithOAuthProvider("facebook", token: accessToken, withCompletionBlock: { error, authData in
                
//            })
                
            }
        
        }
    }

}



