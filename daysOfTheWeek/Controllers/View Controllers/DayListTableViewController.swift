//
//  DayListTableViewController.swift
//  daysOfTheWeek
//
//  Created by Stanfield on 8/1/21.
//

import UIKit

///VC for our DayListView.
class DayListTableViewController: UITableViewController {

    // MARK: - Lifecycle functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("View Did load")

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //Use the source of truth count.
        ///We get the count of the daysOfTheWeek on the DayController and return that value as the value for the numberOfRowsInSection. However many objects there are in that array will decide how many rows we have.
        return DayController.daysOfTheWeek.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        ///The identifier given here must match the Reuse Identifier on our storyboard.
        let cell = tableView.dequeueReusableCell(withIdentifier: "dayCell", for: indexPath)

        //indexPath.row takes the row and takes that index number and looks back at the model for the first thing in the array for all the things in the array.
        ///We grab the day object from the daysOfTheWeek array, we use the index of the currently selected cell and get the object at the corresponding index on the source of truth array (daysOfTheWeek).
        let day = DayController.daysOfTheWeek[indexPath.row]
        
        ///Grab the name property of the day object and assign it to the text property of the textLabel on the cell.
        cell.textLabel?.text = day.name

        print("Cell number \(indexPath.row + 1) was created, and the day \(day.name), at index on the SOT was used.")
        
        return cell
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //IIDOO: Identifier, index (which cell was tapped), destination, object to send, object to receive.
        
        ///Make sure we are on the correct segue.
        if segue.identifier == "toDayDetailvc" {
            
            //Optional to unwrap the indexPathForSelectedRow optional.
            ///Get the index of the selected cell.
            if let index = tableView.indexPathForSelectedRow {
                
                //as? is an optional cast - so if the destination is _ then go there, but if not, then exit.
                ///Tell the segue what to expect at the end of the transfer. (Give the segue a blueprint for how to interpret the data at the destination.)
                guard let destinationVC = segue.destination as? DayDetailViewController else {return}
             
                
                ///The object that we are sending (grab the object on the source of truth that corresponds to the selected index)
                let dayToSend = DayController.daysOfTheWeek[index.row]
                //At this point we need to pause and create in the detailVC a place for this to be received.
                
                ///Tell the data where to land (assign to the landing pad).
                destinationVC.day = dayToSend
            }
        }
    }
}//End of Class
