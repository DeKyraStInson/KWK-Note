//
//  KWKFriendsTableTableViewController.swift
//  TablePractice
//
//  Created by Apple on 8/9/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit
struct friends {
    var id : Int
    var title : String
    var text : String
    var image : String
}
class KWKFriendsTableTableViewController: UITableViewController {

    var allFriends = [
        friends(id: 1,
              title: "De'Kyra",
              text: "(123)456-7890 She is a funny, beautiful girl. She loves to write poems.",
              image: "De'Kyra"),
        friends(id: 2,
              title: "Zena",
              text: "(313)Nun-yaaa She is a smart kind girl who loves to play video games.",
              image: "Zena"),
        friends(id: 3,
              title: "Annelese",
              text: "(456)123-7890 She is a pretty and helpful gitl who loves to bake",
              image: "Annalese")
    ]
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return allFriends.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)

        //Configure the cell...
        cell.textLabel?.text = allFriends[indexPath.row].title
        cell.textLabel?.text = allFriends[indexPath.row].text
        //"Section \(indexPath.section) Row \(indexPath.row)"

        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section\(section)"
    }
}
