//
//  TableViewController.swift
//  Table view
//
//  Created by Salvatore Monteforte on 07/06/17.
//  Copyright © 2017 Salvatore Monteforte. All rights reserved.
//

import UIKit

class Studente {
    let nome : String
    let cognome : String
    let foto : UIImage
    
    init(nome: String, cognome: String, foto: UIImage) {
        self.nome = nome
        self.cognome = cognome
        self.foto = foto
    }
}

var fnames : [String] = ["Salvatore", "Giovanni", "Armando", "Roberto", "Fabio", "Francesca"]
var lnames : [String] = ["Monteforte", "Fioretti", "Barbato", "de Rosa", "Davide", "Cascella"]
var photo : [UIImage] = [#imageLiteral(resourceName: "salvatore"), #imageLiteral(resourceName: "giovanni"), #imageLiteral(resourceName: "armando"), #imageLiteral(resourceName: "roberto"), #imageLiteral(resourceName: "fabio"), #imageLiteral(resourceName: "francesca")]

var identity : [Studente] = []

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()

        for index in 0..<fnames.count {
            let elemento: Studente = Studente(nome: fnames [index] , cognome : lnames[index], foto: photo[index])
            //identity [index] = elemento
            identity.append(elemento)
        }
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 6
    }
        
    
    let fnames : [String] = ["Salvatore", "Giovanni", "Armando", "Roberto", "Fabio", "Francesca"]
    let lnames : [String] = ["Monteforte", "Fioretti", "Barbato", "de Rosa", "Davide", "Cascella"]
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cella", for: indexPath)

        // Configure the cell...

        
        cell.textLabel!.text = "\(identity[indexPath.row].nome)"
        cell.detailTextLabel!.text = "\(identity[indexPath.row].cognome)"
        cell.imageView?.image = identity[indexPath.row].foto
        
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let destinazione = segue.destination as! ViewController
        destinazione.studenteSelezionato = identity [tableView.indexPathForSelectedRow!.row]
    }


}
