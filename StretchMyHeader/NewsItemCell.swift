//
//  NewsItemCell.swift
//  StretchMyHeader
//
//  Created by Viviane Chan on 2016-08-02.
//  Copyright © 2016 LightHouse Labs. All rights reserved.
//

import UIKit

class NewsItemCell: UITableViewCell {
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var summaryLabel: UILabel!
    
    
    var newsItem: NewsItem? {
        
        // property observer
        
        didSet {
            if let item = newsItem {
                categoryLabel.text = item.category.toString()
                categoryLabel.textColor = item.category.toColor()
                summaryLabel.text = item.summary
            } else {
                categoryLabel.text = nil
                summaryLabel.text = nil
            }
        }
    }

}
