//
//  DataViewController.swift
//  mosnet_ios
//
//  Created by max on 29.05.2022.
//

import UIKit

class DataViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .green
        navigationController?.navigationBar.prefersLargeTitles = true
        title = Constants.arrayOfMenuNames[0]
//        navigationController?.navigationItem.leftBarButtonItem = UIBarButtonItem(systemItem: ., primaryAction: <#T##UIAction?#>, menu: <#T##UIMenu?#>)
    }
}
