//
//  CollectionCell.swift
//  test
//
//  Created by Peoplelink on 28/12/22.
//

import UIKit

class CollectionCell: UICollectionViewCell {
    
   
    @IBOutlet weak var view: UIView!
    @IBOutlet weak var storylbl: UILabel!
    @IBOutlet weak var storyimg: UIImageView!
    override func awakeFromNib() {
        
        storyimg.layer.cornerRadius = storyimg.frame.size.width/2
        view.layer.cornerRadius = view.frame.size.width/2
        
    }
}
