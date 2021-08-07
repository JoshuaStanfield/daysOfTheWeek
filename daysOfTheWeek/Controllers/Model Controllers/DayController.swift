//
//  DayController.swift
//  daysOfTheWeek
//
//  Created by Stanfield on 8/1/21.
//

import Foundation

///Model controller for the Day model.
class DayController {
    
    /**
     Array of Day objects.
     
     `daysOfTheWeek` is a compluted property. A computed property property that gets its value from a function. Inside the scope here, we initialize seven Day objects and return those objects as the value of `daysOfTheWeek`
     */
    
    //Mock data = data that ships with the app.
    
    //Computed Property - A value that is returned from a function. Here the 7 days of the week being computed in the property and then returning an array of them.
    //static means global simply.
   static var daysOfTheWeek: [Day] {
        
        //Create an instance of the model you created in the Day Model.
        let sunday = Day(name: "Sunday", origin: "Added to the roman calendar by Emporer Constantine")
        let monday = Day(name: "Monday", origin: "Added to the roman calendar by Emporer Constantine")
        let tuesday = Day(name: "Tuesday", origin: "Tuesday comes from Tiu, or Tiw, the Norse God of war.")
        let wednesday = Day(name: "Wednesday", origin: "Odin, also known as Woden, the supreme deity for whom the day is named.")
        let thursday = Day(name: "Thursday", origin: "Originiates from Thor, the Norse God of Thunder.")
        let friday = Day(name: "Friday", origin: "Derived from Briga, the wife of odan, representing love and beauty.")
        let saturday = Day(name: "Saturday", origin: "Saturn, the roman god of fun and feasting.")
        
        return [sunday, monday, tuesday, wednesday, thursday, friday, saturday]
    }
    
    
}//End of Class
