//
//  TableCell.swift
//  test
//
//  Created by Peoplelink on 28/12/22.
//

import UIKit

class TableCell: UITableViewCell {
    
    @IBOutlet weak var collectionview: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.collectionview.delegate = self
        self.collectionview.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension TableCell: UICollectionViewDelegate,UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionCell", for: indexPath) as? CollectionCell else { return UICollectionViewCell() }
        
        
        if indexPath.item == 0 {
            cell.storylbl.text = "Your Story"
            cell.storyimg.image = UIImage(named: "photo")
            cell.view.layer.borderColor = UIColor.gray.cgColor
            cell.view.layer.borderWidth = 1.0
            
        }
        else {
            cell.storylbl.text = data.allData[indexPath.row-1].userUniqueId
            cell.storyimg.image = UIImage(named: data.allData[indexPath.row-1].avatarPhoto)
            cell.view.layer.borderColor = UIColor.red.cgColor
            cell.view.layer.borderWidth = 1.0
        }
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 89, height: 89)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
}
