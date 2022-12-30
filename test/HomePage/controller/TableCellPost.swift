//
//  TableCellPost.swift
//  test
//
//  Created by Peoplelink on 28/12/22.
//

import UIKit

class TableCellPost: UITableViewCell {

    @IBOutlet weak var likedphoto3: UIImageView!
    @IBOutlet weak var likedphoto2: UIImageView!
    @IBOutlet weak var likedphoto1: UIImageView!
    @IBOutlet weak var viewprofilepostimg: UIView!
    @IBOutlet weak var profilepostimg: UIImageView!
   
    
    @IBOutlet weak var postPhoto: UIImageView!
    @IBOutlet weak var postLikedIcon: UIImageView!
    @IBOutlet weak var bookmarkbutton: UIButton!
    @IBOutlet weak var shareButton: UIButton!
    @IBOutlet weak var commentbutton: UIButton!
    @IBOutlet weak var likedButton: UIButton!
    
    //who Post
    @IBOutlet weak var uniqueName: UILabel!
    @IBOutlet weak var userPlace: UILabel!
    
    //
    
    @IBOutlet weak var likedBy: UILabel!
    
    @IBOutlet weak var firstLiked: UILabel!
    @IBOutlet weak var numberOfComments: UIButton!
    @IBOutlet weak var aboveCommentName: UIButton!
    @IBOutlet weak var numberOfLikes: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        profilepostimg.layer.cornerRadius = profilepostimg.frame.size.width/2
        viewprofilepostimg.layer.cornerRadius = viewprofilepostimg.frame.size.width/2
        viewprofilepostimg.layer.borderWidth = 1.0
        viewprofilepostimg.layer.borderColor = UIColor.red.cgColor
        likedphoto1.layer.cornerRadius = likedphoto1.frame.size.width/2
        likedphoto2.layer.cornerRadius = likedphoto2.frame.size.width/2
        likedphoto3.layer.cornerRadius = likedphoto3.frame.size.width/2
        
        postLikedIcon.isHidden = true
        let tap = UITapGestureRecognizer(target: self, action: #selector(doubletap))
        tap.numberOfTapsRequired = 2
        postPhoto.addGestureRecognizer(tap)
        
        let tap1 = UITapGestureRecognizer(target: self, action: #selector(openProfileByLiked))
        tap1.numberOfTapsRequired = 1
        firstLiked.addGestureRecognizer(tap1)
        
        let tapForLikedBy = UITapGestureRecognizer(target: self, action: #selector(openListOfLikes))
        let tapForOpenProfile = UITapGestureRecognizer(target: self, action: #selector(openListOfLikes))
        tapForLikedBy.numberOfTapsRequired = 1
        tapForOpenProfile.numberOfTapsRequired = 1
        likedBy.addGestureRecognizer(tapForLikedBy)
        numberOfLikes.addGestureRecognizer(tapForOpenProfile)
    }
    var call: Nav?
    
    @objc func openProfileByLiked(){
        call?.navigateProfile()
        print("hiiii")
    }
    
    @objc func openListOfLikes(){
        call?.navigateLikes()
        print("hiiii")
        
    }
    
    @objc func doubletap() {
        likedButton.isSelected = true
        postLikedIcon.isHidden = false
        UIView.animate(withDuration: 0.4, delay: 0.4, options: UIView.AnimationOptions.transitionFlipFromTop, animations: {
            self.postLikedIcon.alpha = 0
        }, completion: { finished in
            self.postLikedIcon.isHidden = true
            self.postLikedIcon.alpha = 1
        })
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        
    }
    
    
    @IBAction func actionOnPost(_ sender: UIButton) {
        if sender.tag == 1 {
            sender.isSelected = !sender.isSelected
        }
        else if sender.tag == 4 {
            sender.isSelected = !sender.isSelected
        }
        else {
            
        }
        
    }
    
}
