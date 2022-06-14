//
//  AgreementAndServicesViewController.swift
//  mosnet_ios
//
//  Created by max on 30.05.2022.
//

import UIKit

class AgreementAndServicesViewController: UIViewController, UIGestureRecognizerDelegate {
    
    lazy var subheader: UILabel = {
        let label = UILabel()
        label.text = "40/001"
        label.textColor = .systemGreen
        label.font = .boldSystemFont(ofSize: 25)
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
        configureNavBar()

    }
    
    private func configureNavBar() {
        navigationController?.navigationBar.prefersLargeTitles = true
        title = Constants.arrayOfMenuNames[1]
        let backButton =  UIBarButtonItem(image: UIImage(systemName: "house.fill"), style: .done, target: navigationController, action: #selector(UINavigationController.popToRootViewController(animated:)))
        backButton.tintColor = .systemRed
        navigationItem.leftBarButtonItem = backButton
        navigationController?.interactivePopGestureRecognizer?.delegate = self
    }
    
}
