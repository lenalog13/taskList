//
//  AllertController.swift
//  taskList
//
//  Created by Елена Логинова on 17.03.2023.
//

import UIKit

extension UIAlertController {
    
    static func createAlertController(withTitle title: String) -> UIAlertController {
        UIAlertController(title: title, message: "What do you want to do?", preferredStyle: .alert)
    }
    
    func action(task: Task?, completion: @escaping(String) -> Void) {
        let saveAction = UIAlertAction(title: "Save", style: .default) { [weak self] _ in
            guard let newValue = self?.textFields?.first?.text else { return }
            guard !newValue.isEmpty else { return }
            completion(newValue)
        }
        
        let calcelAction = UIAlertAction(title: "Cancel", style: .destructive)
        
        addAction(saveAction)
        addAction(calcelAction)
        
        addTextField { textField in
            textField.placeholder = "Task"
            textField.text = task?.name
        }
    }
}
