//
//  StatsTableViewCell.swift
//  mosnet_ios
//
//  Created by max on 14.06.2022.
//

import UIKit

class StatsTableViewCell: UITableViewCell {
    
    
    static let identifier = "StatsTableViewCell"
    
    lazy var periodLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.text = "30.01.2020 - 28.02.2020"
        return label
    }()
    
    lazy var customView = ReusableSquareFrame(leftUpHead: "Входящий трафик", leftUpSubtitle: "20.05.2020", rightUpHead: "Стоимость", rightUpSubtitle: "1000.00", leftBotHead: "Исходящий трафик", leftBotSubtitle: "20.05.2020", rightBotHead: "Стоимость", rightBotSubtitle: "1000.00")

    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(periodLabel)
        contentView.addSubview(customView)
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        periodLabel.anchor(top: topAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, paddingTop: 0, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        customView.anchor(top: periodLabel.bottomAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 5, paddingLeft: 5, paddingBottom: 5, paddingRight: 5, width: 0, height: 0)
    }

    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
