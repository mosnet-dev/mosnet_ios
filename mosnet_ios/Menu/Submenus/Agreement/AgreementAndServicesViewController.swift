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
    
    lazy var infoSubheader: UILabel = {
        let label = UILabel()
        label.text = "Информация"
        label.textColor = .black
        label.font = .boldSystemFont(ofSize: 15)
        return label
    }()
    
    lazy var infoFrame = ReusableSquareFrame(leftUpHead: "№ Договора", leftUpSubtitle: "40/001", rightUpHead: "Код договора", rightUpSubtitle: "12763", leftBotHead: "Дата договора", leftBotSubtitle: "20.01.2020", rightBotHead: "Статус", rightBotSubtitle: "Утвержден")
    
    lazy var tariffSubheader: UILabel = {
        let label = UILabel()
        label.text = "Тариф"
        label.textColor = .black
        label.font = .boldSystemFont(ofSize: 15)
        return label
    }()
    
    lazy var tariffFrame = ReusableSquareFrame(leftUpHead: "Сервис", leftUpSubtitle: "40/001/ip", rightUpHead: "Тип", rightUpSubtitle: "Интернет", leftBotHead: "Тариф", leftBotSubtitle: "Студент - 100", rightBotHead: "Начало действия", rightBotSubtitle: "01.01.2020")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
        configureNavBar()
        addSubviews()

    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        subheader.anchor(top: navigationController?.navigationBar.bottomAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 20, paddingLeft: 15, paddingBottom: 0, paddingRight: 0, width: view.width - 30, height: 30)
        
        infoSubheader.anchor(top: subheader.bottomAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 15, paddingLeft: 15, paddingBottom: 0, paddingRight: 0, width: view.width - 30, height: 30)
        
        infoFrame.anchor(top: infoSubheader.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 10, paddingLeft: 15, paddingBottom: 0, paddingRight: 15, width: 0, height: 180)
        
        tariffSubheader.anchor(top: infoFrame.bottomAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 15, paddingLeft: 15, paddingBottom: 0, paddingRight: 0, width: view.width - 30, height: 30)
        
        tariffFrame.anchor(top: tariffSubheader.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 10, paddingLeft: 15, paddingBottom: 0, paddingRight: 15, width: 0, height: 180)
    }
    
    private func addSubviews() {
        let subviews = [subheader, infoSubheader, infoFrame, tariffSubheader, tariffFrame]
        
        subviews.forEach { subview in
            view.addSubview(subview)
        }
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
