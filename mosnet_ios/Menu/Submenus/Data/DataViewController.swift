//
//  DataViewController.swift
//  mosnet_ios
//
//  Created by max on 29.05.2022.
//

import UIKit

class DataViewController: UIViewController, UIGestureRecognizerDelegate {
    
    
    private let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.backgroundColor = .systemBackground
        return scrollView
    }()
    
    private let loginHeader: UILabel = {
        let label = UILabel()
        label.text = "Имя(Логин):"
        return label
    }()
    
    private let nameHeader: UILabel = {
        let label = UILabel()
        label.text = "Ф.И.О.:"
        return label
    }()
    
    private let passportHeader: UILabel = {
        let label = UILabel()
        label.text = "Номер паспорта:"
        return label
    }()
    
    private let issuedByHeader: UILabel = {
        let label = UILabel()
        label.text = "Кем выдан:"
        return label
    }()
    
    private let dateOfIssueHeader: UILabel = {
        let label = UILabel()
        label.text = "Дата выдачи:"
        return label
    }()
    
    private let addressHeader: UILabel = {
        let label = UILabel()
        label.text = "Адрес:"
        return label
    }()
    
    private let statusHeader: UILabel = {
        let label = UILabel()
        label.text = "Статус:"
        return label
    }()
    
    private let phoneForSMSHeader: UILabel = {
        let label = UILabel()
        label.text = "Мобильный телефон для SMS:"
        return label
    }()
    
    private let phoneHeader: UILabel = {
        let label = UILabel()
        label.text = "Телефон:"
        return label
    }()
    
    private let emailHeader: UILabel = {
        let label = UILabel()
        label.text = "E-mail:"
        return label
    }()
    
    private let loginTextView: UITextField = {
        let text = UITextField()
        text.text = "Какие-то данные"
        text.autocorrectionType = .no
        text.returnKeyType = .continue
        text.layer.backgroundColor = UIColor(red: 0.937, green: 0.937, blue: 0.937, alpha: 1).cgColor
        text.layer.cornerRadius = 15
        text.layer.borderWidth = 2
        text.layer.borderColor = UIColor.lightGray.cgColor
        text.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 0))
        text.leftViewMode = .always
        return text
    }()
    
    private let nameTextView: UITextField = {
        let text = UITextField()
        text.text = "Какие-то данные"
        text.autocorrectionType = .no
        text.returnKeyType = .continue
        text.layer.backgroundColor = UIColor(red: 0.937, green: 0.937, blue: 0.937, alpha: 1).cgColor
        text.layer.cornerRadius = 15
        text.layer.borderWidth = 2
        text.layer.borderColor = UIColor.lightGray.cgColor
        text.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 0))
        text.leftViewMode = .always
        return text
    }()
    
    private let passportTextView: UITextField = {
        let text = UITextField()
        text.text = "Какие-то данные"
        text.autocorrectionType = .no
        text.returnKeyType = .continue
        text.layer.backgroundColor = UIColor(red: 0.937, green: 0.937, blue: 0.937, alpha: 1).cgColor
        text.layer.cornerRadius = 15
        text.layer.borderWidth = 2
        text.layer.borderColor = UIColor.lightGray.cgColor
        text.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 0))
        text.leftViewMode = .always
        return text
    }()
    
    private let issuedByTextView: UITextField = {
        let text = UITextField()
        text.text = "Какие-то данные"
        text.autocorrectionType = .no
        text.returnKeyType = .continue
        text.layer.backgroundColor = UIColor(red: 0.937, green: 0.937, blue: 0.937, alpha: 1).cgColor
        text.layer.cornerRadius = 15
        text.layer.borderWidth = 2
        text.layer.borderColor = UIColor.lightGray.cgColor
        text.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 0))
        text.leftViewMode = .always
        return text
    }()
    
    private let dateOfIssueTextView: UITextField = {
        let text = UITextField()
        text.text = "Какие-то данные"
        text.autocorrectionType = .no
        text.returnKeyType = .continue
        text.layer.backgroundColor = UIColor(red: 0.937, green: 0.937, blue: 0.937, alpha: 1).cgColor
        text.layer.cornerRadius = 15
        text.layer.borderWidth = 2
        text.layer.borderColor = UIColor.lightGray.cgColor
        text.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 0))
        text.leftViewMode = .always
        return text
    }()
    
    private let addressTextView: UITextField = {
        let text = UITextField()
        text.text = "Какие-то данные"
        text.autocorrectionType = .no
        text.returnKeyType = .continue
        text.layer.backgroundColor = UIColor(red: 0.937, green: 0.937, blue: 0.937, alpha: 1).cgColor
        text.layer.cornerRadius = 15
        text.layer.borderWidth = 2
        text.layer.borderColor = UIColor.lightGray.cgColor
        text.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 0))
        text.leftViewMode = .always
        return text
    }()
    
    private let statusTextView: UITextField = {
        let text = UITextField()
        text.text = "Какие-то данные"
        text.autocorrectionType = .no
        text.returnKeyType = .continue
        text.layer.backgroundColor = UIColor(red: 0.937, green: 0.937, blue: 0.937, alpha: 1).cgColor
        text.layer.cornerRadius = 15
        text.layer.borderWidth = 2
        text.layer.borderColor = UIColor.lightGray.cgColor
        text.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 0))
        text.leftViewMode = .always
        return text
    }()
    
    private let phoneForSMSTextView: UITextField = {
        let text = UITextField()
        text.text = "Какие-то данные"
        text.autocorrectionType = .no
        text.returnKeyType = .continue
        text.layer.backgroundColor = UIColor(red: 0.937, green: 0.937, blue: 0.937, alpha: 1).cgColor
        text.layer.cornerRadius = 15
        text.layer.borderWidth = 2
        text.layer.borderColor = UIColor.lightGray.cgColor
        text.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 0))
        text.leftViewMode = .always
        return text
    }()
    
    private let phoneTextView: UITextField = {
        let text = UITextField()
        text.text = "Какие-то данные"
        text.autocorrectionType = .no
        text.returnKeyType = .continue
        text.layer.backgroundColor = UIColor(red: 0.937, green: 0.937, blue: 0.937, alpha: 1).cgColor
        text.layer.cornerRadius = 15
        text.layer.borderWidth = 2
        text.layer.borderColor = UIColor.lightGray.cgColor
        text.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 0))
        text.leftViewMode = .always
        return text
    }()
    
    private let emailTextView: UITextField = {
        let text = UITextField()
        text.text = "Какие-то данные"
        text.autocorrectionType = .no
        text.returnKeyType = .continue
        text.layer.backgroundColor = UIColor(red: 0.937, green: 0.937, blue: 0.937, alpha: 1).cgColor
        text.layer.cornerRadius = 15
        text.layer.borderWidth = 2
        text.layer.borderColor = UIColor.lightGray.cgColor
        text.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 0))
        text.leftViewMode = .always
        return text
    }()
    
    private let saveButton: UIButton = {
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
        
        view.addSubview(scrollView)
        configureNavBar()
        addSubviews()
        configureSaveButton()
        initializeHideKeyboard()
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        let width = view.frame.size.width - 20
        let customHeightForLabel: CGFloat = 30
        let customHeightForTextView: CGFloat = 50
        let customXPadding: CGFloat = 10
        
        scrollView.frame = CGRect(x: 0,
                                  y: 0,
                                  width: view.frame.size.width,
                                  height: view.frame.size.height)
        
        loginHeader.frame = CGRect(x: customXPadding,
                                   y: 15,
                                   width: width,
                                   height: customHeightForLabel)
        loginTextView.frame = CGRect(x: customXPadding,
                                     y: loginHeader.bottom + 2,
                                     width: width,
                                     height: customHeightForTextView)
        
        nameHeader.frame = CGRect(x: customXPadding, y: loginTextView.bottom + 10, width: width, height: customHeightForLabel)
        
        nameTextView.frame = CGRect(x: customXPadding, y: nameHeader.bottom + 2, width: width, height: customHeightForTextView)
        
        passportHeader.frame = CGRect(x: customXPadding, y: nameTextView.bottom + 10, width: width, height: customHeightForLabel)
        
        passportTextView.frame = CGRect(x: customXPadding, y: passportHeader.bottom + 2, width: width, height: customHeightForTextView)
        
        issuedByHeader.frame = CGRect(x: customXPadding, y: passportTextView.bottom + 10, width: width, height: customHeightForLabel)
        
        issuedByTextView.frame = CGRect(x: customXPadding, y: issuedByHeader.bottom + 2, width: width, height: customHeightForTextView)
        
        dateOfIssueHeader.frame = CGRect(x: customXPadding, y: issuedByTextView.bottom + 10, width: width, height: customHeightForLabel)
        
        dateOfIssueTextView.frame = CGRect(x: customXPadding, y: dateOfIssueHeader.bottom + 2, width: width, height: customHeightForTextView)
        
        addressHeader.frame = CGRect(x: customXPadding, y: dateOfIssueTextView.bottom + 10, width: width, height: customHeightForLabel)
        
        addressTextView.frame = CGRect(x: customXPadding, y: addressHeader.bottom + 2, width: width, height: customHeightForTextView)
        
        statusHeader.frame = CGRect(x: customXPadding, y: addressTextView.bottom + 10, width: width, height: customHeightForLabel)
        
        statusTextView.frame = CGRect(x: customXPadding, y: statusHeader.bottom + 2, width: width, height: customHeightForTextView)
        
        phoneForSMSHeader.frame = CGRect(x: customXPadding, y: statusTextView.bottom + 10, width: width, height: customHeightForLabel)
        
        phoneForSMSTextView.frame = CGRect(x: customXPadding, y: phoneForSMSHeader.bottom + 2, width: width, height: customHeightForTextView)
        
        phoneHeader.frame = CGRect(x: customXPadding, y: phoneForSMSTextView.bottom + 10, width: width, height: customHeightForLabel)
        
        phoneTextView.frame = CGRect(x: customXPadding, y: phoneHeader.bottom + 2, width: width, height: customHeightForTextView)
        
        emailHeader.frame = CGRect(x: customXPadding, y: phoneTextView.bottom + 10, width: width, height: customHeightForLabel)
        
        emailTextView.frame = CGRect(x: customXPadding, y: emailHeader.bottom + 2, width: width, height: customHeightForTextView)
        
        saveButton.frame = CGRect(x: (scrollView.frame.size.width - saveButton.frame.size.width) / 4,
                                  y: emailTextView.bottom + 30,
                                  width: 200,
                                  height: 60)
        
        scrollView.contentSize = CGSize(width: view.frame.size.width, height: saveButton.frame.maxY)
    }
    
    private func addSubviews() {
        
        let subviews = [loginHeader, loginTextView, nameHeader, nameTextView, passportHeader, passportTextView, issuedByHeader, issuedByTextView, dateOfIssueHeader, dateOfIssueTextView, addressHeader, addressTextView, statusHeader, statusTextView, phoneForSMSHeader, phoneForSMSTextView, phoneHeader, phoneTextView, emailHeader, emailTextView, saveButton]
        
        subviews.forEach { subview in
            scrollView.addSubview(subview)
        }
    }
    
    private func configureNavBar() {
        navigationController?.navigationBar.prefersLargeTitles = true
        title = Constants.arrayOfMenuNames[0]
        let backButton =  UIBarButtonItem(image: UIImage(systemName: "house.fill"), style: .done, target: navigationController, action: #selector(UINavigationController.popToRootViewController(animated:)))
        backButton.tintColor = .orange
        navigationItem.leftBarButtonItem = backButton
        navigationController?.interactivePopGestureRecognizer?.delegate = self
    }
    
    private func configureSaveButton() {
        saveButton.addTarget(self, action: #selector(saveButtonPressed), for: .touchUpInside)
    }
    
    @objc private func saveButtonPressed() {
        let alert = UIAlertController(title: "Сохранить изменения?", message: nil, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Да", style: .default, handler: nil)
        let cancelAction = UIAlertAction(title: "Отмена", style: .destructive, handler: nil)
        alert.addAction(okAction)
        alert.addAction(cancelAction)
        present(alert, animated: true, completion: nil)
    }
}
