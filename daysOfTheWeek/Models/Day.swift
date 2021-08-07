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
    ///Property of the Day object that will hold a String (the name of the day)
    let name: String
    ///Property of the Day object that will hold a String (the origin description of the day)
    let origin: String
    
    // MARK: - Initializer
    /*
     Initalizes a Day object.
     
     - Parameters:
        - name: String value for the day's *name* property.
        - origin: String value for the day's *origin* property.
     
     This *memberwise initializer* will set the values of the name and origin perameters to the name and origin property's of a Day object.
     */
    //No initializers? The properties need a way to get their values. That's all that an initializer is. The initializer is the door from other places to access the above properties.
    init(name: String, origin: String) {
        self.name = name
        self.origin = origin
        //self - type it and it will show you what it refers to. In this case, the class.
    }
    
}//End of Class
