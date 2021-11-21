//
//  SettingViewController.swift
//  TheFourth
//
//  Created by Chun-Li Cheng on 2021/11/21.
//

import UIKit

class SettingViewController: UIViewController {
    
    deinit {
        print("SettingViewController deinit <===")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .red
        self.title = "Setting"
        self.navigationController?.navigationBar.backgroundColor = .brown
        self.navigationController?.navigationBar.isTranslucent = false
        
        let myUIView = UIView(frame: CGRect(
          x: 0, y: 0, width: 30, height: 30))
        myUIView.backgroundColor = .purple
        let rightButton = UIBarButtonItem(customView: myUIView)
        self.navigationItem.rightBarButtonItem = rightButton
        
        let screenSize = UIScreen.main.bounds
        let myButton = UIButton(frame: CGRect(
          x: 0, y: 0, width: 120, height: 40))
        myButton.center = CGPoint(x: screenSize.width/2, y: 250)
        myButton.layer.cornerRadius = 20
        myButton.setTitle("按鈕回前頁", for: .normal)
        myButton.backgroundColor = .systemBlue
        myButton.addTarget(self, action: #selector(back), for: .touchUpInside)
        self.view.addSubview(myButton)
    }
    
    @objc func back() {
        self.navigationController?.popViewController(animated: true)
    }
    
}
