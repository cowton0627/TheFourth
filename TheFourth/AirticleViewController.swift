//
//  AirticleViewController.swift
//  TheFourth
//
//  Created by Chun-Li Cheng on 2021/11/21.
//

import UIKit

class AirticleViewController: UIViewController {
    
    deinit {
        print("AirticleViewController deinit <===")
    }
    
//    required init?(coder: NSCoder) {
//        super.init(coder: coder)
//        print("===> AirticleViewController init")
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("===> AirticleViewController'view did load.")
        
        self.view.backgroundColor = .orange
        self.title = "Article"
        self.navigationController?.navigationBar.backgroundColor = .cyan
//        self.navigationController?.navigationBar.isTranslucent = false

        let rightButton = UIBarButtonItem(
          barButtonSystemItem: .edit,
          target: self,
          action: #selector(edit))
        self.navigationItem.rightBarButtonItem = rightButton
    }
    
    @objc func edit() {
        print("edit pressed.")
    }

}
