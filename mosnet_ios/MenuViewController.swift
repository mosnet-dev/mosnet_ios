//
//  MenuViewController.swift
//  mosnet_ios
//
//  Created by max on 27.05.2022.
//

import UIKit

class MenuViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    var collectionView: UICollectionView?
    
    private let appLogo: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "IMAGELogo")
        
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupLayout()
        
    }
    
    private func setupUI() {
        view.backgroundColor = .red
        navigationController?.navigationBar.addSubview(appLogo)
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    private func setupLayout() {
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 2
        layout.minimumInteritemSpacing = 2
        layout.itemSize = CGSize(width: (view.frame.size.width / 2) - 1,
                                 height: (view.frame.size.width / 3) - 1)
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        guard let collectionView = collectionView else { return }
        collectionView.register(MenuOptionCollectionViewCell.self,
                                forCellWithReuseIdentifier: MenuOptionCollectionViewCell.identifier)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.frame = view.bounds
        collectionView.backgroundColor = .yellow
        view.addSubview(collectionView)
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        appLogo.frame = CGRect(x: (view.frame.size.width / 2) - 50,
                               y: 20,
                               width: 100,
                               height: 50)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MenuOptionCollectionViewCell.identifier, for: indexPath) as! MenuOptionCollectionViewCell
        return cell
    }
    
}
