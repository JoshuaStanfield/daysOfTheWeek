//
//  Day.swift
//  daysOfTheWeek
//
//  Created by Stanfield on 8/1/21.
//

import Foundation

//Class names are capitalized.
class Day {
    
    // MARK: - Properties
    let name: String
    let origin: String
    
    // MARK: - Initializer
    //No initializers? The properties need a way to get their values. That's all that an initializer is. The initializer is the door from other places to access the above properties.
    init(name: String, origin: String) {
        self.name = name
        self.origin = origin
        //self - type it and it will show you what it refers to. In this case, the class.
    }
    
}//End of Class
