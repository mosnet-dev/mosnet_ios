//
//  AccountConditionViewController.swift
//  mosnet_ios
//
//  Created by max on 30.05.2022.
//

import UIKit

class AccountConditionViewController: UIViewController, UIGestureRecognizerDelegate {
    
    lazy var subheader: UILabel = {
        let label = UILabel()
        label.text = "40/001"
        label.textColor = .systemGreen
        label.font = .boldSystemFont(ofSize: 25)
        return label
    }()
    
    lazy var account = ReusableLabelAndTitle(label: "Лицевой счет")
    
    lazy var creationDate = ReusableLabelAndTitle(label: "Дата создания")
    
    lazy var currency = ReusableLabelAndTitle(label: "Повтор нового пароля")
    
    lazy var availableFundsLeft = ReusableLabelAndTitle(label: "Повтор нового пароля")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
        configureNavBar()
        addSubviews()

    }
    
    private func addSubviews() {
        let subviews = [subheader, account, creationDate, currency, availableFundsLeft]
        
        subviews.forEach { subview in
            view.addSubview(subview)
        }
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        subheader.anchor(top: navigationController?.navigationBar.bottomAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 20, paddingLeft: 15, paddingBottom: 0, paddingRight: 0, width: view.width - 30, height: 30)
        
        account.anchor(top: subheader.bottomAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 10, paddingLeft: 15, paddingBottom: 0, paddingRight: 0, width: view.width - 30, height: 65)
        
        creationDate.anchor(top: account.bottomAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 10, paddingLeft: 15, paddingBottom: 0, paddingRight: 0, width: view.width - 30, height: 65)
        
        currency.anchor(top: creationDate.bottomAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 10, paddingLeft: 15, paddingBottom: 0, paddingRight: 0, width: view.width - 30, height: 65)
        
        availableFundsLeft.anchor(top: currency.bottomAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 10, paddingLeft: 15, paddingBottom: 0, paddingRight: 0, width: view.width - 30, height: 65)
    }
    
    private func configureNavBar() {
        navigationController?.navigationBar.prefersLargeTitles = true
        title = Constants.arrayOfMenuNames[2]
        let backButton =  UIBarButtonItem(image: UIImage(systemName: "house.fill"), style: .done, target: navigationController, action: #selector(UINavigationController.popToRootViewController(animated:)))
        backButton.tintColor = UIColor(red: 0.827, green: 0.863, blue: 0.4, alpha: 1)
        navigationItem.leftBarButtonItem = backButton
        navigationController?.interactivePopGestureRecognizer?.delegate = self
    }
}
