//
//  DataService.swift
//  devapp-showcase
//
//  Created by Bartosz Odrzywołek on 27/05/16.
//  Copyright © 2016 Bartosz. All rights reserved.
//

import Foundation
import Firebase

class DataService {
    
    static let ds = DataService()
    
    private init() {
        
    }
    
    private var _REF_BASE = Firebase(url: "https://devapp-showcase.firebaseio.com")
    
    var REF: Firebase {
        return _REF_BASE
    }
    
    
}
    
