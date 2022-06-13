//
//  SettingsViewController.swift
//  mosnet_ios
//
//  Created by max on 30.05.2022.
//

import UIKit

class SettingsViewController: UIViewController, UIGestureRecognizerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
        configureNavBar()
        
    }
    
    private func configureNavBar() {
        navigationController?.navigationBar.prefersLargeTitles = true
        title = Constants.arrayOfMenuNames[5]
        let backButton =  UIBarButtonItem(image: UIImage(systemName: "house.fill"), style: .done, target: navigationController, action: #selector(UINavigationController.popToRootViewController(animated:)))
        backButton.tintColor = UIColor(red: 0.808, green: 0.29, blue: 0.523, alpha: 1)
        navigationItem.leftBarButtonItem = backButton
        navigationController?.interactivePopGestureRecognizer?.delegate = self
    }
}
