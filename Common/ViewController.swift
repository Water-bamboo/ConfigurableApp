//
//  ViewController.swift
//  Common
//
//  Created by 林水竹 on 2/3/2019.
//  Copyright © 2019 shuizhulin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.


        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Debug", style: .plain, target: self, action: #selector(gotoDebug));
    }

    @objc func gotoDebug() {
        let debugVC = DebugViewController()
        self.navigationController?.pushViewController(debugVC, animated: true)
    }

}

