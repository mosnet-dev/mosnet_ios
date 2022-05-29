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
        view.backgroundColor = .link
        return view
    }()
    
    private let bottomTextLabel: UILabel = {
        let label = UILabel()
        label.text = "Остались вопросы? Звоните!"
        label.font = .systemFont(ofSize: 15, weight: .heavy)
        label.textColor = .white
        return label
    }()
    
    private let callButton: UIButton = {
        let button = UIButton()
        button.layer.cornerRadius = 8
        button.backgroundColor = .green
        button.layer.borderColor = UIColor.white.cgColor
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
        collectionView.backgroundColor = .yellow
        collectionView.register(MenuOptionCollectionViewCell.self,
                                forCellWithReuseIdentifier: MenuOptionCollectionViewCell.identifier)
        layout.itemSize.width = (collectionView.frame.size.width / 2) - 1
        layout.itemSize.height = (collectionView.frame.size.width / 3) - 1
       
    }
    
    private func setupNavBar() {
        navigationController?.navigationBar.addSubview(appLogo)
        navigationController?.navigationBar.prefersLargeTitles = true
    }
        
    
    private func setupLayout() {
        view.addSubview(collectionView)
        collectionView.addSubview(bottomView)
        bottomView.addSubview(bottomTextLabel)
        bottomView.addSubview(callButton)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        appLogo.frame = CGRect(x: (view.frame.size.width / 2) - 50,
                               y: 20,
                               width: 100,
                               height: 50)
        
        bottomView.frame = CGRect(x: (collectionView.frame.size.width / 2) - 120,
                                  y: collectionView.frame.size.height * 0.6,
                                  width: 240,
                                  height: 100)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MenuOptionCollectionViewCell.identifier, for: indexPath) as! MenuOptionCollectionViewCell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        switch indexPath.item {
        case 0:
            let vc = UINavigationController(rootViewController: DataViewController())
            vc.modalPresentationStyle = .fullScreen
            present(vc, animated: true, completion: nil)
        case 1:
            print (indexPath.item)
        case 2:
            print (indexPath.item)
        case 3:
            print (indexPath.item)
        case 4:
            print (indexPath.item)
        case 5:
            print (indexPath.item)
        default:
            print ("Wrong")
            
        }
    }
    
}
