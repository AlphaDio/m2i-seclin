//
//  Extensions.swift
//  Places
//
//  Created by Ludovic Ollagnier on 12/10/2016.
//  Copyright © 2016 Tec-Tec. All rights reserved.
//

import UIKit

extension UIColor {
    static var worldlineBlue: UIColor {
        return UIColor(red: 0.1, green: 0.5, blue: 1.0, alpha: 1)
    }
}

extension UIAlertController {

    static func justAnAlert(message: String, title: String = "Erreur") -> UIAlertController {
        let controller = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        controller.addAction(ok)
        NSLocalizedString("Error", comment: "")
        return controller
    }
}
