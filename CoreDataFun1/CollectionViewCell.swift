//
//  CollectionViewCell.swift
//  CoreDataDemo1
//
//  Created by Alex Nagy on 15/07/2020.
//  Copyright © 2020 Alex Nagy. All rights reserved.
//

import UIKit
import SparkUI
import Layoutless

class CollectionViewCell: CollectionCell<String>, SelfConfiguringCell {
    
    static var reuseIdentifier: String = "cell"
    
    let titleLabel = UILabel()
        .text(color: .systemBlack)
        .bold()
    
    override func layoutViews() {
        super.layoutViews()
        
        stack(.vertical)(
            titleLabel
            ).insetting(leftBy: 24, rightBy: 24, topBy: 0, bottomBy: 0).fillingParent().layout(in: container)
        
    }
    
    override func configureViews(for item: String?) {
        super.configureViews(for: item)
        guard let item = item else { return }
        
        setCellBackgroundColor(all: UIColor.random.withAlphaComponent(0.1))
        titleLabel.text = item
    }
}
