//
//  DataService.swift
//  devapp-showcase
//
//  Created by Bartosz Odrzywołek on 27/05/16.
//  Copyright © 2016 Bartosz. All rights reserved.
//

import Foundation
import Firebase


let _URL_BASE = "https://devapp-showcase.firebaseio.com"

class DataService {
    
    static let ds = DataService()
    
    private init() {
        
    }
    
    private var _REF_BASE = Firebase(url: "\(_URL_BASE)")
    private var _REF_POSTS = Firebase(url: "\(_URL_BASE)/posts")
    private var _REF_USERS = Firebase(url: "\(_URL_BASE)/users")
    
    var REF: Firebase {
        return _REF_BASE
    }
    
    var REF_POSTS: Firebase {
        return _REF_POSTS
    }
    
    var REF_USERS: Firebase {
        return _REF_USERS
    }
    
    var REF_USER_CURRENT: Firebase {
        let uid = NSUserDefaults.standardUserDefaults().valueForKey(KEY_UID) as! String
        let user = Firebase(url: "\(_URL_BASE)").childByAppendingPath("users").childByAppendingPath(uid)
        return user!
    }
    
    func createFirebaseUser(uid: String, user: Dictionary<String, String>) {
        REF_USERS.childByAppendingPath(uid).setValue(user)
    }
    
}
    
