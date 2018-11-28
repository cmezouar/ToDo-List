//
//  ToDo.swift
//  ToDo List
//
//  Created by Chloé Mezouar on 28/11/2018.
//  Copyright © 2018 Chloé Mezouar. All rights reserved.
//

import Foundation
import UIKit

class ToDo {
    var title : String
    var isImportant : Bool
    
    init(title: String, isImportant: Bool){
        self.title = title
        self.isImportant = isImportant
    }
}
