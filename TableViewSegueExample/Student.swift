//
//  Student.swift
//  TableViewSegueExample
//
//  Created by Абзал Арстанов on 2/14/21.
//

import Foundation
import UIKit
class Student {
    var name_surname: String?
    var gpa: String?
    var image: UIImage?
    init(_ name_surname: String, _ gpa: String, _ image: UIImage) {
        self.name_surname = name_surname
        self.gpa = gpa
        self.image = image
    }
}
