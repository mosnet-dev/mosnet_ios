//
//  MenuViewController.swift
//  mosnet_ios
//
//  Created by max on 27.05.2022.
//

import UIKit

class MenuViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    var collectionView: UICollectionView!

    let layout: UICollectionViewFlowLayout = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 2
        layout.minimumInteritemSpacing = 2
        return layout
    }()

    
    private let appLogo: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "IMAGELogo")
        
        return imageView
    }()
    
    private let bottomView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 8
        view.layer.borderWidth = 2
        view.layer.borderColor = UIColor.lightGray.cgColor
        view.backgroundColor = .white
        return view
    }()
    
    private let bottomTextLabel: UILabel = {
        let label = UILabel()
        label.text = "Остались вопросы? Звоните!"
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 15, weight: .heavy)
        label.textColor = .black
        return label
    }()
    
    private let callButton: UIButton = {
        let button = UIButton()
        button.layer.cornerRadius = 8
        button.backgroundColor = UIColor(red: 0.15, green: 0.738, blue: 0.138, alpha: 1)
        button.layer.borderColor = UIColor.white.cgColor
        button.setTitle("Позвонить", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        button.layer.borderWidth = 2
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupCollectionView()
        setupNavBar()
        setupLayout()
    }
    
    
    private func setupCollectionView() {
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.frame = view.bounds
        collectionView.register(MenuOptionCollectionViewCell.self,
                                forCellWithReuseIdentifier: MenuOptionCollectionViewCell.identifier)
        layout.itemSize.width = (collectionView.frame.size.width / 2) - 1
        layout.itemSize.height = (collectionView.frame.size.width / 3) - 1
    }
    
    private func setupNavBar() {
        navigationController?.navigationBar.addSubview(appLogo)
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        appLogo.removeFromSuperview()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.addSubview(appLogo)
    }
    
    
    
    
        
    
    private func setupLayout() {
        view.addSubview(collectionView)
        collectionView.addSubview(bottomView)
        bottomView.addSubview(bottomTextLabel)
        bottomView.addSubview(callButton)
        callButton.addTarget(self, action: #selector(callButtonPressed), for: .touchUpInside)
    }
    
    @objc private func callButtonPressed() {
        let alert = UIAlertController(title: nil, message: "Позвонить?", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Вызов", style: .default, handler: nil)
        let cancelAction = UIAlertAction(title: "Отмена", style: .destructive, handler: nil)
        alert.addAction(okAction)
        alert.addAction(cancelAction)
        present(alert, animated: true, completion: nil)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        appLogo.frame = CGRect(x: (view.frame.size.width / 2) - 50,
                               y: 20,
                               width: 100,
                               height: 50)
        
        bottomView.frame = CGRect(x: (collectionView.frame.size.width / 2) - 140,
                                  y: collectionView.frame.size.height * 0.6,
                                  width: 280,
                                  height: 120)
        
        bottomTextLabel.frame = CGRect(x: 20,
                                       y: 2,
                                       width: bottomView.width - 20,
                                       height: 60)
        
        callButton.frame = CGRect(x: 43,
                                  y: bottomTextLabel.bottom + 1,
                                  width: 200,
                                  height: 35)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MenuOptionCollectionViewCell.identifier, for: indexPath) as! MenuOptionCollectionViewCell
        switch indexPath.row {
        case 0:
            cell.menuItemLabel.text = Constants.arrayOfMenuNames[0]
            cell.optionView.backgroundColor = .orange
            cell.menuItemImage.image = Constants.arrayOfMenuImages[0]
        case 1:
            cell.menuItemLabel.text = Constants.arrayOfMenuNames[1]
            cell.optionView.backgroundColor = .systemRed
            cell.menuItemImage.image = Constants.arrayOfMenuImages[1]
        case 2:
            cell.menuItemLabel.text = Constants.arrayOfMenuNames[2]
            cell.optionView.backgroundColor = UIColor(red: 0.827, green: 0.863, blue: 0.4, alpha: 1)
            cell.menuItemImage.image = Constants.arrayOfMenuImages[2]
        case 3:
            cell.menuItemLabel.text = Constants.arrayOfMenuNames[3]
            cell.optionView.backgroundColor = .systemBlue
            cell.menuItemImage.image = Constants.arrayOfMenuImages[3]
        case 4:
            cell.menuItemLabel.text = Constants.arrayOfMenuNames[4]
            cell.optionView.backgroundColor = UIColor(red: 0.424, green: 0.745, blue: 0.231, alpha: 1)
            cell.menuItemImage.image = Constants.arrayOfMenuImages[4]
        case 5:
            cell.menuItemLabel.text = Constants.arrayOfMenuNames[5]
            cell.optionView.backgroundColor = UIColor(red: 0.808, green: 0.29, blue: 0.523, alpha: 1)
            cell.menuItemImage.image = Constants.arrayOfMenuImages[5]
        default:
            break
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        switch indexPath.item {
        case 0:
            let vc = DataViewController()
            navigationController?.pushViewController(vc, animated: true)
        case 1:
            let vc = AgreementAndServicesViewController()
            navigationController?.pushViewController(vc, animated: true)
        case 2:
            let vc = AccountConditionViewController()
            navigationController?.pushViewController(vc, animated: true)
        case 3:
            let vc = StatsViewController()
            navigationController?.pushViewController(vc, animated: true)
        case 4:
            let vc = PaymentsViewController()
            navigationController?.pushViewController(vc, animated: true)
        case 5:
            let vc = SettingsViewController()
            navigationController?.pushViewController(vc, animated: true)
        default:
            print ("Wrong")
            
        }
    }
}
