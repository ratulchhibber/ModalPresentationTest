//
//  ViewController.swift
//  ModalPresentationTest
//
//  Created by Ratul Chhibber on 20/01/20.
//  Copyright © 2020 Ratul Chhibber. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("ViewController viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("ViewController viewDidAppear")
    }

    @IBAction func present() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let view = storyboard
                        .instantiateViewController(withIdentifier: "ColoredVC") as? ColoredVC else { return }
        view.presentationController?.delegate = self
        view.dismissCallback = modelViewDismissed
    // Uncomment the next line to disable swipe down dismissal of presented VC
    //     if #available(iOS 13.0, *) { view.isModalInPresentation = true }
        present(view, animated: true, completion: nil)
    }
}

extension ViewController {
    
    func modelViewDismissed() {
        print("ColoredVC dismissed via clicking dismiss")
    }
}

extension ViewController: UIAdaptivePresentationControllerDelegate {
    
    func presentationControllerDidDismiss(_ presentationController: UIPresentationController) {
        print("ColoredVC dismissed via swipe down gesture")
    }
}

