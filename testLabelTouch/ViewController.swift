//
//  ViewController.swift
//  testLabelTouch
//
//  Created by Hajime Taniguchi on 2022/02/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var pressableLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pressableLabel.isUserInteractionEnabled = true
        let tap = UITapGestureRecognizer(target: self,
                                         action: #selector(handleTap(_:)))
        pressableLabel.addGestureRecognizer(tap)
    }

    @objc func handleTap(_ sender: UITapGestureRecognizer) {
        print("押されたよ")
    }
}

