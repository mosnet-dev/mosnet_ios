//
//  ReusableTextField + Label.swift
//  mosnet_ios
//
//  Created by max on 15.06.2022.
//

import UIKit

class ReusableTFAndLabel: UIView {
    
    lazy var headerLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 15)
        return label
    }()
    
    lazy var textView: UITextField = {
        let text = UITextField()
        text.autocorrectionType = .no
        text.returnKeyType = .continue
        text.layer.cornerRadius = 10
        text.layer.borderWidth = 2
        text.layer.borderColor = UIColor.lightGray.cgColor
        text.backgroundColor = .systemBackground
        text.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 0))
        text.leftViewMode = .always
        
        return text
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
        addSubview(textView)
        
        headerLabel.anchor(top: topAnchor, left: leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: 0, height: 20)
        
        textView.anchor(top: headerLabel.bottomAnchor, left: leftAnchor, bottom: nil, right: nil, paddingTop: 2, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: UIScreen.main.bounds.size.width - 50, height: 40)
    }
    
}
