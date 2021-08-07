//
//  DayDetailViewController.swift
//  daysOfTheWeek
//
//  Created by Stanfield on 8/1/21.
//

import UIKit

///ViewController for our DayDetailView.
class DayDetailViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak var dayNameLabel: UILabel!
    @IBOutlet weak var dayOriginLabel: UILabel!
    
    
    // MARK: - Lifecycle Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        //Should never put functions themselves, just calls to function.
        updateView()
    }
    
    // MARK: - Properties
    //Landing pad for the segue from the ListVC
    ///This is an optional `day` object. day is a stored property. This day object will receive a value if, and only if, the `prepareForSegue` method on our tableViewController is triggered/run.
    var day: Day?
    
    // MARK: - Functions
    func updateView() {
        //Guard handles the optional which defends against app crashes.
        ///Check to make sure that `day` has a value. Create a new constant which is `day` tha tholds the non-optional value of line 30. Removes the optional as well.
        guard let day = day else {return}
        
        ///Set the text properties of our labels using the properties of the day object.
        dayNameLabel.text = day.name
        dayOriginLabel.text = day.origin
    }
    
}//End of Class
