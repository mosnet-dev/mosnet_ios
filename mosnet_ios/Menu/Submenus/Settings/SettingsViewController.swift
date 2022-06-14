//
//  SettingsViewController.swift
//  mosnet_ios
//
//  Created by max on 30.05.2022.
//

import UIKit

class SettingsViewController: UIViewController, UIGestureRecognizerDelegate {
    
    lazy var oldPasswordField = ReusableTFAndLabel(label: "Ваш пароль")
    
    lazy var newPasswordField = ReusableTFAndLabel(label: "Новый пароль")
    
    lazy var confirmPasswordField = ReusableTFAndLabel(label: "Повтор нового пароля")
    
    lazy var mainHeader: UILabel = {
        let label = UILabel()
        label.text = "Смена пароля"
        label.font = UIFont.boldSystemFont(ofSize: 25)
        return label
    }()
    
    lazy var confirmButton: UIButton = {
        
        let button = UIButton()
        button.setTitle("Сохранить", for: .normal)
        button.backgroundColor = .link
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 15
        button.layer.masksToBounds = true
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold)
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
        configureNavBar()
        configureSubviews()
        initializeHideKeyboard()
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        mainHeader.anchor(top: navigationController?.navigationBar.bottomAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 10, paddingLeft: 15, paddingBottom: 0, paddingRight: 0, width: view.width, height: 30)
        
        oldPasswordField.anchor(top: mainHeader.bottomAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 10, paddingLeft: 15, paddingBottom: 0, paddingRight: 0, width: view.width - 30, height: 65)
        
        newPasswordField.anchor(top: oldPasswordField.bottomAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 25, paddingLeft: 15, paddingBottom: 0, paddingRight: 0, width: view.width - 30, height: 65)
        
        confirmPasswordField.anchor(top: newPasswordField.bottomAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 10, paddingLeft: 15, paddingBottom: 0, paddingRight: 0, width: view.width - 30, height: 65)
        
        confirmButton.anchor(top: nil, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 0, paddingLeft: 70, paddingBottom: 100, paddingRight: 70, width: 0, height: 50)
    }
    
    private func configureSubviews() {
        let subviews = [mainHeader, oldPasswordField, newPasswordField, confirmPasswordField, confirmButton]
        subviews.forEach { subview in
            view.addSubview(subview)
        }
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

extension SettingsViewController {
    func initializeHideKeyboard(){
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self,
                                                                 action: #selector(dismissMyKeyboard))
        view.addGestureRecognizer(tap)
    }
    @objc func dismissMyKeyboard(){
        view.endEditing(true)
    }
}
