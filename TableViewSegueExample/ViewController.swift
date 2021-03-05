//
//  ViewController.swift
//  TableViewSegueExample
//
//  Created by Абзал Арстанов on 2/14/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
//    var students = [Student.init("Ariana Grande", "87777777777", UIImage.init(named: "female")!),
//                    Student.init("John Snow", "87070707070", UIImage.init(named: "male")!)]
    
    var contacts: [Contact] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let fred = Contact(name: "Fred", phoneNumber: "8777777777")
        contacts.append(fred)
        myTableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        
        let contact = contacts[indexPath.row]
    
        cell.textLabel?.text = contact.name
        cell.detailTextLabel?.text = contact.phoneNumber
        
//        cell?.studentName.text = students[indexPath.row].name_surname
//        cell?.studentGpa.text = students[indexPath.row].gpa
//        cell?.studentImageView.image = students[indexPath.row].image
        return cell
        
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myTableView.deselectRow(at: indexPath, animated: true)
    }
    @IBOutlet weak var myTableView: UITableView!

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mySegue" {
            guard let viewController = segue.destination as? DetailViewController else { return }
            guard let indexPath = myTableView.indexPathForSelectedRow else { return }
            let contact = contacts[indexPath.row]
            viewController.contact = contact
        }
        
//        let index = (myTableView.indexPathForSelectedRow?.row)
//        let destination = segue.destination as! DetailViewController
//        destination.name_surname = students[index!].name_surname
//        destination.gpa = students[index!].gpa
//        destination.image = students[index!].image
    }
    
    @IBAction func unwindToContactList(segue: UIStoryboardSegue) {
        guard let viewController = segue.source as? AddViewController else { return }
        guard let name = viewController.nameTextField.text, let phoneNumber = viewController.phoneNumberTextField.text else { return }
        let contact = Contact(name: name, phoneNumber: phoneNumber)
        contacts.append(contact)
        myTableView.reloadData()
        
    }
    
}

