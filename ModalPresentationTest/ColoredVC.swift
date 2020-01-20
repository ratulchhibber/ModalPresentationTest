//
//  ColoredVC.swift
//  ModalPresentationTest
//
//  Created by Ratul Chhibber on 20/01/20.
//  Copyright © 2020 Ratul Chhibber. All rights reserved.
//

import Foundation
import UIKit

class ColoredVC: UIViewController {
    var dismissCallback: (() -> Void)?
    
    @IBAction func dismiss() {
        dismissCallback?()
        dismiss(animated: true, completion: nil)
    }
}
