//
//  AlertForCell.swift
//  CalendarPlanner
//
//  Created by Сергей Горбачёв on 22.08.2020.
//  Copyright © 2020 Сергей Горбачёв. All rights reserved.
//

import UIKit

extension UIViewController {

    func alertForCell(label: UILabel, name: String, placeholder: String) {
    
        let alertController = UIAlertController(title: name, message: nil, preferredStyle: .alert)
        let alertOk = UIAlertAction(title: "ОК", style: .default) { action in

            let tfname = alertController.textFields?.first
            guard tfname?.text != "" else { return }
            label.text = "\((tfname?.text)!)"
           
        }
        
        alertController.addTextField { tf in
            tf.placeholder = placeholder
        }
        
        let alertCancel = UIAlertAction(title: NSLocalizedString("Отмена", comment: "cancel alert"), style: .default) { _ in }
        
        alertController.addAction(alertOk)
        alertController.addAction(alertCancel)
        
        present(alertController, animated: true, completion: nil)
    
    }
}
