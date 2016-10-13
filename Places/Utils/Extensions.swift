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

extension UIView {

    func sayNo() {

//        UIView.animate(withDuration: 5) { 
//            self.alpha = 0
//            self.backgroundColor = UIColor.red
//        }

       UIView.animateKeyframes(withDuration: 0.3, delay: 0, options: .allowUserInteraction, animations: {

            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 0.1, animations: {
                self.transform = CGAffineTransform(translationX: -5, y: 0)
            })

            UIView.addKeyframe(withRelativeStartTime: 0.3, relativeDuration: 0.2, animations: {
                self.transform = CGAffineTransform(translationX: 5, y: 0)
            })

            UIView.addKeyframe(withRelativeStartTime: 0.7, relativeDuration: 0.2, animations: {
                self.transform = CGAffineTransform(translationX: -5, y: 0)
            })

            UIView.addKeyframe(withRelativeStartTime: 0.9, relativeDuration: 0.1, animations: {
                self.transform = CGAffineTransform(translationX: 0, y: 0)
            })
            }) { (finished) in
        }
    }
}
