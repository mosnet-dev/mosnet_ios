//
//  ReusableSquareFrame.swift
//  mosnet_ios
//
//  Created by max on 13.06.2022.
//

import UIKit

class ReusableSquareFrame: UIView {
    
    
    let leftUpperHeaderLabel: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 15)
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }()
    
    let leftUpperSubtitle: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 14)
        label.textAlignment = .center
        return label
    }()
    
    let rightUpperHeaderLabel: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 15)
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }()
    
    let rightUpperSubtitle: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 14)
        label.textAlignment = .center
        return label
    }()
    
    let divider: UIView = {
        let label = UIView()
        label.backgroundColor = UIColor.lightGray
        return label
    }()
    
    let leftBottomHeaderLabel: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 15)
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }()
    
    let leftBottomSubtitle: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 14)
        label.textAlignment = .center
        return label
    }()
    
    let rightBottomHeaderLabel: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 15)
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }()
    
    let rightBottomSubtitle: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 14)
        label.textAlignment = .center
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    convenience init(leftUpHead: String, leftUpSubtitle: String, rightUpHead: String, rightUpSubtitle: String, leftBotHead: String, leftBotSubtitle: String, rightBotHead: String, rightBotSubtitle: String) {
        self.init(frame: .zero)
        leftUpperHeaderLabel.text = leftUpHead
        leftUpperSubtitle.text = leftUpSubtitle
        rightUpperHeaderLabel.text = rightUpHead
        rightUpperSubtitle.text = rightUpSubtitle
        leftBottomHeaderLabel.text = leftBotHead
        leftBottomSubtitle.text = leftBotSubtitle
        rightBottomHeaderLabel.text = rightBotHead
        rightBottomSubtitle.text = rightBotSubtitle
    }
    
    private func configure() {
        
        layer.cornerRadius = 10
        layer.borderWidth = 5
        layer.borderColor = UIColor.lightGray.cgColor
        
        let stackOne = UIStackView(arrangedSubviews: [leftUpperHeaderLabel, leftUpperSubtitle])
        stackOne.distribution = .fillEqually
        stackOne.axis = .vertical
        
        let stackTwo = UIStackView(arrangedSubviews: [rightUpperHeaderLabel, rightUpperSubtitle])
        stackTwo.distribution = .fillEqually
        stackTwo.axis = .vertical
        
        let stackThree = UIStackView(arrangedSubviews: [leftBottomHeaderLabel, leftBottomSubtitle])
        stackThree.distribution = .fillEqually
        stackThree.axis = .vertical
        
        let stackFour = UIStackView(arrangedSubviews: [rightBottomHeaderLabel, rightBottomSubtitle])
        stackFour.distribution = .fillEqually
        stackFour.axis = .vertical
        
        let stacks = [stackOne, stackTwo, stackThree, stackFour]
        stacks.forEach { stack in
            addSubview(stack)
        }
        addSubview(divider)
        
        stackOne.anchor(top: topAnchor, left: leftAnchor, bottom: nil, right: nil, paddingTop: 5, paddingLeft: 15, paddingBottom: 0, paddingRight: 0, width: 0, height: 74)
        
        stackTwo.anchor(top: topAnchor, left: nil, bottom: nil, right: rightAnchor, paddingTop: 5, paddingLeft: 0, paddingBottom: 0, paddingRight: 15, width: 0, height: 74)
        
        divider.anchor(top: topAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, paddingTop: 80, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 1)
        
        stackThree.anchor(top: divider.bottomAnchor, left: leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 15, paddingBottom: 0, paddingRight: 0, width: 0, height: 74)
        
        stackFour.anchor(top: divider.bottomAnchor, left: nil, bottom: nil, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 15, width: 0, height: 74)
    }
}
