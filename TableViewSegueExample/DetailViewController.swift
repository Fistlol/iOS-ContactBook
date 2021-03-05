//
//  DetailViewController.swift
//  TableViewSegueExample
//
//  Created by Абзал Арстанов on 2/14/21.
//

import UIKit

class DetailViewController: UIViewController {
    var contact: Contact? = nil
    var name_surname: String?
    var gpa: String?
    var image: UIImage?
    @IBOutlet weak var nameSurnameLabel: UILabel!
    
    @IBOutlet weak var phoneLabel: UILabel!
    
    @IBOutlet weak var imageLabel: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        nameSurnameLabel.text = contact?.name
        phoneLabel.text = contact?.phoneNumber
        imageLabel.image = image
        // Do any additional setup after loading the view.
    }
    
    @IBAction func callPressed(_ sender: UIButton) {
        
    }
    @IBAction func deletePressed(_ sender: UIButton) {
        
    }

}
