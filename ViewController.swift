//
//  ViewController.swift
//  Table view
//
//  Created by Salvatore Monteforte on 07/06/17.
//  Copyright © 2017 Salvatore Monteforte. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var studenteSelezionato: Studente!

    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var labelnome: UILabel!
    
    @IBOutlet weak var labelcognome: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelnome.text = studenteSelezionato.nome
        labelcognome.text = studenteSelezionato.cognome
        image.image = studenteSelezionato.foto


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
