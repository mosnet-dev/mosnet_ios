//
//  ReusableLabel + Title.swift
//  mosnet_ios
//
//  Created by max on 15.06.2022.
//

import UIKit

class ReusableLabelAndTitle: UIView {
    
    lazy var headerLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 15)
        return label
    }()
    
    lazy var detailsLabel: UILabel = {
        let label = UILabel()
        label.layer.cornerRadius = 10
        label.layer.borderWidth = 2
        label.layer.borderColor = UIColor.lightGray.cgColor
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    convenience init(label: String) {
        self.init(frame: .zero)
        headerLabel.text = label
    }
    
    private func configure() {
        addSubview(headerLabel)
        addSubview(detailsLabel)
        
        headerLabel.anchor(top: topAnchor, left: leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: 0, height: 20)
        
        detailsLabel.anchor(top: headerLabel.bottomAnchor, left: leftAnchor, bottom: nil, right: nil, paddingTop: 2, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: UIScreen.main.bounds.size.width - 50, height: 40)
    }
    
}
