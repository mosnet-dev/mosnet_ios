//
//  MenuOptionCollectionViewCell.swift
//  mosnet_ios
//
//  Created by max on 27.05.2022.
//

import UIKit

class MenuOptionCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "MenuCell"
    
    let optionView: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        view.layer.cornerRadius = 8
        
        return view
    }()
    
    let menuItemLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .yellow
        return label
    }()
    
    let menuItemImage: UIImageView = {
        let item = UIImageView()
        item.backgroundColor = .cyan
        return item
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
   
        contentView.addSubview(optionView)
        contentView.backgroundColor = .red
        optionView.addSubview(menuItemLabel)
        optionView.addSubview(menuItemImage)
        
//        NSLayoutConstraint.activate([
//            optionView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
//            optionView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
//        ])
        optionView.anchor(top: topAnchor, left: leftAnchor, bottom: nil, right: nil, paddingTop: 8, paddingLeft: 18, paddingBottom: 0, paddingRight: 0, width: 160, height: 110)
        menuItemImage.anchor(top: topAnchor, left: contentView.centerXAnchor, bottom: nil, right: nil, paddingTop: 25, paddingLeft: -28, paddingBottom: 0, paddingRight: 0, width: 60, height: 40)
//        optionView.frame.size.height = 100
//        optionView.frame.size.width = 140
        menuItemLabel.anchor(top: menuItemImage.bottomAnchor, left: contentView.centerXAnchor, bottom: nil, right: nil, paddingTop: 5, paddingLeft: -43, paddingBottom: 0, paddingRight: 0, width: 90, height: 30)
//
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
