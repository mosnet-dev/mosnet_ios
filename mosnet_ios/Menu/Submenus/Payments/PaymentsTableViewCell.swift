//
//  PaymentsTableViewCell.swift
//  mosnet_ios
//
//  Created by max on 13.06.2022.
//

import UIKit

class PaymentsTableViewCell: UITableViewCell {
    
    
    static let identifier = "PaymentsTableViewCell"
    
    lazy var customView = ReusableSquareFrame(leftUpHead: "Дата платежа", leftUpSubtitle: "20.05.2020", rightUpHead: "Дата погашения", rightUpSubtitle: "20.05.2020", leftBotHead: "Сумма платежа", leftBotSubtitle: "1000.00", rightBotHead: "Осталось погасить", rightBotSubtitle: "1000.00")

    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(customView)
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        customView.anchor(top: self.topAnchor, left: self.leftAnchor, bottom: self.bottomAnchor, right: self.rightAnchor, paddingTop: 5, paddingLeft: 5, paddingBottom: 5, paddingRight: 5, width: 0, height: 0)
    }

    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
